unit UCalculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Btn_Num1: TButton;
    Btn_Num2: TButton;
    Btn_Num3: TButton;
    Btn_Num4: TButton;
    Btn_Num5: TButton;
    Btn_Num6: TButton;
    Btn_Num7: TButton;
    Btn_Num8: TButton;
    Btn_Num9: TButton;
    Btn_Num0: TButton;
    Btn_Dot: TButton;
    Btn_Result: TButton;
    Btn_Sum: TButton;
    Btn_Sub: TButton;
    Btn_Mul: TButton;
    Btn_Div: TButton;
    Btn_CE: TButton;
    Btn_BackSpace: TButton;
    Edit1: TEdit;
    Panel: TPanel;
    procedure Btn_Num1Click(Sender: TObject);
    procedure Btn_SumClick(Sender: TObject);
    procedure Btn_ResultClick(Sender: TObject);
    procedure Btn_CEClick(Sender: TObject);
    procedure Btn_DotClick(Sender: TObject);
    procedure Btn_SubClick(Sender: TObject);
    function Add( Num1 , Num2 : Real) : Extended; Overload;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);       //계산식

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Num1, Num2 : Real;
  Str : Integer;
  //Str(연산자)
  Dot_Check, Sub_Check, Oper_Check, Cal_Check: Boolean;
  //Dot_Check(.이중클릭 확인), Oper_Check(연산자 이중클릭), Sub_Check(음수 확인)
  Max : String;
  //Edit1.MaxLength

implementation

{$R *.dfm}
procedure TForm1.Btn_CEClick(Sender: TObject);         //모두 리셋
begin
  Edit1.Text := '';
  Num1 := 0;
  Num2 := 0;
  Str := 0;
  Dot_Check := False;
  Sub_Check := False;
  Max := '';
end;

procedure TForm1.Btn_DotClick(Sender: TObject);
begin
  if (Edit1.Text = '') Or (Edit1.Text = '-') then      //(Error처리) 숫자 없이 "." 클릭
    begin
      ShowMessage('숫자를 먼저 입력하세요.');
      Exit;
    end;
  if Dot_Check = False then                            //(Error처리) "." 이중클릭
    begin
      Edit1.Text := Edit1.Text + (Sender as TButton).Caption;
      Dot_Check := True;
    end
  else
    Showmessage('. 는 1번만 입력하세요.');
end;

procedure TForm1.Btn_Num1Click(Sender: TObject);
begin
  if Max = '1111111111' then                           //Edit1.MaxLength
    begin
      ShowMessage('입력범위를 초과하였습니다.');
      Exit;
    end;

  if Cal_Check then                                    // " = " 이후 숫자 입력
    begin
      Edit1.Text := '';
      Cal_Check := False;
    end;
  Edit1.Text := Edit1.Text + (Sender as TButton).Caption;         //숫자 입력
  Oper_Check := False;                                            //(Error처리)연산자 2번클릭시

  Max := Max + '1';                                    //Edit1.MaxLength
  Edit1.SetFocus;
end;

procedure TForm1.Btn_ResultClick(Sender: TObject);     //결과
begin
  try
    Num1 := StrToFloat(Edit1.Text);                    //첫숫자 저장
    if Str <> 0 then
      begin
        Num2 := (Add(Num1, Num2));                     //계산 함수 호출
        Edit1.Text := FloatToStr(Num2);
        Num1 := 0;
        Str := 0;
        Cal_Check := True;
      end;

    Dot_Check := False;                                //소수점 확인
    Sub_Check := False;                                //음수 확인
    Max := '';                                         //Edit1.MaxLength
  except
    if (Edit1.Text = '') And (Num1 = 0) And (Num2 = 0) then       //(Error처리) 숫자 없이 = 입력시
      begin
        Showmessage('숫자를 입력하세요');
        Exit;
      end;

    if (Num1 = 0) And (Str = 99) then                             //(Error처리) 12 / 0 =
      begin
        ShowMessage('0은 나눌수 없습니다.');
        Btn_CEClick(Sender);
        Exit;
      end;

  end;

