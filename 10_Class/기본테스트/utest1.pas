unit utest1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    MyButton: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button9: TButton;
    Button10: TButton;
    Button12: TButton;
    ColorDialog1: TColorDialog;
    Button11: TButton;
    Button13: TButton;
    Panel1: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MyButtonClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure TestHandler(Sender:Tobject);
    { Private declarations }
  public
    { Public declarations }
  end;
const
  ScreenWidth = 1024;
  ScreenHeight = 768;
var
  Form1: TForm1;

implementation

{$R *.dfm}

uses utest4, utest3, utest2;
var
  h:th;
  Test_btn:TButton;

procedure TForm1.Button10Click(Sender: TObject);
begin
    if ColorDialog1.Execute then
       color := colorDialog1.Color;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  i:byte;
begin
 for I := 0 to application.ComponentCount - 1 do
   if application.components[i] is tform2 then
   begin
     (Application.Components[i] as tform).Show;
     if (Application.Components[i] as tform).WindowState = wsMinimized then
        (Application.Components[i] as tform).WindowState := wsNormal;
     exit;
   end;
 Form2 := TForm2.Create(Application);
 caption := inttostr(application.componentcount);
 form2.Show;
 form2.ManualDock(panel1);
end;

procedure TForm1.Button12Click(Sender: TObject);
var
  fd:TFontDialog;
begin
  fd := TFontDialog.Create(self);
  caption := inttostr(componentcount);
  if fd.Execute then
     Font := fd.Font;
  fd.Free;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Form3 := TForm3.create(application);
  caption := inttostr(application.ComponentCount);
  if Form3.ShowModal = mrYes then
     caption := datetostr(form3.DateTimePicker1.Date);
  form3.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MyButton.Caption :=  '닫기';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   ShowMessage('my process');
   button1Click(button1);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   button4.Caption := inttostr(i);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  hellow;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  button6.Caption := IntToStr(ADD(7,2));
end;
procedure TForm1.Button7Click(Sender: TObject);
begin
    Button7.Caption := inttostr(Divide(12,3));
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if h = nil then
     h := th.create;

  Edit1.Text := h.GetName;
  Edit2.Text := inttostr(h.Age);
  Edit3.Text := h.Address;
  Edit4.Text := H.office;
  Edit5.Text := IntToStr(h.salary);
//  h.Free;
  freeAndNil(h);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
   Test_btn := Tbutton.Create(self);
   caption := inttostr(componentcount);
   Test_btn.Parent := self;
   Test_btn.Left := button9.Left;
   Test_btn.Top := Button9.Top + button9.Height + 16;
   test_btn.Caption := 'test';
   test_btn.SetFocus;
   test_btn.OnClick := testHandler;
//   test_btn.OnClick := nil;

end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
     vk_return:SelectNext(sender as twincontrol, true,true);
     vk_up:SelectNext(sender as twincontrol, false,true);
     vk_down:SelectNext(sender as twincontrol, true,true);
  end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if (key < '0') or (key > '9') then
       key := #0;

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  caption := inttostr(ComponentCount);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if  Edit1.Text <> '' then
 begin
   ShowMessage('이름을 지우시고 종료하십시오');
   canclose := false;
 end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Button8Click(button8);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key  of
      vk_return:SelectNext(Activecontrol, true,true);
      vk_up:SelectNext(Activecontrol, false,true);
      vk_down:SelectNext(Activecontrol, true,true);
   end;
end;

procedure TForm1.MyButtonClick(Sender: TObject);
begin
   close;
end;

procedure TForm1.TestHandler(Sender: Tobject);
begin
  showmessage('test');
end;

end.
