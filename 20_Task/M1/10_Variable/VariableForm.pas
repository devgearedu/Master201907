unit VariableForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNum: TEdit;
    Button1: TButton;
    edtSum: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    // 이 폼(유닛)에서만 사용하는 변수와 함수를 선언
    FSum: Integer;  //합산에 사용할 변수 FSum
    function AddNum(ANum: Integer): Integer; //입력값을 더해주는 function
  public
    // 다른 유닛에서 참조할 수 있는 변수와 함수 선언
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.AddNum(ANum: Integer): Integer;
begin
  FSum := FSum + ANum; //기존 FSum값에 새로 입력한 값을 더한다.
  Result := Fsum; // 더해진 값을 반환한다.
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Num, Sum: Integer;  // 이곳에 선언된 변수는 이 함수에서만 사용합니다.
begin
  Num := StrToInt(edtNum.Text); //edtNum에 입력한 값을 Num에 저장한다.
  Sum := AddNum(Num);  //AddNum function에 Num값을 넘겨주고받은 값을 Sum에 저장.

  edtSum.Text := IntToStr(Sum); //결과값을 출력한다.
end;

end.
