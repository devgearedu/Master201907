unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  CalcScreen, Accumulator, SplashScreen;

type
  TMainForm = class(TForm)
    MainPanel: TPanel;
    TFrameCalc1: TFrameCalc;

    procedure FormCreate(Sender: TObject);

    procedure AddInputToBuffer(_inputNum:string);
    procedure SetOpr_Opd_Arrs(_inputOpr:string);  //  사칙 연산 입력시 숫자와 기호 배열에 저장

    procedure TFrameCalc1NumericButtonClick(Sender: TObject);  //  숫자입력
    procedure TFrameCalc1ArithmeticButtonClick(Sender: TObject);  //  사칙연산 기호
    procedure TFrameCalc1ButtonReturnClick(Sender: TObject);

    procedure TFrameCalc1ButtonBackspaceClick(Sender: TObject);  //  ←
    procedure TFrameCalc1ButtonClearClick(Sender: TObject);  //  clear

    procedure TFrameCalc1ButtonSignClick(Sender: TObject);  //  부호 변경
    procedure TFrameCalc1ButtonFloatingPointClick(Sender: TObject);
    procedure TFrameCalc1Button1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TFrameCalc1Button1KeyPress(Sender: TObject; var Key: Char);   //   소수점 입력

  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  MainForm: TMainForm;
  calc : TCalc;
  Opds_Arr: array of Float64; //  Opds_Arr : 피연산
  Symbols : array of string;  //  Symbols : 연산자
  bufString, expString : string;  //  BufferPanel ExpessoinPanel에 표시할 내용을 관리하는 String



implementation

var
  Return_Flag : Boolean = False;
  {
    결과 값에 숫자는 추가로 입력못하게 하기 위한 플래그
    e.g. 3+3 = 6 에서
      숫자 입력은 불가능
      +,-,*,/은 입력 받어서 결과 값과 추가 연산 가능
  }

{$R *.dfm}

procedure TMainForm.AddInputToBuffer(_inputNum: string);
var
  FP_Flag : Boolean;
  I: integer;
begin
  FP_Flag := False;
  for I := 1 to Length(bufString) do
  begin
    if bufString.Substring(I, 1) = '.' then
      FP_Flag := True
  end;

  if Length(bufString) = 15 then
  begin
    if FP_Flag=False then
      exit;
  end;

  if Length(bufString) < 16 then
    bufString := bufString + _inputNum;
  
 if (Length(bufString)=2) and (bufString.Substring(0,1)= '0') then
  begin
    bufString := bufString.Substring(1,1);
    TFrameCalc1.BufferPanel.Caption := bufString;
  end;

  TFrameCalc1.BufferPanel.Caption := bufString;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
 
  Calc:=Accumulator.TCalc.create;
  ActiveControl := nil;

end;

procedure TMainForm.SetOpr_Opd_Arrs(_inputOpr: string);
begin
  if (Length(bufString) = 0) or (bufString='0') then
    exit;

  SetLength(Opds_Arr,Length(Opds_Arr)+1);
  Opds_Arr[Length(Opds_Arr)-1] := StrToFloat(bufString);

  SetLength(Symbols,Length(Symbols)+1);
  Symbols[Length(Symbols)-1] := _inputOpr;

  expString := expString + FloatToStr(Opds_Arr[Length(Opds_Arr)-1]) + Symbols[Length(Symbols)-1];
  TFrameCalc1.ExpressionPanel.Caption := expString;

  bufString :='';
  TFrameCalc1.BufferPanel.Caption := bufString;
  end;

// ↓ 사직연산 버튼 Onclick
procedure TMainForm.TFrameCalc1ArithmeticButtonClick(Sender: TObject);
begin
  ActiveControl := nil;
  if Return_Flag then
    Return_Flag:=False;

  if bufString = '' then
    exit;

  case TButton(Sender).Tag of
    65:  SetOpr_Opd_Arrs('+');
    68:  SetOpr_Opd_Arrs('/');
    77:  SetOpr_Opd_Arrs('*');
    83:  SetOpr_Opd_Arrs('-');
  end;
end;

// ↓ 숫자버튼 Onclick
procedure TMainForm.TFrameCalc1NumericButtonClick(Sender: TObject);
begin
  ActiveControl := nil;
  if Return_Flag then
    exit;

  case  TButton(Sender).Tag of
    0: begin
         if bufString ='0' then
           exit
         else
           AddInputToBuffer('0');
       end;
    1:  AddInputToBuffer('1');
    2:  AddInputToBuffer('2');
    3:  AddInputToBuffer('3');
    4:  AddInputToBuffer('4');
    5:  AddInputToBuffer('5');
    6:  AddInputToBuffer('6');
    7:  AddInputToBuffer('7');
    8:  AddInputToBuffer('8');
    9:  AddInputToBuffer('9');
  end;

