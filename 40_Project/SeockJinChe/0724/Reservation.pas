unit Reservation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmReserv = class(TForm)
    RservPanel: TPanel;
    Sub_Panel1: TPanel;
    Edit1: TEdit;
    ButtonInsert: TButton;
    ButtonLookup: TButton;
    ButtonDelete: TButton;
    Button1: TButton;
    DBComboBox1: TDBComboBox;
    Sub_Panel2: TPanel;
    RSVDBGrid: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReserv: TfrmReserv;

implementation

{$R *.dfm}

end.
