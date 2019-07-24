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
  FNum : integer;

implementation

{$R *.dfm}

{ TForm1 }

// 기존의 값에서 입력된 값을 뺍니다.
procedure TfrmVariable.btnMinusClick(Sender: TObject);
var
  Num, Sum: Integer;
begin
  Sum:=FNum;
  Num := StrToInt(edtNum.Text);
  Sum := SubNum(Num);

  edtSum.Text := IntToStr(Sum);
end;

// 기존의 값에서 입력된 값을 더합니다.
procedure TfrmVariable.btnPlusClick(Sender: TObject);
var
  Num, Sum: Integer;
begin
  sum:=FNum;
  Num := StrToInt(edtNum.Text);
  Sum := AddNum(Num);

  edtSum.Text := IntToStr(Sum);
end;

procedure TfrmVariable.InitData;
begin
  // 변수 FNum을 초기화 하세요.
  FNum :=0;
end;

function TfrmVariable.AddNum(ANum: Integer): Integer;
begin
  FNum := FNum+ANum;
  Result := FNum;
end;

function TfrmVariable.SubNum(ANum: Integer): Integer;
begin
  FNum := FNum-ANum;
  Result := FNum;
end;

end.
