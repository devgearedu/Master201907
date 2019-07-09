unit CalcForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TCalForm = class(TForm)
    LabelPanel: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PlsButton: TButton;
    Num0: TButton;
    Num1: TButton;
    Num2: TButton;
    Num3: TButton;
    Num4: TButton;
    Num5: TButton;
    Num6: TButton;
    Num7: TButton;
    Num8: TButton;
    Num9: TButton;
    MnsButton: TButton;
    MtpButton: TButton;
    DvsButton: TButton;
    RstLabel: TLabel;
    SaveLabel: TLabel;
    Panel5: TPanel;
    Button2: TButton;
    Button4: TButton;
    DmcButton: TButton;
    RstButton: TButton;
    Button1: TButton;
    CEButton: TButton;
    procedure NumClick(Sender: TObject);
    procedure CEClick(Sender: TObject);
    procedure OpButtonClick(Sender: TObject);
    procedure RstButtonClick(Sender: TObject);
    procedure Oprator(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalForm: TCalForm;
  MaxLenth: Integer=10;   //숫자 입력 길이 제한
  InputIndex: integer;    //입력한 숫자 개수
  InputOp: String;         //입력한 연산자기호
  SaveNum: integer;        //연산자 입력시 저장할 입력해둔 숫자
  RstNum: integer;         //결과 입력시 저장할 입력한 숫자
  x,y:string;   //나눗셈용 변수
  f:extended;   //


implementation

{$R *.dfm}                 //컴파일할 때 폼을 합치라는 명령어.

procedure TCalForm.CEClick(Sender: TObject);  //초기화 버튼 클릭
begin
  RstLabel.Caption := '';
  SaveLabel.Caption := '';
  InputIndex := 0;
  InputOp := '';
end;

procedure TCalForm.NumClick(Sender: TObject);   //숫자 클릭 시
  begin
    try
      if InputIndex > MaxLenth then   //입력길이 초과시 무시
      begin
        raise EAbort.Create('추가로 입력할 수 없습니다.(안보임)');
      end;
      {if SaveLabel.Caption = '-' then
      begin
      RstLabel.Caption := '-' + (Sender as TButton).Caption;   //처음에 -클릭후 숫자 입력시
      SaveLabel.Caption := '';
      InputOp := '';
      end;}

    Inc(InputIndex);         //숫자 입력 개수 증가
    RstLabel.Caption := RstLabel.Caption + (Sender as TButton).Caption; //화면에 숫자 출력

    except

    end;


  end;

procedure TCalForm.OpButtonClick(Sender: TObject); //연산자 기호 클릭시
begin
  if InputOp <> '' then      //연산자 연속 입력 시
  begin
    if RstLabel.Caption <> '' then
    begin
    RstButtonClick(Sender as TButton);
    Oprator(Sender as TButton);
    end;
  exit;                      //입력 무시
  end;
  {if RstLabel.Caption = '' then      //숫자를 아무것도 입력하지 않고 눌렀을 때
  begin
    if InputOp = 'ㅡ' then           //아무것도 없이 '-' 눌렀을 때
    begin
    SaveLabel.Caption := '-';                 //레이블에 표시
    Exit;
    end;
  RstNum := 0;                       //0저장
  RstLabel.Caption := '0';           //0표시
  end;}
  Oprator(Sender as TButton);
end;

procedure TCalForm.RstButtonClick(Sender: TObject);   //'='누를시
begin
  RstNum := StrtoInt(RstLabel.Caption);
  if InputOp = '+' then
  RstLabel.Caption := InttoStr(SaveNum + RstNum);
  if InputOp = 'ㅡ' then
  RstLabel.Caption := InttoStr(SaveNum - RstNum);
  if InputOp = 'X' then
  RstLabel.Caption := InttoStr(SaveNum * RstNum);
  if InputOp = '÷' then
  begin
    try
      x :=InttoStr(SaveNum);
      y :=InttoStr(RstNum);
      f := strtofloat(x) / strtofloat(y);
      RstLabel.Caption := FloattoStr(f);
    except
      try
      RstLabel.Caption := InttoStr(SaveNum div RstNum);
      except
      showmessage('0으로 나눌 수 없습니다');
      end;
    end;
  end;

  SaveLabel.Caption := '';



end;

procedure TCalForm.Oprator(Sender: TObject);
begin
 InputOp := (Sender as TButton).Caption;    //누른 버튼의 캡션을 저장
 SaveNum := StrtoInt(RstLabel.Caption);     //표기된 숫자를 저장
 SaveLabel.Caption := InttoStr(SaveNum) + InputOp;    //상단에 저장된 값 표시
 RstLabel.Caption := '';                    //RstLabel 초기화
 InputIndex := 0;                           //입력한 숫자 개수 초기화
end;

end.