end;

procedure TForm1.Btn_SubClick(Sender: TObject);
begin
  if Edit1.Text = '-' then                             //"-" 연속 2번 입력시
    begin
      ShowMessage('숫자를 입력하세요');
      Exit;
    end;

  if (Edit1.Text <> '')then                            //빼기 입력
    begin
      Btn_SumClick(Sender);
      Exit;
    end;

  if Sub_Check = False then                            //음수 입력
    begin
      Edit1.Text := Edit1.Text + (Sender as TButton).Caption;
      Sub_Check := True;
    end
  else
    begin
      Showmessage('- 는 1번만 입력하세요.');           //(Error처리) "-" 이중클릭
      Exit;
    end
end;

procedure TForm1.Btn_SumClick(Sender: TObject);        //연산자 클릭
begin
  try
    if Oper_Check then                                 //(Error처리) 연산자 이중클릭
      begin
        ShowMessage('연산자는 한번만 입력 가능합니다.');
        Num2 := 0;
        Exit;
      end;

    if Num1 = 0 then
      begin
        Btn_ResultClick(Sender);                       //Btn_Result.Click <> Btn_ResultClick(Sender) 다름!!!
        case (Sender as TButton).tag of                //연산자 기호지정                                         ////////////////////////////////////////
          11 : Str := 96;
          12 : Str := 97;
          13 : Str := 98;
          14 : Str := 99;
        end;

      end;
    Num1 := StrToFloat(Edit1.Text);
    Num2 := Num1;                                      //처음 변수값을 두번째 변수로 이동
    Num1 := 0;                                         //처음 변수값 리셋
    Edit1.Text := '';                                  //다음 숫자 입력 위해

    Dot_Check := False;                                //소수점
    Sub_Check := False;                                //음수
    Oper_Check := True;                                //연산자 2번클릭
    Max := '';                                         //Edit1.MaxLength
  except
  end;

end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if (Key < #96) or (Key > #111) or (Key = #8)
//   or (Key = #13) then                 //숫자만 입력 가능
//   begin
    case Key of
//      vk_Back : Btn_CE.OnClick( Sender as TWincontrol);
      vk_Return : Btn_Result.OnClick( Sender as TWincontrol);
//      vk_32 : Btn_Num0.OnClick( Sender as TWincontrol);
//      vk_1 : Btn_Num1.OnClick( Sender as TWincontrol);
//      vk_32 : Btn_Num2.OnClick( Sender as TWincontrol);
//      33 : Btn_Num3.OnClick( Sender as TWincontrol);
//      34 : Btn_Num4.OnClick( Sender as TWincontrol);
//      35 : Btn_Num5.OnClick( Sender as TWincontrol);
//      36 : Btn_Num6.OnClick( Sender as TWincontrol);
//      37 : Btn_Num7.OnClick( Sender as TWincontrol);
//      38 : Btn_Num8.OnClick( Sender as TWincontrol);
//      39 : Btn_Num9.OnClick( Sender as TWincontrol);
//      VK_ADD : Btn_Sum.OnClick( Sender as TWincontrol);
//      VK_SUBTRACT : Btn_Sub.OnClick( Sender as TWincontrol);
//      VK_MULTIPLY : Btn_Mul.OnClick( Sender as TWincontrol);
//      VK_DECIMAL : Btn_Dot.OnClick( Sender as TWincontrol);
//      VK_DIVIDE : Btn_Div.OnClick( Sender as TWincontrol);
    end;
end;

function TForm1.Add(Num1, Num2: Real ) : Extended;   //계산 함수
begin
  case Str of
    96 : result := Num2 + Num1;                      //정수형 더하기
    97 : result := Num2 - Num1;                      //정수형 빼기기
    98 : result := Num2 * Num1;                      //정수형 곱하기
    99 : result := Num2 / Num1;                      //실수형 나누기
  end;

end;

end.
