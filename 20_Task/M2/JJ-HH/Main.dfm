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
            OnClick = TFrameCalc1ButtonDivisionClick
          end
          inherited ButtonClear: TButton
            OnClick = TFrameCalc1ButtonClearClick
          end
          inherited ButtonBackspace: TButton
            OnClick = TFrameCalc1ButtonBackspaceClick
          end
        end
        inherited BPSub5: TPanel
          inherited ButtonSign: TButton
            OnClick = TFrameCalc1ButtonSignClick
          end
          inherited Button0: TButton
            OnClick = TFrameCalc1Button0Click
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
            OnClick = TFrameCalc1Button1Click
          end
          inherited Button2: TButton
            OnClick = TFrameCalc1Button2Click
          end
          inherited Button3: TButton
            OnClick = TFrameCalc1Button3Click
          end
          inherited ButtonAdd: TButton
            OnClick = TFrameCalc1ButtonAddClick
          end
        end
        inherited BPSub3: TPanel
          inherited Button4: TButton
            OnClick = TFrameCalc1Button4Click
          end
          inherited Button5: TButton
            OnClick = TFrameCalc1Button5Click
          end
          inherited Button6: TButton
            OnClick = TFrameCalc1Button6Click
          end
          inherited ButtonSub: TButton
            OnClick = TFrameCalc1ButtonSubClick
          end
        end
        inherited BPSub2: TPanel
          inherited Button7: TButton
            OnClick = TFrameCalc1Button7Click
          end
          inherited Button8: TButton
            OnClick = TFrameCalc1Button8Click
          end
          inherited Button9: TButton
            OnClick = TFrameCalc1Button9Click
          end
          inherited ButtonMultiple: TButton
            Caption = '*'
            OnClick = TFrameCalc1ButtonMultipleClick
          end
        end
      end
    end
  end
end
