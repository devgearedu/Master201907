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
    procedure SetOpr_Opd_Arrs(_inputOpr:string);
    procedure TFrameCalc1Button7Click(Sender: TObject);
    procedure TFrameCalc1Button8Click(Sender: TObject);
    procedure TFrameCalc1Button9Click(Sender: TObject);
    procedure TFrameCalc1Button4Click(Sender: TObject);
    procedure TFrameCalc1Button5Click(Sender: TObject);
    procedure TFrameCalc1Button6Click(Sender: TObject);
    procedure TFrameCalc1Button1Click(Sender: TObject);
    procedure TFrameCalc1Button2Click(Sender: TObject);
    procedure TFrameCalc1Button3Click(Sender: TObject);
    procedure TFrameCalc1Button0Click(Sender: TObject);
    procedure TFrameCalc1ButtonBackspaceClick(Sender: TObject);
    procedure TFrameCalc1ButtonClearClick(Sender: TObject);
    procedure TFrameCalc1ButtonAddClick(Sender: TObject);
    procedure TFrameCalc1ButtonSubClick(Sender: TObject);
    procedure TFrameCalc1ButtonMultipleClick(Sender: TObject);
    procedure TFrameCalc1ButtonDivisionClick(Sender: TObject);
    procedure TFrameCalc1ButtonReturnClick(Sender: TObject);
    procedure TFrameCalc1ButtonSignClick(Sender: TObject);
    procedure TFrameCalc1ButtonFloatingPointClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  MainForm: TMainForm;
  calc : TCalc;
  Opds_Arr, Symbols : array of string;
  //Buffer : array of string;  // Expression : array of string;
  bufString, expString : string;



implementation


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

  if Length(bufString) = 10 then
  begin
    if FP_Flag=False then
      exit;
  end;

  if bufString='0' then
    bufString:='';

  if Length(bufString) < 11 then
    bufString := bufString + _inputNum;

  TFrameCalc1.BufferPanel.Caption := bufString;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Calc:=Accumulator.TCalc.create;
end;

procedure TMainForm.SetOpr_Opd_Arrs(_inputOpr: string);
var
  oprCheck:string;
begin
  if Length(bufString) = 0 then
    exit;

  oprCheck := copy(expString,Length(expString),1);

  if ((oprCheck = '+')
    or (oprCheck = '-')
    or (oprCheck = '*')
    or (oprCheck = '/')) and (bufString='') then
      exit;

  SetLength(Opds_Arr,Length(Opds_Arr)+1);
  Opds_Arr[Length(Opds_Arr)-1] := bufString;

  SetLength(Symbols,Length(Symbols)+1);
  Symbols[Length(Symbols)-1] := _inputOpr;

  expString := expString + Opds_Arr[Length(Opds_Arr)-1] + Symbols[Length(Symbols)-1];
  TFrameCalc1.ExpressionPanel.Caption := expString;

  bufString :='';
  TFrameCalc1.BufferPanel.Caption := bufString;
end;

// ↓ 숫자버튼 Onclick
procedure TMainForm.TFrameCalc1Button0Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button0.Caption);
  if (Length(bufString) = 1) and (bufString = '0') then
  begin
    bufString := '';
  end;
end;

procedure TMainForm.TFrameCalc1Button1Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button1.Caption);
end;

procedure TMainForm.TFrameCalc1Button2Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button2.Caption);
end;

procedure TMainForm.TFrameCalc1Button3Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button3.Caption);
end;

procedure TMainForm.TFrameCalc1Button4Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button4.Caption);
end;

procedure TMainForm.TFrameCalc1Button5Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button5.Caption);
end;

procedure TMainForm.TFrameCalc1Button6Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button6.Caption);
end;

procedure TMainForm.TFrameCalc1Button7Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button7.Caption);
end;


procedure TMainForm.TFrameCalc1Button8Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button8.Caption);
end;

procedure TMainForm.TFrameCalc1Button9Click(Sender: TObject);
begin
  AddInputToBuffer(TFrameCalc1.Button9.Caption);
end;
// ↑ 숫자버튼 Onclick

// 부호 변경 버튼
procedure TMainForm.TFrameCalc1ButtonSignClick(Sender: TObject);
begin
  if (bufString='0') or (bufString = '')then
    exit;

  if strtoint(bufString) > 0  then
  begin
    bufString := '-' + bufString;
  end
  else
    bufString := bufString.Substring(1);

  TFrameCalc1.BufferPanel.Caption := bufString;

end;

//소수점 버튼
procedure TMainForm.TFrameCalc1ButtonFloatingPointClick(Sender: TObject);
var
  I:integer;
