unit USawonList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.Permissions,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListBox, FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.MultiView, FMX.TabControl, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.Bind.GenData,
  Data.Bind.GenData, System.Rtti, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.EngExt, FMX.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.ObjectScope, FMX.ListView, FMX.Objects,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.Edit,
  FMX.PhoneDialer, System.IOUtils, FMX.Platform,
  FMX.ViewPort3D, FMX.Layers3D, System.UIconsts, FMX.Types3D;

type
  TForm1 = class(TForm)
    MultiView1: TMultiView;
    ToolBar1: TToolBar;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    MasterButton: TButton;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout1: TLayout;
    ToolBar2: TToolBar;
    MasterButton2: TButton;
    Text1: TText;
    ListView1: TListView;
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    ImageControl1: TImageControl;
    Edit1: TEdit;
    Edit2: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    BtnPhoneCall: TButton;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    GestureManager1: TGestureManager;
    Button1: TButton;
    Edit3: TEdit;
    Action3D: TAction;
    StyleBook1: TStyleBook;
    procedure ListBox1Change(Sender: TObject);
    procedure MasterButtonClick(Sender: TObject);
    procedure MasterButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action3DExecute(Sender: TObject);
    procedure BtnPhoneCallClick(Sender: TObject);

  private
    { Private declarations }
    ViewPort3D: TViewPort3D;
    layer3D: TLayer3D;

    FPhoneDialerService: IFMXPhoneDialerService;
    FCallPhonePermission: string;

    procedure DisplayRationale(Sender: TObject;
      const APermissions: TArray<string>; const APostRationaleProc: TProc);
    procedure MakePhoneCallPermissionRequestResult(Sender: TObject;
      const APermissions: TArray<string>;
      const AGrantResults: TArray<TPermissionStatus>);

    procedure SwitchTo2D;
    procedure SwitchTo3D;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
{$IFDEF ANDROID}
  Androidapi.Helpers,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
{$ENDIF}
  FMX.DialogService;

{$R *.fmx}

procedure TForm1.MakePhoneCallPermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
begin
  // 1 permission involved: CALL_PHONE
  if (Length(AGrantResults) = 1) and (AGrantResults[0] = TPermissionStatus.Granted) then
    FPhoneDialerService.Call(edit3.Text)
  else
    TDialogService.ShowMessage('Cannot make a phone call because the required permission has not been granted');
end;

procedure TForm1.MasterButton2Click(Sender: TObject);
begin
  MultiView1.Mode := TMultiViewMode.Drawer;
  MultiView1.ShowMaster;
end;

procedure TForm1.Action3DExecute(Sender: TObject);
begin
  SwitchTo3D;
  if Assigned(layer3D) then
  begin
    layer3D.AnimateFloat('Position.Z', 500, 1);
//    layer3D.AnimateFloatDelay('Position.Z', 0, 1, 1);
//    layer3D.AnimateFloatWait('RotationAngle.Y', 360, 2,
//      TAnimationType.InOut, TInterpolationType.Quintic);
  end;

  SwitchTo2D;
end;

procedure TForm1.BtnPhoneCallClick(Sender: TObject);
begin
  { test whether the PhoneDialer services are supported }
  if FPhoneDialerService <> nil then
  begin
    { if the Telephone Number is entered in the edit box then make the call, else
      display an error message }
    if edit3.Text <> '' then
      PermissionsService.RequestPermissions([FCallPhonePermission], MakePhoneCallPermissionRequestResult, DisplayRationale)
    else
    begin
      TDialogService.ShowMessage('Please type in a telephone number.');
      edit3.SetFocus;
    end;
  end
  else
    TDialogService.ShowMessage('PhoneDialer service not supported');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MultiView1.Mode := TMultiViewMode.Popover;
  MultiView1.ShowMaster;
end;

procedure TForm1.DisplayRationale(Sender: TObject;
  const APermissions: TArray<string>; const APostRationaleProc: TProc);
begin
  // Show an explanation to the user *asynchronously* - don't block this thread waiting for the user's response!
  // After the user sees the explanation, invoke the post-rationale routine to request the permissions
  TDialogService.ShowMessage
    ('The app needs to be able to support your making phone calls',
    procedure(const AResult: TModalResult)
    begin
      APostRationaleProc;
    end)
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
{$IFDEF ANDROID}
  FCallPhonePermission := JStringToString
    (TJManifest_permission.JavaClass.CALL_PHONE);
{$ENDIF}
  { test whether the PhoneDialer services are supported }
  TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService,
    FPhoneDialerService);
end;

procedure TForm1.ListBox1Change(Sender: TObject);
begin
  case ListBox1.ItemIndex of
    0:
      begin
        Text1.Text := '사원 목록';
        TabControl1.ActiveTab := TabItem1;
      end;
    1:
      begin
        Text1.Text := '사원 정보';
        TabControl1.ActiveTab := TabItem2;
      end;
  end;

  MultiView1.HideMaster;
  MasterButton2.Enabled := True;

end;

procedure TForm1.MasterButtonClick(Sender: TObject);
begin
  // MultiView1.Mode := TMultiViewMode.Drawer;
  MultiView1.HideMaster;
  MasterButton2.Enabled := True;
end;

procedure TForm1.SwitchTo2D;
begin
  Layout1.Parent := Self;
  FreeAndNil(viewPort3D);
end;

procedure TForm1.SwitchTo3D;
begin
  viewPort3D := TViewport3D.Create(Self);
  viewPort3D.Parent := Self;
  viewPort3D.Align := TAlignLayout.Client;
  viewPort3D.Color := claNull;

  layer3D := TLayer3D.Create(ViewPort3D);
  layer3D.Parent := viewPort3D;
  layer3D.Projection := TProjection.Screen;
  layer3D.Align := TAlignLayout.Client;

  Layout1.Parent := layer3D;
end;

end.
