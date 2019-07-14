unit Udm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.VCLUI.Error,
  FireDAC.Moni.Base, FireDAC.Moni.FlatFile;

type
  Tdm = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Insa: TFDTable;
    InsaSource: TDataSource;
    Dept: TFDTable;
    DeptSource: TDataSource;
    InsaID: TIntegerField;
    InsaNAME: TStringField;
    InsaAGE: TSmallintField;
    InsaDEPT_CODE: TStringField;
    InsaCLASS: TStringField;
    InsaIPSA_DATE: TDateField;
    InsaSALARY: TIntegerField;
    InsaPHOTO: TBlobField;
    InsaGRADE: TStringField;
    Insatax: TFloatField;
    InsaDuring: TIntegerField;
    Insasection: TStringField;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    InsaQuery: TFDQuery;
    InsaquerySource: TDataSource;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
    procedure InsaCalcFields(DataSet: TDataSet);
    procedure InsaAfterInsert(DataSet: TDataSet);
    procedure InsaNewRecord(DataSet: TDataSet);
    procedure InsaSourceStateChange(Sender: TObject);
    procedure InsaSourceDataChange(Sender: TObject; Field: TField);
    procedure DeptSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UInsa;

{$R *.dfm}

procedure Tdm.DeptSourceDataChange(Sender: TObject; Field: TField);
begin
   InsaQuery.Close;
   InsaQuery.Params[0].AsString := Dept.FieldByName('code').AsString;
   InsaQuery.Open;
   // select -->open insert, delete, update -->execsql
end;

procedure Tdm.InsaAfterInsert(DataSet: TDataSet);
begin
   InsaForm.DBEdit2.setFocus;
end;

procedure Tdm.InsaCalcFields(DataSet: TDataSet);
var
 yy1,mm1,dd1:word;
 yy2,mm2,dd2:word;
begin
//  insaDuring.value := date - insaipsa_date.Value;
  DecodeDate(Now, yy1,mm1,dd1);
  DecodeDate(DM.InsaIpsa_Date.Value, yy2,mm2,dd2 );

  if (yy1 = yy2) and (mm1 = mm2) then
     InsaDuring.value := 0
  else
     InsaDuring.Value := yy1 - yy2;

  insaTax.value := insaSalary.value * 0.1;
end;

procedure Tdm.InsaNewRecord(DataSet: TDataSet);
begin
  insaIpsa_date.Value := date;
  InsaSalary.Value := 3000000;
  InsaGrade.value := '1';
end;

procedure Tdm.InsaSourceDataChange(Sender: TObject; Field: TField);
begin
  insaform.SpeedButton1.Enabled := not insa.Bof;
  insaform.SpeedButton2.Enabled := not insa.Bof;
  insaform.SpeedButton3.Enabled := not insa.Eof;
  insaform.SpeedButton4.Enabled := not insa.Eof;
end;

procedure Tdm.InsaSourceStateChange(Sender: TObject);
begin
   insaForm.button1.enabled := insa.state = dsBrowse;
   insaForm.button2.enabled := insa.state = dsBrowse;
   insaForm.button3.enabled := insa.state in [dsInsert, dsEdit];
   insaForm.button4.enabled := insa.state in [dsInsert, dsEdit];
end;

end.
