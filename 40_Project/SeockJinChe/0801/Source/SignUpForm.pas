unit SignUpForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.DateTimeCtrls, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts, FMX.TabControl, FMX.Gestures, System.Actions, FMX.ActnList,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope;

type
  TfrmSignUp = class(TForm)
    Layout1: TLayout;
    StyleBook1: TStyleBook;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Label1: TLabel;
    Label2: TLabel;
    edtId: TEdit;
    edtPassword: TEdit;
    btnDuple: TButton;
    btnNext: TButton;
    lbDuple: TLabel;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    GestureManager1: TGestureManager;
    BindingsList1: TBindingsList;
    Panel1: TPanel;
    Label7: TLabel;
    edtName: TEdit;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    btnMale: TRadioButton;
    btnFemale: TRadioButton;
    Label9: TLabel;
    edtPhone: TEdit;
    Panel2: TPanel;
    btnCancel: TButton;
    btnSignUp: TButton;
    Label3: TLabel;
    ImageControl1: TImageControl;
    BindSourceDB1: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure btnNextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    function LoginCheck(AId : string): Integer;
  end;

var
  frmSignUp: TfrmSignUp;

implementation

{$R *.fmx}

uses MobileDataModule, LoginForm;

procedure TfrmSignUp.btnNextClick(Sender: TObject);
begin
  TabControl1.ActiveTab.TabControl.TabIndex := 1;
end;

procedure TfrmSignUp.FormCreate(Sender: TObject);
begin
  TabControl1.ActiveTab.TabControl.TabIndex := 0;
//  TDataModule1.EditMode;
end;

end.
