unit SignUpForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.DateTimeCtrls, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts, FMX.TabControl;

type
  TfrmSignUp = class(TForm)
    Layout1: TLayout;
    StyleBook1: TStyleBook;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    btnCancel: TButton;
    btnSignUp: TButton;
    DateEdit1: TDateEdit;
    edtName: TEdit;
    edtPhone: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    btnFemale: TRadioButton;
    btnMale: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    edtId: TEdit;
    edtPassword: TEdit;
    btnDuple: TButton;
    btnNext: TButton;
    lbDuple: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSignUp: TfrmSignUp;

implementation

{$R *.fmx}

end.
