unit NewMember;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Data.DB, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmNewMember = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    imgNewMember: TImage;
    btnClear: TButton;
    btnImageLoad: TButton;
    dlgNewMember: TOpenDialog;
    btnNewMember: TImageList;
    btnNew: TButton;
    cbMa: TCheckBox;
    cbDept: TDBLookupComboBox;
    edtNumber: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure btnClearClick(Sender: TObject);
    procedure btnImageLoadClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewMember: TfrmNewMember;

implementation

{$R *.dfm}

uses CommonFunctions, DataAccessModule, MainForm;

procedure TfrmNewMember.btnClearClick(Sender: TObject);
var
  Field: TField;
begin
  imgNewMember.Picture.Assign(nil);
end;

procedure TfrmNewMember.btnImageLoadClick(Sender: TObject);
var
  field:Tfield;
begin
  if dlgNewMember.execute then
  begin
    LoadImagefromFile(imgNewMember, dlgNewMember.FileName);

    field := dmdataAccess.qryInformationDept.FieldByName('USERS_IMG');
    SaveImageToBlobField(imgNewMember, Field as TBlobField);
  end;

end;

procedure TfrmNewMember.btnNewClick(Sender: TObject);      	//회원가입
begin

  dmDataAccess.qryInformationDept.Post;
  dmDataAccess.qryInformationDept.Refresh;
exit;

  dmdataaccess.qryInformationDept.append;

end;
procedure TfrmNewMember.FormCreate(Sender: TObject);
begin
  dmDataAccess.qryInformationDept.Append;
end;

end.
