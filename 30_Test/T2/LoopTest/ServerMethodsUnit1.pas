unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    qryUsers: TFDQuery;
    dspUsers: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function CalcOddNumSum(AStartNum, AEndNum: Integer): Integer;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

{ TServerMethods1 }

function TServerMethods1.CalcOddNumSum(AStartNum, AEndNum: Integer): Integer;
var
  Num: Integer;
begin
  Result := 0;
{ TODO : AStartNum과 AEndNum 사이의 홀수의 합을 반환하세요. }
//  for Num :=
end;

end.

