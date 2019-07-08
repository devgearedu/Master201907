unit uCalcForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCalc = class(TForm)
    displayLabel: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    procedure ButtonNumberClick(Sender: TObject);
    procedure ButtonOperatorClick(Sender: TObject);
    procedure ButtonEqualClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
    procedure Button12KeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalc: TfrmCalc;

implementation

{$R *.dfm}
var
typing : boolean = false;  //타이핑중인지 체크
firstNumber: integer;
secondNumber: integer;
operator :integer;
result: real;
rep: boolean = false;   //연산자를 반복하는지 여부 체크
//숫자버튼을 눌렀을때

procedure TfrmCalc.ButtonNumberClick(Sender: TObject);
begin
  rep := false;
  //반복을 풀어줌
  if typing then
    displayLabel.Caption := displayLabel.Caption + (sender as TButton).Caption
  else
  begin
    displayLabel.Caption := (sender as TButton).Caption;
    typing := true;
  end;

end;
//라벨의 마지막 숫자를 지움

procedure TfrmCalc.ButtonDeleteClick(Sender: TObject);
var s: string;
begin
  s := displayLabel.Caption;
  displayLabel.Caption := copy(s,0,length(s)-1);
end;
 //메모리에 저장된 모든값을 지음

procedure TfrmCalc.Button12KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Button12.Click;
  end;

end;

procedure TfrmCalc.ButtonClearClick(Sender: TObject);
begin
  displayLabel.Caption := '';
  typing := false;
  firstNumber:= 0;
  secondNumber:= 0;
  result:= 0;
  rep := false;
end;
//연산자 버튼을 눌었을때 firstNumber에 디스플레이라벨의 수를 저장
//연산자를 숫자로 분류

procedure TfrmCalc.ButtonOperatorClick(Sender: TObject);

begin

  if rep then
  begin
  showmessage('숫자를 입력하세요');
  end
  else
  firstNumber := strtoint(displayLabel.caption);
  displayLabel.caption := '';
  if (sender as TButton).Caption = '+' then
  operator := 1
  else if (sender as TButton).Caption = '-' then
  operator := 2
  else if (sender as TButton).Caption = '*' then
  operator := 3
  else if (sender as TButton).Caption = '/' then
  operator := 4;
   rep := true
end;
//=버튼을 눌렀을때 처리

procedure TfrmCalc.ButtonEqualClick(Sender: TObject);

begin
  secondNumber := strtoint(displayLabel.caption);
  if rep then
  begin
  showmessage('숫자를 입력하세요');
  end
  else
  case operator of
    1:
    begin
    result := firstNumber + secondNumber;
    end;
    2:
    begin
    result := firstNumber - secondNumber;
    end;
    3:
    begin
    result := firstNumber * secondNumber;
    end;
    4:
    begin
    result := firstNumber / secondNumber;
    end;
   end;
  displayLabel.caption := floattostr(result);
  typing := false;
  rep := true;
end;
end.