begin
//
  if (bufString='0') or (bufString = '')then
  begin
    bufString := '0.';
    TFrameCalc1.BufferPanel.Caption := bufString;
    exit;
  end;

  for I := 1 to Length(bufString) do
  begin
  if bufString.Substring(I, 1) = '.' then
    exit
  else
    bufString := bufString + '.';
    if (bufString.Substring(length(bufString)-1,1)='.') and
      (bufString.Substring(length(bufString),1)='.') then
      bufString:=bufString.Substring(1,length(bufString)-1);

    TFrameCalc1.BufferPanel.Caption := bufString;

  end;

end;


// ↓ 사칙연산, clear, backspace 버튼 onClick
procedure TMainForm.TFrameCalc1ButtonAddClick(Sender: TObject);
begin
  SetOpr_Opd_Arrs('+');
end;

procedure TMainForm.TFrameCalc1ButtonBackspaceClick(Sender: TObject);
begin
  if (bufString = '') or (bufString = '0') then
    exit;
  SetLength(bufString,Length(bufstring)-1);

  TFrameCalc1.BufferPanel.Caption := bufString;
  if bufString = '' then
    AddInputToBuffer('0');
end;

procedure TMainForm.TFrameCalc1ButtonClearClick(Sender: TObject);
begin
  bufString :='';

  TFrameCalc1Button0Click(TFrameCalc1.Button0);

  expString := '';
  TFrameCalc1.ExpressionPanel.Caption := expString;
  //SetLength(Expression,0);
  SetLength(Opds_Arr,0);
  SetLength(Symbols,0);

end;

procedure TMainForm.TFrameCalc1ButtonDivisionClick(Sender: TObject);
begin
  SetOpr_Opd_Arrs('/');
end;

procedure TMainForm.TFrameCalc1ButtonMultipleClick(Sender: TObject);
begin
  SetOpr_Opd_Arrs('*');
end;

procedure TMainForm.TFrameCalc1ButtonSubClick(Sender: TObject);
begin
  SetOpr_Opd_Arrs('-');
end;
// ↑ 사칙연산, clear, backspace 버튼 onClick
// ↓ Return버튼 onClick (입력 받은 모든 계산 수행)
procedure TMainForm.TFrameCalc1ButtonReturnClick(Sender: TObject);
var
  I,J,K,LC, Len:integer;
  extA : extended;

begin
//
  calc:=Tcalc.create;

  SetLength(Opds_Arr,Length(Opds_Arr)+1);
  Opds_Arr[Length(Opds_Arr)-1] := bufString;

  bufString := '';
  expString := '';

  // ↓ 입력 중 곱셈과 나눗셈을 먼저 실행
  I:=0;
  LC:=0;
  Len:=Length(Opds_Arr);

  while Length(Opds_Arr) > 1 do
  begin
    LC:=LC+1;

    if Symbols[I] = '*' then
    begin
      Opds_Arr[I]:=floattostr(Calc.Multi(strtofloat(Opds_Arr[I]),strtofloat(Opds_Arr[I+1])));

      for J := I to Length(Symbols)-2 do
      begin
        Opds_Arr[J+1] := Opds_Arr[J+2];
        Symbols[J] := Symbols[J+1];
      end;

      SetLength(Symbols, Length(Symbols)-1);
      SetLength(Opds_Arr, Length(Opds_Arr)-1);


      bufString:=Opds_Arr[I];

      I:=0;
    end
    else
      if Symbols[I] = '/' then
      begin

        extA:=Calc.Divide(strtofloat(Opds_Arr[I]),strtofloat(Opds_Arr[I+1]));
        Opds_Arr[I] :=floattostr(extA);
        for J := I to Length(Symbols)-2 do
        begin
          Opds_Arr[J+1] := Opds_Arr[J+2];
          Symbols[J] := Symbols[J+1];
        end;

        SetLength(Symbols, Length(Symbols)-1);
        SetLength(Opds_Arr, Length(Opds_Arr)-1);


        bufString:=Opds_Arr[I];

        I:=0;
      end
      else
        I:=I+1;

    if LC > Len then
      break;
  end;
  // ↑ 입력 중 곱셈과 나눗셈을 먼저 실행


  for K := 0 to Length(Symbols)-1 do
  begin
    if Symbols[K] = '+' then
    begin
      Opds_Arr[K+1]:=floattostr(calc.Add(strtofloat(Opds_Arr[K]),strtofloat(Opds_Arr[K+1])));
    end
    else
    begin
      if Symbols[K] = '-' then
        Opds_Arr[K+1]:=floattostr(calc.Sub(strtofloat(Opds_Arr[K]),strtofloat(Opds_Arr[K+1])));
    end;
  end;

  bufString:=Opds_Arr[Length(Opds_Arr)-1];

  SetLength(Symbols,0);
  SetLength(Opds_Arr,0);
  expString := '';

  TFrameCalc1.ExpressionPanel.Caption := expString;
  TFrameCalc1.BufferPanel.Caption := bufString;

  freeandnil(calc);

end;

initialization
  SetLength(Opds_Arr,0);
  SetLength(Symbols,0);

  bufString := '';  // 10
  expString := '';

end.
