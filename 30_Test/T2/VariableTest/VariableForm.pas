unit VariableForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmVariable = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    edtSum: TEdit;
    edtNum: TEdit;
    btnPlus: TButton;
    btnMinus: TButton;
    procedure btnPlusClick(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    /// <summary>변수 FSum을 초기화 한다.</summary>
    procedure InitData;
    /// <summary>변수 FSum에 파라메터 ANum 값을 더한다.</summary>
    function AddNum(ANum: Integer): Integer;
    /// <summary>변수 FSum에 파라메터 ANum 값을 뺀다.</summary>
    function SubNum(ANum: Integer): Integer;
  end;

var
  frmVariable: TfrmVariable;

{ TODO :
    (1) 다음 3줄의 주석 제거 후 각 메소드를 VariableTestDll.dll과 연결하도록 추가하세요.
      - 힌트 : external
    (2) 다음 메소드를 사용하는 코드의 주석을 제거하세요.
    (3) VariableTestDll.dll 프로젝트를 열고 완성하세요.
}
//procedure InitDataDll;
//function AddNumDll(ANum: Integer): Integer;
//function SubNumDll(ANum: Integer): Integer;

implementation

{$R *.dfm}

{ TForm1 }

// 기존의 값에서 입력된 값을 뺍니다.
procedure TfrmVariable.btnMinusClick(Sender: TObject);
var
  Num, Sum: Integer;
begin
  Num := StrToInt(edtNum.Text);
  Sum := SubNum(Num);

  edtSum.Text := IntToStr(Sum);
end;

// 기존의 값에서 입력된 값을 더합니다.
procedure TfrmVariable.btnPlusClick(Sender: TObject);
var
  Num, Sum: Integer;
begin
  Num := StrToInt(edtNum.Text);
  Sum := AddNum(Num);

  edtSum.Text := IntToStr(Sum);
end;

procedure TfrmVariable.InitData;
begin
//  InitDataDll;
end;

function TfrmVariable.AddNum(ANum: Integer): Integer;
begin
//  Result := AddNumDll(ANum);
end;

function TfrmVariable.SubNum(ANum: Integer): Integer;
begin
//  Result := SubNumDll(ANum);
end;

end.
