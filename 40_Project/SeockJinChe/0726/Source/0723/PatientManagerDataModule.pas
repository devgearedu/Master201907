unit PatientManagerDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, Data.DbxDatasnap,
  Data.DBXCommon, IPPeerClient, Datasnap.DBClient, Datasnap.DSConnect,
  Data.SqlExpr, Data.DBXInterBase;

type
  TfrmDataModule = class(TDataModule)
    DSProviderConnection: TDSProviderConnection;
    ReservDataSet: TClientDataSet;
    ReservSource: TDataSource;
    DiagnoDataSet: TClientDataSet;
    PatientListDataSet: TClientDataSet;
    MedicineListDataSe: TClientDataSet;
    SMSDataSet: TClientDataSet;
    SQLConnection: TSQLConnection;
    DiagnoSource: TDataSource;
    PatientListSource: TDataSource;
    MedicineListSource: TDataSource;
    SMSSource: TDataSource;
    DecisionDataSet: TClientDataSet;
    DecisionSource: TDataSource;
    ReservDataSetPATIENT_SEQ: TIntegerField;
    ReservDataSetPATIENT_NAME: TWideStringField;
    ReservDataSetPATIENT_BIRTH: TDateField;
    ReservDataSetRESERVATION_DATE: TDateField;
    ReservDataSetRESERVATION_TIME: TTimeField;
    ReservDataSetNOW: TIntegerField;
    ReservDataSetDOCTOR_NAME: TWideStringField;
    DiagnoDataSetPATIENT_SEQ: TIntegerField;
    DiagnoDataSetPATIENT_REASON: TWideStringField;
    DiagnoDataSetPATIENT_DIAGNO: TWideStringField;
    DiagnoDataSetPAYMENT: TIntegerField;
    DiagnoDataSetACCEPT_AMOUNT: TIntegerField;
    DiagnoDataSetDOCTOR_NAME: TWideStringField;
    DiagnoDataSetMEDICINE_SEQ: TIntegerField;
    DiagnoDataSetMEDICINE_NAME: TWideStringField;
    DiagnoDataSetMEDICINE_PRICE: TIntegerField;
    PatientListDataSetPATIENT_SEQ: TIntegerField;
    PatientListDataSetPATIENT_NAME: TWideStringField;
    PatientListDataSetPATIENT_BIRTH: TDateField;
    PatientListDataSetPATIENT_IMAGE: TBlobField;
    PatientListDataSetPATIENT_PHONE: TWideStringField;
    MedicineListDataSeMEDICINE_SEQ: TIntegerField;
    MedicineListDataSeMEDICINE_NAME: TWideStringField;
    MedicineListDataSeMEDICINE_IMAGE: TBlobField;
    MedicineListDataSeMEDICINE_PRICE: TIntegerField;
    SMSDataSetPATIENT_SEQ: TIntegerField;
    SMSDataSetRESERVATION_DATE: TDateField;
    SMSDataSetRESERVATION_TIME: TTimeField;
    SMSDataSetSMS_INDEX: TWideStringField;
    SMSDataSetSMS_TIME: TTimeField;
    SMSDataSetSMS_DATE: TDateField;
    DecisionDataSetPATIENT_SEQ: TIntegerField;
    DecisionDataSetMEDICINE_NAME: TWideStringField;
    DecisionDataSetACCEPT_AMOUNT: TIntegerField;
    DecisionDataSetPAYMENT: TIntegerField;
    ReservDataSetNumber: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataModule: TfrmDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
