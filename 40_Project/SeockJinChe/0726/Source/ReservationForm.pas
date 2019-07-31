unit ReservationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TfrmReserve = class(TForm)
    RservPanel: TPanel;
    Sub_Panel1: TPanel;
    Edit1: TEdit;
    ButtonInsert: TButton;
    ButtonLookup: TButton;
    ButtonDelete: TButton;
    btnEnter: TButton;
    DBComboBox1: TDBComboBox;
    Sub_Panel2: TPanel;
    grdReserve: TDBGrid;
    Label1: TLabel;
    ilReserve: TImageList;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

uses MainClientForm;

procedure TfrmReserve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSub := nil;
end;

end.
