unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Ribbon, Vcl.ActnMenus, Vcl.RibbonActnMenus,
  Vcl.RibbonActnCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.StdActns,
  Vcl.ExtActns, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.Menus, Vcl.JumpList,
  Vcl.RibbonSilverStyleActnCtrls, System.Win.TaskbarCore, Vcl.Taskbar,
  Vcl.Touch.GestureMgr,Vcl.Themes;

type
  TMainForm = class(TForm)
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    New_Action: TAction;
    About_Action: TAction;
    Top_Action: TAction;
    Window_Action: TAction;
    Silver_Action: TAction;
    Auric_Action: TAction;
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonPage2: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    RibbonGroup4: TRibbonGroup;
    RibbonSpinEdit1: TRibbonSpinEdit;
    RibbonGroup5: TRibbonGroup;
    RibbonGroup6: TRibbonGroup;
    RibbonGroup7: TRibbonGroup;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    StatusBar1: TStatusBar;
    GridPanel1: TGridPanel;
    CategoryPanelGroup1: TCategoryPanelGroup;
    RichEdit1: TRichEdit;
    PopupMenu1: TPopupMenu;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    New1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Exit1: TMenuItem;
    TrayIcon1: TTrayIcon;
    JumpList1: TJumpList;
    Taskbar1: TTaskbar;
    GestureManager1: TGestureManager;
    RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
    Timer1: TTimer;
    procedure RichEdit1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure Window_ActionExecute(Sender: TObject);
    procedure Silver_ActionExecute(Sender: TObject);
    procedure Auric_ActionExecute(Sender: TObject);
    procedure Top_ActionExecute(Sender: TObject);
    procedure New_ActionExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RibbonSpinEdit1Change(Sender: TObject);
    procedure FileOpen1BeforeExecute(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1BeforeExecute(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ShowHint(Sender:tobject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation
var
  curr_path:string;
{$R *.dfm}

procedure TMainForm.Auric_ActionExecute(Sender: TObject);
begin
  TStyleManager.TrySetStyle('auric');
end;

procedure TMainForm.FileOpen1Accept(Sender: TObject);
begin
   richEdit1.Lines.LoadFromFile(FileOpen1.Dialog.FileName);
end;

procedure TMainForm.FileOpen1BeforeExecute(Sender: TObject);
begin
   FileOpen1.Dialog.InitialDir := curr_path;
   FileOpen1.Dialog.Filter :=
   '유니트파일|*.pas|텍스트파일|*.txt|프로젝트파일|*.dpr';
end;

procedure TMainForm.FileSaveAs1Accept(Sender: TObject);
begin
 richedit1.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);
end;

procedure TMainForm.FileSaveAs1BeforeExecute(Sender: TObject);
begin
  FileSaveAs1.Dialog.InitialDir := curr_path;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if richEdit1.lines.text  <> ''  then
  begin
    ShowMessagE('메모장을지우시고종료하십시오');
    canclose := false;
  end;

end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  RibbonSpinEdit1.Value := RichEdit1.Font.Size;
  curr_path := ExtractFilePath(Application.ExeName);
  application.OnHint := ShowHint;
end;

procedure TMainForm.New_ActionExecute(Sender: TObject);
begin
  RichEdit1.lines.Clear;
end;

procedure TMainForm.RibbonSpinEdit1Change(Sender: TObject);
begin
  RichEdit1.Font.Size := RibbonSpinEdit1.value;
end;

procedure TMainForm.RichEdit1Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiCircle:ShowMessage('원');
    sgiSquare:ShowMessage('사각형');
    sgiTriAngle:ShowMessage('삼각형');
  end;
end;

procedure TMainForm.ShowHint(Sender: tobject);
begin
  StatusBar1.Panels[0].Text := application.Hint;
 //application.hintpause
end;

procedure TMainForm.Silver_ActionExecute(Sender: TObject);
begin
 TStyleManager.TrySetStyle('silver');
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  statusBar1.Panels[2].Text :=
  FormatDateTime('yyyy-mmmm-dd dddd hh:nn:ss ampm',now);

end;

procedure TMainForm.Top_ActionExecute(Sender: TObject);
begin
  Top_Action.Checked := not Top_Action.Checked;
  if Top_Action.Checked  then
     FormStyle := fsStayOnTop
  else
     FormStyle := fsNormal;
end;

procedure TMainForm.Window_ActionExecute(Sender: TObject);
begin
   TStyleManager.TrySetStyle('windows');
end;

end.
