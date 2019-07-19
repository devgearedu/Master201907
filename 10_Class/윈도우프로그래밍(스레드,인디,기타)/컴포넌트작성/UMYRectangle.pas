unit UMYRectangle;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls, FMX.Objects
  , FMX.Layouts, FMX.StdCtrls,System.UITypes;

type
  TMYRectangle = class(TRectangle)
  private
    fTopLayout: TLayout;
    fBtnYear: TSpeedButton;
    { Private declarations }
  protected
//    procedure Resize; override;
//    procedure Paint; override;
    { Protected declarations }
  public
    { Public declarations }
  published
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TMYRectangle]);
end;

{ TMYRectangle }

constructor TMYRectangle.Create(AOwner: TComponent);
begin
  inherited;
   fTopLayout := TLayout.Create(self);
  fTopLayout.Parent := self;
  fTopLayout.Align := TAlignLayout.Client;
  fBtnYear := TSpeedButton.Create(self);
  fBtnYear.Parent := fTopLayout;
  fBtnYear.Parent := fTopLayout;
  fBtnYear.Align := TAlignLayout.top;
  fBtnYear.Text := '2016';
end;

destructor TMYRectangle.Destroy;
begin
  fBtnYear.free;
  fTopLayout.free;
  inherited;
end;

//procedure TMYRectangle.Paint;
//begin
//  inherited;
//end;

//procedure TMYRectangle.Resize;
//begin
//  inherited;
//  fTopLayout.Height := Height / 6;
//  fBtnYear.SetBounds(0,0,Width /3, fTopLayout.Height/2);
//end;
end.
