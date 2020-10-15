unit DiagnosisForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, System.ImageList, Vcl.ImgList;

type
  TfrmDiagnosis = class(TForm)
    pnlClient: TPanel;
    pnlTop: TPanel;
    Label1: TLabel;
    pnlHeader: TPanel;
    Label2: TLabel;
    edtSearch: TEdit;
    btnSearch: TButton;
    pnlGrid: TPanel;
    pnltext: TPanel;
    Splitter1: TSplitter;
    grdList: TDBGrid;
    grdDiagnosis: TDBGrid;
    btnChart: TButton;
    btnClose: TButton;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiagnosis: TfrmDiagnosis;

implementation

{$R *.dfm}

uses MainClientForm, PatientManagerDataModule;

procedure TfrmDiagnosis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSub := nil;
end;

end.
