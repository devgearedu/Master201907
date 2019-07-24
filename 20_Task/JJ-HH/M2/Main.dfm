object MainForm: TMainForm
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'MainForm'
  ClientHeight = 405
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = TFrameCalc1Button1KeyDown
  OnKeyPress = TFrameCalc1Button1KeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object MainPanel: TPanel
    Left = 0
    Top = 0
    Width = 362
    Height = 405
    Align = alClient
    TabOrder = 0
    inline TFrameCalc1: TFrameCalc
      Left = 1
      Top = 1
      Width = 360
      Height = 403
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 403
      inherited BufferPanel: TPanel
        Caption = '0'
      end
      inherited ButtonsPanel: TPanel
        Height = 303
        ExplicitHeight = 303
        inherited BPSub1: TPanel
          inherited ButtonDivision: TButton
            Tag = 68
            OnClick = TFrameCalc1ArithmeticButtonClick
          end
          inherited ButtonClear: TButton
            OnClick = TFrameCalc1ButtonClearClick
          end
          inherited ButtonBackspace: TButton
            Caption = #8592
            OnClick = TFrameCalc1ButtonBackspaceClick
          end
        end
        inherited BPSub5: TPanel
          inherited ButtonSign: TButton
            OnClick = TFrameCalc1ButtonSignClick
          end
          inherited Button0: TButton
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited ButtonFloatingPoint: TButton
            OnClick = TFrameCalc1ButtonFloatingPointClick
          end
          inherited ButtonReturn: TButton
            OnClick = TFrameCalc1ButtonReturnClick
          end
        end
        inherited BPSub4: TPanel
          inherited Button1: TButton
            Tag = 1
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited Button2: TButton
            Tag = 2
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited Button3: TButton
            Tag = 3
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited ButtonAdd: TButton
            Tag = 65
            OnClick = TFrameCalc1ArithmeticButtonClick
          end
        end
        inherited BPSub3: TPanel
          inherited Button4: TButton
            Tag = 4
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited Button5: TButton
            Tag = 5
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited Button6: TButton
            Tag = 6
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited ButtonSub: TButton
            Tag = 83
            OnClick = TFrameCalc1ArithmeticButtonClick
          end
        end
        inherited BPSub2: TPanel
          inherited Button7: TButton
            Tag = 7
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited Button8: TButton
            Tag = 8
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited Button9: TButton
            Tag = 9
            OnClick = TFrameCalc1NumericButtonClick
          end
          inherited ButtonMultiple: TButton
            Tag = 77
            Caption = '*'
            OnClick = TFrameCalc1ArithmeticButtonClick
          end
        end
      end
    end
  end
end
