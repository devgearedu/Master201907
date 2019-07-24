unit CalcScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls,
  Vcl.StdCtrls, Accumulator;

type
  TFrameCalc = class(TFrame)
    ExpressionPanel: TPanel;
    BufferPanel: TPanel;
    ButtonsPanel: TPanel;
    BPSub1: TPanel;
    BPSub5: TPanel;
    BPSub4: TPanel;
    BPSub3: TPanel;
    BPSub2: TPanel;
    ButtonDivision: TButton;
    ButtonClear: TButton;
    ButtonBackspace: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ButtonMultiple: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ButtonSub: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ButtonAdd: TButton;
    ButtonSign: TButton;
    Button0: TButton;
    ButtonFloatingPoint: TButton;
    ButtonReturn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
  //Calc : TCalc;

implementation


{$R *.dfm}

end.
