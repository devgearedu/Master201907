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
    function Add( _opdA, _opdB:integer): integer; overload;
    function Add( _opdA, _opdB:real): real; overload;

    function Sub( _opdA, _opdB:integer): integer; overload;
    function Sub( _opdA, _opdB:real): real; overload;

    function Multi( _opdA, _opdB:integer): integer; overload;
    function Multi( _opdA, _opdB:real): real; overload;

    function Divide( _opdA, _opdB:integer): real; overload;
    function Divide( _opdA, _opdB:real): extended; overload;

  public
    constructor create;
  end;




implementation

{ TCalc }

function TCalc.Add(_opdA, _opdB: integer): integer;
begin
  Result := _opdA + _opdB;
end;

function TCalc.Add(_opdA, _opdB: real): real;
begin
  Result := _opdA + _opdB;
end;

constructor TCalc.create;
begin

end;

function TCalc.Divide(_opdA, _opdB: integer): real;
begin
    Result := _opdA / _opdB;
end;

function TCalc.Divide(_opdA, _opdB: real): extended;
begin
  Result:=_opdA / _opdB;
end;

function TCalc.Multi(_opdA, _opdB: integer): integer;
begin
  Result := _opdA * _opdB;
end;

function TCalc.Multi(_opdA, _opdB: real): real;
begin
  Result := _opdA * _opdB;
end;

function TCalc.Sub(_opdA, _opdB: integer): integer;
begin
  Result := _opdA - _opdB;
end;

function TCalc.Sub(_opdA, _opdB: real): real;
begin
  Result := _opdA - _opdB;
end;

end.
