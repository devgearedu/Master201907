unit Utrans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TTransForm = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    FDQuery1: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransForm: TTransForm;

implementation

{$R *.dfm}

uses Udm;

procedure TTransForm.Button1Click(Sender: TObject);
begin
  dm.FDConnection1.StartTransaction;
  try
    try
      fdQuery1.Close;
      fdQuery1.SQL.Text :=
      'delete from insa where dept_code = :code';
      fdquery1.Params[0].AsString := dm.Dept.Fields[0].AsString;
      fdQuery1.ExecSQL;
    except
    showmessage('사원 삭제 오류');
    raise;
    end;
    try
      dm.Dept.delete;
    except
      showmessage('부서 삭제 오류');
    end;
    try
      dm.FDConnection1.Commit;
    except
      on e:exception do
      begin
         showmessage(e.Message);
         raise;
      end;
    end;
  except
    dm.FDConnection1.rollback;
  end;
  dm.Dept.refresh;
  dm.Insa.Refresh;
end;

procedure TTransForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;
end.
