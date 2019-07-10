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
    function Accumulate(_opds_Arr, _symbols:array of string): string;

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


function TCalc.Accumulate(_Opds_Arr, _Symbols: array of string): string;
var
  I,J,K : integer; // for loops
  opdsLen, symbolsLen: integer;  //  setLength 사용할 수 없어서 인덱스로 사용
  LC:integer;  // 분기를 위한 루프 카운트
  extA : extended;
  accResult:string;

begin
  I:=0;
  LC:=0;
  opdsLen := Length(_opds_Arr);
  symbolsLen := Length(_Symbols);
  //Len:=Length(_Opds_Arr);

  while Length(_Opds_Arr) > 1 do
  begin
    LC:=LC+1;

    if _Symbols[I] = '*' then
    begin
      _Opds_Arr[I]:=floattostr(Multi(strtofloat(_Opds_Arr[I]),strtofloat(_Opds_Arr[I+1])));

      for J := I to symbolsLen-2 do
      begin
        _Opds_Arr[J+1] := _Opds_Arr[J+2];
        _Symbols[J] := _Symbols[J+1];
      end;

      symbolsLen:=symbolsLen-1;
      opdsLen:=opdsLen-1;


      accResult:=_Opds_Arr[I];

      I:=0;
    end
    else
      if _Symbols[I] = '/' then
      begin

        extA:=Divide(strtofloat(_Opds_Arr[I]),strtofloat(_Opds_Arr[I+1]));
        _Opds_Arr[I] :=floattostr(extA);
        for J := I to symbolsLen-2 do
        begin
          _Opds_Arr[J+1] := _Opds_Arr[J+2];
          _Symbols[J] := _Symbols[J+1];
        end;

        symbolsLen:=symbolsLen-1;
        opdsLen:=opdsLen-1;


        accResult:=_Opds_Arr[I];

        I:=0;
      end
      else
        I:=I+1;

    if LC > Length(_Opds_Arr) then
      break;
  end;
  // ↑ 입력 중 곱셈과 나눗셈을 먼저 실행


  for K := 0 to symbolsLen-1 do
  begin
    if _Symbols[K] = '+' then
    begin
      _Opds_Arr[K+1]:=floattostr(Add(strtofloat(_Opds_Arr[K]),strtofloat(_Opds_Arr[K+1])));
    end
    else
    begin
      if _Symbols[K] = '-' then
        _Opds_Arr[K+1]:=floattostr(Sub(strtofloat(_Opds_Arr[K]),strtofloat(_Opds_Arr[K+1])));
    end;
  end;

  accResult:=_Opds_Arr[opdsLen-1];

  Result:=accResult;
end;

constructor TCalc.create;
begin

end;

end.
