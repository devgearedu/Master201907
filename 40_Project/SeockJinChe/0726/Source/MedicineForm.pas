unit MedicineForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmMedicine = class(TForm)
    MedicinePanel: TPanel;
    Sub_Panel1: TPanel;
    Sub_Panel2: TPanel;
    Sub_Panel3: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMedicine: TfrmMedicine;

implementation

{$R *.dfm}

end.
