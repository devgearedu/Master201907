unit ChartForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, VclTee.TeeGDIPlus,
  Data.DB, Vcl.StdCtrls, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, VCLTee.Series;

type
  TfrmChart = class(TForm)
    pnlClient: TPanel;
    pnlHeader: TPanel;
    pnlChart: TPanel;
    DBChart: TDBChart;
    pnlFooter: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Series1: TBarSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChart: TfrmChart;

implementation

{$R *.dfm}

procedure TfrmChart.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmChart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmChart := nil;
end;

end.
