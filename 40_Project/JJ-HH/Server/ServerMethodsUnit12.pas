unit ServerMethodsUnit12;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TServerMethods12 = class(TDSServerModule)
    fdcnGYM: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdtblClients: TFDTable;
    dspClients: TDataSetProvider;
    fdqryClients: TFDQuery;
    dspQryClients: TDataSetProvider;
    fdtblClientsCODE: TIntegerField;
    fdtblClientsNAME_: TWideStringField;
    fdtblClientsBIRTH_DATE: TDateField;
    fdtblClientsMOBILE: TStringField;
    fdtblClientsDATE_OF_SIGN_UP: TDateField;
    fdtblClientsEMAIL: TStringField;
    fdtblClientsADDRESS_: TWideStringField;
    fdtblClientsFAVORITE_BRANCH: TWideStringField;
    fdtblClientsVEHICLE_PLATE: TWideStringField;
    fdtblClientsPASSWORD_: TStringField;
    fdtblClientsDATE_OF_WITHDRAWAL: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function GetCode(Value: string) : Integer;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods12.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods12.GetCode(Value: string): Integer;
var
  ReturnCode : Integer;
begin
  fdqryClients.Close;
  fdqryClients.Open('SELECT code FROM clients WHERE name_ = '+''''+Value+'''');
  ReturnCode := fdqryClients.Fields[0].AsInteger;
  Result := ReturnCode;
end;

function TServerMethods12.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

