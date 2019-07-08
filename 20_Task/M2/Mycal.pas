unit Mycal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCal = class(TForm)
    Panel1: TPanel;
    Plus: TButton;
    Btn1: TButton;
    Btn2: TButton;
    Btn3: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    minus: TButton;
    Btn7: TButton;
    Btn8: TButton;
    Btn9: TButton;
    multi: TButton;
    BtnDot: TButton;
    equal: TButton;
    Delete: TButton;
    division: TButton;
    Btn0: TButton;
    Clear: TButton;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure NumberButtonClick(Sender: TObject);
    procedure OPButtonClick(Sender: TObject);
    procedure equalClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnDotClick(Sender: TObject);
  private
    Sum:Extended;
    PreSign : String;  //앞에 입력한 부호
    IsSum : Boolean;
    procedure InitCalc();
    procedure SumCalc();
  public
    { Public declarations }

  end;

var
  Cal: TCal;

implementation

{$R *.dfm}

procedure TCal.OPButtonClick(Sender: TObject);
var
  ThisSign : string;  //지금 누르는 기호
begin
  case (Sender as TButton).tag of
    11 : ThisSign := '+';
    12 : ThisSign := '-';
    13 : ThisSign := '*';
    14 : ThisSign := '/';
  end;

  if IsSum then
  begin
    Edit2.Text := Copy(Edit2.Text, 1, Length(Edit2.Text)-1) + ThisSign;
    PreSign := ThisSign;
  end
  else
  begin
    if PreSign = '' then
    begin
      Edit2.Text := Edit1.Text + ThisSign;
      Sum := StrToFloat(Edit1.Text);
    end
    else
    begin
      Edit2.Text := Edit2.Text + Edit1.Text + ThisSign;
      SumCalc();
    end;

    PreSign := ThisSign;
  end;

  IsSum := True;
end;

procedure TCal.SumCalc;
begin
  if PreSign = '+' then
    Sum := Sum + StrToFloat(Edit1.Text)
  else if PreSign = '-' then
    Sum := Sum - StrToFloat(Edit1.Text)
  else if PreSign = '*' then
    Sum := Sum * StrToFloat(Edit1.Text)
  else if PreSign = '/' then
  begin
    if Edit1.Text = '0' then
    begin
      ShowMessage('0으로 나눌 수 없습니다.');
      InitCalc();
    end
    else
      Sum := Sum / StrToFloat(Edit1.Text);
  end;

  Edit1.Text := FloatToStr(Sum);
end;

procedure TCal.BtnDotClick(Sender: TObject);
begin
    if Pos('.', Edit1.Text) = 0 then
    Edit1.Text := Edit1.Text + '.';
end;

procedure TCal.ClearClick(Sender: TObject);
begin
  InitCalc();
end;

procedure TCal.DeleteClick(Sender: TObject);
var
s:string;
begin
  if Length(Edit1.Text) <= 1 then
    Edit1.Text :=  '0'
  else
    Edit1.Text := Copy(Edit1.Text, 1, Length(Edit1.Text)-1);
end;

procedure TCal.equalClick(Sender: TObject);

begin
  if true then
  begin
    if PreSign = '' then
      Sum := StrToFloat(Edit1.Text)
    else
    begin
      SumCalc();
    end;
  end;
  IsSum := True;
  Edit2.Clear;
  Sum := 0;
  PreSign := '';
end;

procedure TCal.FormShow(Sender: TObject);
begin
  InitCalc();
  Edit1.SetFocus;
end;

procedure TCal.InitCalc;
begin
  Edit1.Text := '0';
  Edit2.Clear;
  IsSum := False;
  PreSign := '';
  Sum := 0;
end;

procedure TCal.NumberButtonClick(Sender: TObject);
begin
  if IsSum then
    Edit1.Text := '0';
  if Edit1.Text <> '0'then
    if Length(Edit1.Text) = 10 then
    else
      Edit1.Text := Edit1.Text + IntToStr((Sender as TButton).tag)
  else
    Edit1.Text := IntToStr((Sender as TButton).tag);

  IsSum := False;
end;

end.
