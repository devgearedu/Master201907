unit FindBookForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFindBook = class(TForm)
    dsFindBook: TDataSource;
    grdList: TDBGrid;
    pnlBottom: TPanel;
    btnSelect: TButton;
    btnClose: TButton;
    pnlHeader: TPanel;
    Label1: TLabel;
    edtSearch: TEdit;
    chkSearchTitle: TCheckBox;
    chkSearchAuthor: TCheckBox;
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdListKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FSelectedSeq: Integer;
    property SelectedSeq: Integer read FSelectedSeq;
  end;

var
  frmFindBook: TfrmFindBook;

implementation

{$R *.dfm}

uses DataAccessModule;

procedure TfrmFindBook.btnSelectClick(Sender: TObject);
begin
  FSelectedSeq := dmDataAccess.qryFindBook.FieldByName('BOOK_SEQ').AsInteger;
end;

procedure TfrmFindBook.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Filter: string;
begin
  Filter := '';
  if edtSearch.Text <> '' then
  begin
    if chkSearchTitle.Checked then
      Filter := Format('BOOK_TITLE like ''%%%s%%''', [edtSearch.Text]);
    if chkSearchAuthor.Checked then
    begin
      if Filter <> '' then
        Filter := Filter + ' or ';
      Filter := Filter + Format('BOOK_AUTHOR like ''%%%s%%''',
        [edtSearch.Text]);
    end;
  end;

  dmDataAccess.qryFindBook.Filter := Filter;
  dmDataAccess.qryFindBook.Filtered := (Filter <> '');

  if Key in [VK_DOWN, VK_RETURN] then
    grdList.SetFocus;
end;

procedure TfrmFindBook.grdListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_RETURN] then
    btnSelect.Click;

end;

end.
