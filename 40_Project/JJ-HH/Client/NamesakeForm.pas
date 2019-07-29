unit NamesakeForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmNamesake = class(TForm)
    dbgrdNamesake: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNamesake: TfrmNamesake;

implementation

uses
  MainForm;

{$R *.dfm}

procedure TfrmNamesake.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;

end;

end.
