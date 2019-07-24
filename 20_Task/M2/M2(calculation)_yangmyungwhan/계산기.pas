<<<<<<< HEAD
unit 계산기;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    GridPanel1: TGridPanel;
    num7: TButton;
    num8: TButton;
    num9: TButton;
    divide: TButton;
    num4: TButton;
    num5: TButton;
    num6: TButton;
    tbutton14: TButton;
    num1: TButton;
    num2: TButton;
    num3: TButton;
    sub: TButton;
    num0: TButton;
    num00: TButton;
    dot: TButton;
    add: TButton;
    ToolBar1: TToolBar;
    result: TButton;
    clear: TButton;
    delete: TButton;
    Edit1: TEdit;

    Procedure FormCreat(Sender: TObject);
    Procedure NumButtonClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  tag: integer;
  calvar1: string;
  calvar2: string;                //숫자 or 연산자 구별
  calvar3: string;                //operand1 초기입력값, 연산결과 기억값
  calvar4: real;                  //결과값
  calvar5: integer;               //연산자 변수
  calvar6: string;                //operand2

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.numbuttonclick(sender: Tobject);
begin
  tag := (sender as TButton).Tag;
  begin

  case tag of
  20:
      begin
        if pos('.', Edit1.Text) = 0 then        //점은 하나만
          Edit1.Text := Edit1.Text +'.';
      end;

  21:
      begin
        edit1.Text := '0';    //clear
        calvar2 := '0';
        calvar3 := '';
        calvar4 := 0;
        calvar6 := '';
      end;

  22:
      begin
        edit1.text := copy(edit1.text, 1, length(edit1.Text)-1);   // backspace
        if length(edit1.Text)=0 then
          edit1.Text :='0';
      end
  end;
  end;

  if tag<19 then
  begin
      if (tag >=0) and (tag <11) then       // 숫자 버튼(0~11) 0, 연산자(12~18) 1
        calvar1 := '0';

      if (tag >=11) and (tag <19) then
        calvar1 := '1';

      calvar2 := calvar2 + calvar1;

      if length(edit1.Text) >10 then      //입력범위 10자
        showmessage('입력범위초과');

      if (calvar2 = '00') or (calvar2 = '0') then         //'00' : clear, '0' 숫자입력, operand1
        begin
          edit1.Text := '';
          calvar2 :='0';
          edit1.Text := edit1.Text + floattostr((sender as tbutton).Tag); //floattostr : 부동소수점을 문자열로 변환하는 함수
          calvar3 := edit1.Text;
          calvar4 := 0;
        end;

      if calvar2 = '01' then                                  //연산자 입력
        begin
          calvar5 := tag;
          edit1.Text := '';
        end;

      if (calvar2 = '010') or (calvar2 = '0100') then         //operand2 세팅
        begin
          calvar2 := '010';
          calvar6 := calvar6 + floattostr(tag);
          edit1.text := calvar6;
        end;

      if (calvar2 = '0101') then                             //연산자 입력, '=' 입력
        begin                                                //'0101' : '처음입력, 연산자입력, 두번째~입력, = 버튼 or 추가연산자'
          calvar2 := '01';                                   //           0           1          0                   1
          case calvar5 of
           17 :
           begin
             try
              calvar4 := strtofloat(calvar3) / strtofloat(calvar6);
              except on e:EMathError do
              showmessage('0으로 나눌 수 없습니다.');
             end;
           end;
           14 : calvar4 := strtofloat(calvar3) + strtofloat(calvar6);
           15 : calvar4 := strtofloat(calvar3) - strtofloat(calvar6);
           16 : calvar4 := strtofloat(calvar3) * strtofloat(calvar6);
          end;

          if tag = 18 then                      //결과값 출력
           begin
            edit1.Text := floattostr(calvar4);
            calvar2 := '010';                   //117번으로 돌아가서 연산자 준비
           end;

          calvar6 := '';
          edit1.Text := floattostr(calvar4);
          calvar3 := floattostr(calvar4);       // 결과값 저장
          calvar5 := tag;
        end;

      if (calvar2 = '1') or (calvar2 = '011') then
        begin
          calvar2 := '0';
          if tag = 15 then
            edit1.Text := '-'
          else
            showmessage('잘못된 입력입니다.')
        end;
  end;
end;


procedure TForm1.FormCreat(Sender: TObject);
begin
  edit1.Text := '';
