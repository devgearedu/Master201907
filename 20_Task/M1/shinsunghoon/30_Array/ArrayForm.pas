unit ArrayForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FNumArr: array[0..9] of Integer;                                            //[1,2,3,4,5,6,7,8,9,10] 총 10개의 배열 생성

    procedure InitArray;
    function GetArraySum: Integer;
    function GetArrayMaxNum: Integer;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  InitArray;
end;

// 배열에 초기값을 설정
procedure TForm3.InitArray;
var
  I: Integer;
begin
  // 배열(FNumArr)의 길이만큼 반복하며 임의의 값(1~100)을 설정
  for I := 0 to Length(FNumArr) - 1 do                                          //변수 := (초기값) to 배열 - 1
    FNumArr[I] := Random(100);                                                  //For문을 통해 배열에 0~100중 1개씩 삽입
end;

procedure TForm3.Button1Click(Sender: TObject);
var
  I: Integer;
  Sum, MaxNum: Integer;
begin
  // 배열의 합
  Sum := GetArraySum;

  // 배열 중 최고값
  MaxNum := GetArrayMaxNum;

  Memo1.Lines.Clear;
  Memo1.Lines.Add('배열 내용');

  { TODO :
    (1) for 문을 이용해 배열의 내용을 출력하세요.
    배열의 크기 변경되도 동작하도록 반복의 끝은 Length(FNumArr) - 1로 설정
     예> for I := 0 to Length(FNumArr) - 1 do }
  for I := 0 to Length(FNumArr) - 1 do                                          //
  Memo1.Lines.Add('- ' + IntToStr(FNumArr[I]));                                 //For문을 통해 배열을 메모에 1개씩 출력

  Memo1.Lines.Add('배열의 합은 ' + IntToStr(Sum) + ' 입니다.');
  Memo1.Lines.Add('배열의 최대값은 ' + IntToStr(MaxNum) + ' 입니다.');
end;

function TForm3.GetArraySum: Integer;
var
  I, Sum: Integer;
begin
  Sum := 0;
  { TODO : (2) for 문을 이용해 배열의 값을 모두 더해 반환하도록 구현 }
  for I := 0 to Length(FNumArr) -1 do                                           //
    Sum := Sum + (FNumArr[I]);                                                  //For문을 통해 Sum변수에 배열을 더하며 쌓기

  Result := Sum;                                                                //반환값
end;

function TForm3.GetArrayMaxNum: Integer;
var
  I, MaxNum: Integer;
begin
  MaxNum := 0;
  { TODO :
    (3) for 문을 이용해 배열의 값 중 가장 큰 값을 반환하도록 구현
        if 문을 이용해 숫자를 비교  }
  for I := 0 to Length(FNumArr) -1 do                                           //배열안의 숫자를 하나씩 비교
    if MaxNum <= FNumArr[I] then                                                //최대값 조건문   
      MaxNum := FNumArr[I];                                                     //

  Result := MaxNum;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  I, CountOver, CountUnder: Integer;
begin
  CountOver := 0;
  CountUnder := 0;
  { TODO :
      (4) for 문을 이용해 배열의 값이
          50 이상(>=)인 경우 CountOver 1 증가
          50 미만(<)인 경우 CountUnder 1 증가 하도록 구현
  }
  for I := 0 to Length(FNumArr) -1 do                                           //
    if FNumArr[I] >= 50 then                                                    //50이상 미만 조건문
      Inc(CountOver)                                                            //Inc(변수) = 1씩 증가한다.
    else                                                                        //
      Inc(CountUnder);                                                          //
    
  Memo1.Lines.Add('50 이상인 수의 갯수: ' + IntToStr(CountOver));
  Memo1.Lines.Add('50 미만인 수의 갯수: ' + IntToStr(CountUnder));
end;
end.
