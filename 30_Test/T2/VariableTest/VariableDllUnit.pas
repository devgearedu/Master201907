unit VariableDllUnit;

interface

procedure InitDataDll;
function AddNumDll(ANum: Integer): Integer;
function SubNumDll(ANum: Integer): Integer;

implementation


var
  Num: Integer;

procedure InitDataDll;
begin
  Num := 0;
end;

{ TODO : 정수형 Num 변수에 ANum을 더한 값을 반환하시오. 해당 값은 누적되어야 함 }
function AddNumDll(ANum: Integer): Integer;
begin
  Result := 0;
end;

{ TODO : 정수형 Num 변수에 ANum을 뺀 값을 반환하시오. 해당 값은 누적되어야 함 }
function SubNumDll(ANum: Integer): Integer;
begin
  Result := 0;
end;


end.
