unit DeptAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataAccessModule, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.ExtCtrls;

type
  TfrmDeptAdd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btsSelect: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeptAdd: TfrmDeptAdd;

implementation

{$R *.dfm}

end.
