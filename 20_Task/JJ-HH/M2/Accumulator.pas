unit Accumulator;

interface

Uses
  VCL.Dialogs, System.Sysutils;

type

  // TCalc : 계산기 프로그램에서 실제로 계산 후 결과 값을 반환하는Class
  TCalc = class(TObject)
    {
      각각의 사칙연산을 피연산자의 타입(정수/실수)에 따라 overload로 구현
      opd는 operand의 약자입니다.
    }

    function Add( _opdA, _opdB:real): real;
    function Sub( _opdA, _opdB:real): real;
    function Multi( _opdA, _opdB:real): real;
    function Divide( _opdA, _opdB:real): extended;
    function Accumulate(_opds_Arr:array of Float64; _symbols:array of string): string;

  public
    constructor create;
  end;


implementation

{ TCalc }


function TCalc.Add(_opdA, _opdB: real): real;
begin
  Result := _opdA + _opdB;
end;

function TCalc.Sub(_opdA, _opdB: real): real;
begin
  Result := _opdA - _opdB;
end;

function TCalc.Multi(_opdA, _opdB: real): real;
begin
  Result := _opdA * _opdB;
end;

function TCalc.Divide(_opdA, _opdB: real): extended;
begin
  try
    Result:=_opdA / _opdB;
  except
    on e: EMathError do
      showMessage('0으로 나눌 수 없습니다.');
  end;
end;


function TCalc.Accumulate(_Opds_Arr: array of Float64; _Symbols: array of string): string;
var
  I,J,K : integer; // for loops
  tmpOpd : array of Float64;
  tmpSym : array of string;  //  setLength 사용할 수 없어서 배열 사용
  LC:integer;  // Break를 위한 Loop Count
  extA : extended;
  accResult:Float64;  //  연산 결과값

begin
  LC:=0;
  SetLength(tmpOpd, Length(_Opds_Arr));
  SetLength(tmpSym, Length(_Symbols));
  for I := 0 to Length(_symbols)-1 do
  begin
    tmpOpd[I] := _opds_Arr[I];
    tmpSym[I] := _symbols[I];
    //ShowMessage('sym:'+tmpSym[I]);
    //ShowMessage('opd:'+ FloatToStr(tmpopd[I]));

  end;
  tmpOpd[Length(_Opds_ARr)-1] := _Opds_ARr[Length(_Opds_ARr)-1];
  //ShowMessage('opd:'+ FloatToStr(tmpopd[Length(_Opds_ARr)-1]));

  I:=0;


 // ↓ 입력 중 곱셈과 나눗셈을 먼저 실행,
  while Length(tmpOpd) > 1 do
  begin
    LC:=LC+1;
    if tmpSym[I] = '*' then
    begin
      tmpOpd[I]:=Multi(tmpOpd[I],tmpOpd[I+1]);

      for J := I to Length(tmpSym)-2 do
      begin
        tmpOpd[J+1] := tmpOpd[J+2];
        tmpSym[J] := tmpSym[J+1];
      end;

      SetLength(tmpSym, Length(tmpSym)-1);
      SetLength(tmpOpd, Length(tmpOpd)-1);

      //accResult:=tmpOpd[I];
      I:=0;
    end
    else
    begin
      if tmpSym[I] = '/' then
      begin

        extA:=Divide(tmpOpd[I],tmpOpd[I+1]);
        tmpOpd[I] := extA;
        for J := I to Length(tmpSym)-2 do
        begin
          tmpOpd[J+1] := tmpOpd[J+2];
          tmpSym[J] := tmpSym[J+1];
        end;

        SetLength(tmpSym, Length(tmpSym)-1);
        SetLength(tmpOpd, Length(tmpOpd)-1);

        //accResult:=tmpOpd[I];
        I:=0;

      end
      else
        I:=I+1;
    end;
    if LC > Length(tmpOpd) then
      break;
  end;
  // ↑ 입력 중 곱셈과 나눗셈을 먼저 실행

  for K := 0 to Length(tmpSym)-1 do
  begin

    if tmpSym[K] = '+' then
    begin
      tmpOpd[K+1]:=Add(tmpOpd[K],tmpOpd[K+1]);
    end
    else
    begin
      if tmpSym[K] = '-' then
        tmpOpd[K+1]:=Sub(tmpOpd[K],tmpOpd[K+1]);
    end;
  end;

  accResult:=tmpOpd[length(tmpOpd)-1];
  //ShowMessage(FloatToStr(accResult));
  Result:=FloatToStr(accResult);
end;

constructor TCalc.create;
begin

end;

end.
