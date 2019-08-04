unit BookForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TfrmBook = class(TForm)
    pnlHeader: TPanel;
    pnlContent: TPanel;
    pnlMain: TPanel;
    pnlInput: TPanel;
    pnlMainHeader: TPanel;
    grdBook: TDBGrid;
    lblCaption: TLabel;
    btnAdd: TButton;
    btnClose: TButton;
    lblSearch: TLabel;
    edtSearch: TEdit;
    chkSearchTitle: TCheckBox;
    chkSearchAuthor: TCheckBox;
    edtTitle: TDBEdit;
    Splitter1: TSplitter;
    Label2: TLabel;
    Label3: TLabel;
    edtISBN: TDBEdit;
    edtAuthor: TDBEdit;
    Label4: TLabel;
    editPrice: TDBEdit;
    Label5: TLabel;
    edtLink: TDBEdit;
    GroupBox1: TGroupBox;
    btnImageClear: TButton;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    btnImageLoad: TButton;
    imgBook: TImage;
    dsBook: TDataSource;
    dlgLoadImage: TOpenDialog;
    lblLink: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnImageLoadClick(Sender: TObject);
    procedure btnImageClearClick(Sender: TObject);
    procedure dsBookDataChange(Sender: TObject; Field: TField);
    procedure btnAddClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dsBookStateChange(Sender: TObject);
    procedure edtISBNExit(Sender: TObject);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLinkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBook: TfrmBook;

implementation

{$R *.dfm}

uses DataAccessModule, CommonFunctions, Winapi.ShellAPI;

procedure TfrmBook.btnAddClick(Sender: TObject);
begin
  dmDataAccess.qryBook.Append;
  edtTitle.SetFocus;
end;

procedure TfrmBook.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBook.btnImageClearClick(Sender: TObject);
var
  Field: TField;
begin
  imgBook.Picture.Assign(nil);

  Field := dmDataAccess.qryBook.FieldByName('BOOK_IMAGE');
  if dmDataAccess.qryBook.State <> dsEdit then
    dmDataAccess.qryBook.Edit;

  Field.Assign(nil);
end;

procedure TfrmBook.btnImageLoadClick(Sender: TObject);
var
  Field: TField;
begin
  if dlgLoadImage.Execute then
  begin
    LoadImageFromFile(imgBook, dlgLoadImage.FileName);

    Field := dmDataAccess.qryBook.FieldByName('BOOK_IMAGE');
    SaveImageToBlobField(imgBook, Field as TBlobField);
  end;

end;

procedure TfrmBook.Button3Click(Sender: TObject);
var
  RentYN, Title, Msg: string;
begin
  RentYN := dmDataAccess.qryBook.FieldByName('BOOK_RENT_YN').AsString;
  if RentYN = 'Y' then
  begin
    ShowMessage('대여중인 도서는 삭제할 수 없습니다. 반납 후 삭제해주세요.');
    exit;
  end;

  Title := dmDataAccess.qryBook.FieldByName('BOOK_TITLE').AsString;
  Msg := Format('[%s] 도서를 삭제하시겠습니까?', [Title]);
  if MessageDlg(Msg, mtInformation, [mbYes, mbNo], 0) = mrNo then
    exit;

  dmDataAccess.qryBook.Delete;

end;

procedure TfrmBook.Button4Click(Sender: TObject);
begin
  dmDataAccess.qryBook.Cancel;
end;

procedure TfrmBook.Button5Click(Sender: TObject);
begin
  if edtTitle.Text = '' then
  begin
    ShowMessage('제목을 입력하세요');
    edtTitle.SetFocus;
    exit;
  end;

  if edtAuthor.Text = '' then
  begin
    ShowMessage('저자를 입력하세요');
    edtAuthor.SetFocus;
    exit;
  end;

  dmDataAccess.qryBook.Post;
  dmDataAccess.qryBook.Refresh;
end;

procedure TfrmBook.dsBookDataChange(Sender: TObject; Field: TField);
var
  LField: TField;
begin
  if dmDataAccess.qryBook.State = dsEdit then
    exit;

  LField := dmDataAccess.qryBook.FieldByName('BOOK_IMAGE');
  if LField is TBlobField then
    LoadImageFromBlobField(imgBook, LField as TBlobField);
end;

procedure TfrmBook.dsBookStateChange(Sender: TObject);
var
  State: TDataSetState;
begin
  State := dmDataAccess.qryBook.State;

  btnAdd.Enabled := (State = dsBrowse);
  Button5.Enabled := (State <> dsBrowse);
  Button4.Enabled := (State <> dsBrowse);
  Button3.Enabled := (State = dsBrowse) and
    (dmDataAccess.qryBook.RecordCount > 0);

end;

procedure TfrmBook.edtISBNExit(Sender: TObject);
var
  Seq, ISBN: String;
begin
  Seq := dmDataAccess.qryBook.FieldByName('BOOK_SEQ').AsString;
  ISBN := dmDataAccess.qryBook.FieldByName('BOOK_ISBN').AsString;

  if (dmDataAccess.qryBook.State = dsBrowse) then
    exit;

  if dmDataAccess.DuplicatedISBN(Seq, ISBN) then
  begin
    ShowMessage('이미 등록된 도서입니다.(ISBN이 중복됩니다.)');
    edtISBN.Text := '';
    edtISBN.SetFocus;
    exit;
  end;

end;

procedure TfrmBook.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Filter: string;
begin
  Filter := '';
  if edtSearch.Text <> '' then
  begin
    if chkSearchTitle.Checked then
      Filter := Format('BOOK_TITLE like ''%%%s%%''', [edtSearch.Text]);
    // BOOK_TITLE like '%aaa%'
    if chkSearchAuthor.Checked then
    begin
      if Filter <> '' then
        Filter := Filter + ' or ';
      Filter := Filter + Format('BOOK_AUTHOR like ''%%%s%%''',
        [edtSearch.Text]);
    end;

  end;

  dmDataAccess.qryBook.Filter := Filter;
  dmDataAccess.qryBook.Filtered := (Filter <> '');

end;

procedure TfrmBook.lblLinkClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar(edtLink.Text), nil, nil, SW_SHOW);
end;

end.
