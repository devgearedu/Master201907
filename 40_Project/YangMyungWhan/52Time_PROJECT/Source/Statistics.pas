unit Statistics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmStatisics = class(TForm)
    pnlHead: TPanel;
    Label1: TLabel;
    pcStatistics: TPageControl;
    tsWorkState: TTabSheet;
    tsWorkHistory: TTabSheet;
    tsEtc: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatisics: TfrmStatisics;

implementation

{$R *.dfm}

end.
