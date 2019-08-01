unit Usplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TSplashForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;
procedure Display_USplash; Export; Stdcall;

implementation
Procedure Display_USplash;
var
 ASplash: TSplashForm;
begin
 ASplash := TSplashForm.Create(nil);
 try
   ASplash.ShowModal;
 finally
  ASplash.Free;
 end;
 end;

{$R *.dfm}

end.
