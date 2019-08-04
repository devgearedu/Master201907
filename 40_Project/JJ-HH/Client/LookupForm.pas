unit LookupForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Datasnap.Provider, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXCtrls;

type
  TfrmLookup = class(TForm)
    pnlConditions: TPanel;
    pnlRecords: TPanel;
    rdbtnClients: TRadioButton;
    rdbtnCoaches: TRadioButton;
    rdbtnCourses: TRadioButton;
    cdsClients: TClientDataSet;
    cdsClientsCODE: TIntegerField;
    cdsClientsNAME_: TWideStringField;
    cdsClientsBIRTH_DATE: TDateField;
    cdsClientsMOBILE: TStringField;
    cdsClientsDATE_OF_SIGN_UP: TDateField;
    cdsClientsEMAIL: TStringField;
    cdsClientsADDRESS_: TWideStringField;
    cdsClientsFAVORITE_BRANCH: TWideStringField;
    cdsClientsVEHICLE_PLATE: TWideStringField;
    cdsClientsPASSWORD_: TStringField;
    cdsClientsDATE_OF_WITHDRAWAL: TDateField;
    dspClients: TDataSetProvider;
    dsClients: TDataSource;
    dbgrdForLookUp: TDBGrid;
    cmbbxField1: TComboBox;
    sbValue1: TSearchBox;
    procedure rdbtnClientsClick(Sender: TObject);
    procedure sbValue1InvokeSearch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLookup: TfrmLookup;

implementation

{$R *.dfm}

uses MainForm, ServerMethodsUnitGym_ClientClass;

procedure TfrmLookup.rdbtnClientsClick(Sender: TObject);
var
  VarField : TField;
begin
  for VarField in cdsClients.Fields do
  begin
    dbgrdForLookUp.DataSource := frmMain.dsQryClients;
    cmbbxField1.Items.Add(varField.DisplayLabel);
  end;
end;

procedure TfrmLookup.sbValue1InvokeSearch(Sender: TObject);
var
  VarField : TField;
begin
  frmMain.cdsQryClients.Active := False;

  for VarField in cdsClients.Fields do
  begin
  if VarField.DisplayLabel = cmbbxField1.Text then
    serverclient.SelectByFieldAndValueClient(VarField.FieldName, sbValue1.Text);
  end;

  frmMain.cdsQryClients.Active := True;
end;

end.
