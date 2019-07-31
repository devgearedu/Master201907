unit MobileReserveForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, Data.DB,
  Datasnap.DBClient, Data.Bind.EngExt, Fmx.Bind.DBEngExt, FMX.Objects,
  FMX.TabControl, Data.Bind.Components, FMX.ListBox, FMX.MultiView,
  System.Actions, FMX.ActnList, FMX.Gestures, FMX.Ani, FMX.Edit,
  Data.DbxDatasnap, Data.DBXCommon, IPPeerClient, Data.SqlExpr,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.DateTimeCtrls, FMX.ListView, Datasnap.Provider, Datasnap.DSConnect,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.DBScope;

type
  TfrmMain = class(TForm)
    lyoClient: TLayout;
    sbReserve: TStyleBook;
    BindingsList1: TBindingsList;
    ctrlMain: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    MultiView: TMultiView;
    ListBox: TListBox;
    tbSub: TToolBar;
    Button1: TButton;
    Label1: TLabel;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    tbMain: TToolBar;
    lbHeader: TLabel;
    btnMaster: TButton;
    Layout1: TLayout;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    btnReserve: TButton;
    btnClear: TButton;
    ListView1: TListView;
    ListBox1: TListBox;
    Label10: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    TimeEdit1: TTimeEdit;
    ImageControl1: TImageControl;
    BitmapAnimation1: TBitmapAnimation;
    btnLogin: TButton;
    btnSignUp: TButton;
    BindSourceDB1: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure btnMasterClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
    procedure ListBoxItem5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses SignUpForm, MobileDataModule;

procedure TfrmMain.btnLoginClick(Sender: TObject);
begin
  frmSignUp := TfrmSignUp.Create(self);
end;

procedure TfrmMain.btnMasterClick(Sender: TObject);
begin
  Multiview.Mode := TMultiviewMode.Drawer;
  Multiview.ShowMaster;  //멀티뷰 보이기
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  Multiview.HideMaster;   //멀티뷰 숨기기
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  ctrlMain.ActiveTab.TabControl.TabIndex := 0;
end;

procedure TfrmMain.ListBoxItem1Click(Sender: TObject);
begin
  ctrlMain.ActiveTab.TabControl.TabIndex := 0; //액티브탭 변경,  메인화면(TabItem1)
  Multiview.HideMaster;
end;

procedure TfrmMain.ListBoxItem2Click(Sender: TObject);
begin
  ctrlMain.ActiveTab.TabControl.TabIndex := 1; //액티브탭 변경,  예약하기(TabItem2)
  Multiview.HideMaster;
end;

procedure TfrmMain.ListBoxItem3Click(Sender: TObject);
begin
  ctrlMain.ActiveTab.TabControl.TabIndex := 2; //액티브탭 변경,  접수확인(TabItem3)
  Multiview.HideMaster;
end;

procedure TfrmMain.ListBoxItem4Click(Sender: TObject);
begin
  ctrlMain.ActiveTab.TabControl.TabIndex := 3; //액티브탭 변경,  대기순서 확인(TabItem4)
  Multiview.HideMaster;
end;

procedure TfrmMain.ListBoxItem5Click(Sender: TObject);
begin
  ctrlMain.ActiveTab.TabControl.TabIndex := 4; //액티브탭 변경,  만든이(TabItem5)
  Multiview.HideMaster;
end;

end.
