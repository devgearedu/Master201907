unit Uupdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,FireDAC.Stan.Intf, FireDAC.Stan.StorageXML,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TUpdateForm = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    FDUpdateSQL1: TFDUpdateSQL;
    Button6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdateForm: TUpdateForm;

implementation

{$R *.dfm}

uses Udm;

procedure TUpdateForm.Button1Click(Sender: TObject);
begin
  dm.dept.CancelUpdates;
end;

procedure TUpdateForm.Button2Click(Sender: TObject);
begin
   dm.Dept.RevertRecord;
end;

procedure TUpdateForm.Button3Click(Sender: TObject);
begin
  dm.Dept.ApplyUpdates(-1);
//  dm.fdconnection1.ApplyUpdates([dm.Dept]);
end;

procedure TUpdateForm.Button4Click(Sender: TObject);
begin
  dm.Dept.SaveToFile('sample.xml',sfXML);
end;

procedure TUpdateForm.Button5Click(Sender: TObject);
begin
 dm.Dept.LoadFromFile('sample.xml');
end;

procedure TUpdateForm.Button6Click(Sender: TObject);
begin
  fdquery1.Delete;
  dm.FDConnection1.ApplyUpdates([fdquery1]);
end;

procedure TUpdateForm.CheckBox1Click(Sender: TObject);
begin
  dm.Dept.CachedUpdates := checkBox1.Checked;
end;

procedure TUpdateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := caFree;
end;

end.