end;

// 부호 변경 버튼
procedure TMainForm.TFrameCalc1ButtonSignClick(Sender: TObject);
begin
  if Return_Flag then
    exit;

  if (bufString='0') or (bufString = '')then
    exit;

  if strtofloat(bufString) > 0  then
  begin
    bufString := '-' + bufString;
  end
  else
    bufString := bufString.Substring(1);

  TFrameCalc1.BufferPanel.Caption := bufString;

end;

//  소수점 버튼
procedure TMainForm.TFrameCalc1ButtonFloatingPointClick(Sender: TObject);
var
  I:integer;
begin
  if Return_Flag or (bufSTring = '') then
    exit;

  // 앞에 소수점이 이미 있으면 exit
  for I := 1 to Length(bufString) do
  begin
  if bufString.Substring(I, 1) = '.' then
    exit;
  end;

  bufString := bufString + '.';

  // ..이면 .으로 수정하고
  if (bufString.Substring(length(bufString)-1,1)='.') and
  (bufString.Substring(length(bufString),1)='.') then
    bufString:=bufString.Substring(1,length(bufString)-1);

  TFrameCalc1.BufferPanel.Caption := bufString;

end;


// ↓ backspace, clear 버튼 onClick

procedure TMainForm.TFrameCalc1Button1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN : TFrameCalc1ButtonReturnClick(Sender);
    VK_BACK : TFrameCalc1ButtonBackspaceClick(Sender);
  end;
end;

procedure TMainForm.TFrameCalc1Button1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case Key of
    '1' : AddInputToBuffer('1');
    '2' : AddInputToBuffer('2');
    '3' : AddInputToBuffer('3');
    '4' : AddInputToBuffer('4');
    '5' : AddInputToBuffer('5');
    '6' : AddInputToBuffer('6');
    '7' : AddInputToBuffer('7');
    '8' : AddInputToBuffer('8');
    '9' : AddInputToBuffer('9');
    '0' : begin
         if bufString ='0' then
           exit
         else
           AddInputToBuffer('0');
       end;
    '+' : SetOpr_Opd_Arrs('+');
    '-' : SetOpr_Opd_Arrs('-');
    '*' : SetOpr_Opd_Arrs('*');
    '/' : SetOpr_Opd_Arrs('/');

  end;
end;

procedure TMainForm.TFrameCalc1ButtonBackspaceClick(Sender: TObject);
begin
  ActiveControl := nil;
  if Return_Flag then
    exit;

  if (bufString = '') or (bufString = '0') then
    exit;
  SetLength(bufString,Length(bufstring)-1);

  TFrameCalc1.BufferPanel.Caption := bufString;
  if bufString = '' then
    AddInputToBuffer('0');
end;

procedure TMainForm.TFrameCalc1ButtonClearClick(Sender: TObject);
begin

  bufString :='0';
  TFrameCalc1.BufferPanel.Caption := bufString;

  expString := '';
  TFrameCalc1.ExpressionPanel.Caption := expString;
  SetLength(Opds_Arr,0);
  SetLength(Symbols,0);
  Return_Flag := False;
end;
// ↑ backspace, clear 버튼 onClick

// ↓ Return버튼 onClick (입력 받은 모든 계산 수행, BufString := 결과값, 나머지 초기화)
procedure TMainForm.TFrameCalc1ButtonReturnClick(Sender: TObject);
begin
  if (not (bufString = '')) or (not(expString='')) then
  begin
    calc:=Tcalc.create;

    SetLength(Opds_Arr,Length(Opds_Arr)+1);
    Opds_Arr[Length(Opds_Arr)-1] := StrToFloat(bufString);

    expString := '';


    bufString := Calc.Accumulate(Opds_Arr, Symbols);

    SetLength(Symbols,0);
    SetLength(Opds_Arr,0);
    TFrameCalc1.ExpressionPanel.Caption := expString;
    TFrameCalc1.BufferPanel.Caption := bufString;

    Return_Flag := True;
    calc.Free;
    ActiveControl:=nil;
  end
  else
      exit;
end;

initialization
  SetLength(Opds_Arr,0);
  SetLength(Symbols,0);

  bufString := '0';  // 10
  expString := '';

end.