end;


end.
=======
unit 계산기;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    GridPanel1: TGridPanel;
    num7: TButton;
    num8: TButton;
    num9: TButton;
    divide: TButton;
    num4: TButton;
    num5: TButton;
    num6: TButton;
    tbutton14: TButton;
    num1: TButton;
    num2: TButton;
    num3: TButton;
    sub: TButton;
    num0: TButton;
    num00: TButton;
    dot: TButton;
    add: TButton;
    ToolBar1: TToolBar;
    result: TButton;
    clear: TButton;
    delete: TButton;
    Edit1: TEdit;

    Procedure FormCreat(Sender: TObject);
    Procedure NumButtonClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  tag: integer;
  calvar1: string;
  calvar2: string;                //숫자 or 연산자 구별
  calvar3: string;                //operand1 초기입력값, 연산결과 기억값
  calvar4: real;                  //결과값
  calvar5: integer;               //연산자 변수
  calvar6: string;                //operand2

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.numbuttonclick(sender: Tobject);
begin
  tag := (sender as TButton).Tag;
  begin

  case tag of
  20:
      begin
        if pos('.', Edit1.Text) = 0 then        //점은 하나만
          Edit1.Text := Edit1.Text +'.';
      end;

  21:
      begin
        edit1.Text := '0';    //clear
        calvar2 := '0';
        calvar3 := '';
        calvar4 := 0;
        calvar6 := '';
      end;

  22:
      begin
        edit1.text := copy(edit1.text, 1, length(edit1.Text)-1);   // backspace
        if length(edit1.Text)=0 then
          edit1.Text :='0';
      end
  end;
  end;

  if tag<19 then
  begin
      if (tag >=0) and (tag <11) then       // 숫자 버튼(0~11) 0, 연산자(12~18) 1
        calvar1 := '0';

      if (tag >=11) and (tag <19) then
        calvar1 := '1';

      calvar2 := calvar2 + calvar1;

      if length(edit1.Text) >10 then      //입력범위 10자
        showmessage('입력범위초과');

      if (calvar2 = '00') or (calvar2 = '0') then         //'00' : clear, '0' 숫자입력, operand1
        begin
          edit1.Text := '';
          calvar2 :='0';
          edit1.Text := edit1.Text + floattostr((sender as tbutton).Tag); //floattostr : 부동소수점을 문자열로 변환하는 함수
          calvar3 := edit1.Text;
          calvar4 := 0;
        end;

      if calvar2 = '01' then                                  //연산자 입력
        begin
          calvar5 := tag;
          edit1.Text := '';
        end;

      if (calvar2 = '010') or (calvar2 = '0100') then         //operand2 세팅
        begin
          calvar2 := '010';
          calvar6 := calvar6 + floattostr(tag);
          edit1.text := calvar6;
        end;

      if (calvar2 = '0101') then                             //연산자 입력, '=' 입력
        begin                                                //'0101' : '처음입력, 연산자입력, 두번째~입력, = 버튼 or 추가연산자'
          calvar2 := '01';                                   //           0           1          0                   1
          case calvar5 of
           17 :
           begin
             try
              calvar4 := strtofloat(calvar3) / strtofloat(calvar6);
              except on e:EMathError do
              showmessage('0으로 나눌 수 없습니다.');
             end;
           end;
           14 : calvar4 := strtofloat(calvar3) + strtofloat(calvar6);
           15 : calvar4 := strtofloat(calvar3) - strtofloat(calvar6);
           16 : calvar4 := strtofloat(calvar3) * strtofloat(calvar6);
          end;

          if tag = 18 then                      //결과값 출력
           begin
            edit1.Text := floattostr(calvar4);
            calvar2 := '010';                   //117번으로 돌아가서 연산자 준비
           end;

          calvar6 := '';
          edit1.Text := floattostr(calvar4);
          calvar3 := floattostr(calvar4);       // 결과값 저장
          calvar5 := tag;
        end;

      if (calvar2 = '1') or (calvar2 = '011') then
        begin
          calvar2 := '0';
          if tag = 15 then
            edit1.Text := '-'
          else
            showmessage('잘못된 입력입니다.')
        end;
  end;
end;


procedure TForm1.FormCreat(Sender: TObject);
begin
  edit1.Text := '';
end;


end.
>>>>>>> ea544203bcbbc8ff04b6fd585b9049812dbf02e4
