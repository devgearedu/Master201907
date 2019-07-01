unit utest4;
//type, const, var, procedure, function 선언
//이곳에 선언된  type, const,var, procedure, function들은 자기 유니트 및 외부 유니트에서도 사용 가능(uses)
interface
var
  s:string;  //1.0 shortstring; 2.0~2009이전 AnsiString, 2009~ :unicodestring
  i:NativeInt = 100;  //32 or 64
  r:real;
  t:TDateTime;
  b:boolean;   //bytebool, wordbool, longbool;
  v:variant;
// 문자,정수,실수,날자,불린,정적배열,동적배얼, ole object(엑셀 워드) 등을 가질수 있는 타입
// unsinged 16byte ----> 메모리효율셩이 떨어지고 성능 저하
implementation

initialization

finalization


end.
