object FrameCalc: TFrameCalc
  Left = 0
  Top = 0
  Width = 360
  Height = 400
  TabOrder = 0
  object ExpressionPanel: TPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 50
    Align = alTop
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BufferPanel: TPanel
    Left = 0
    Top = 50
    Width = 360
    Height = 50
    Align = alTop
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ButtonsPanel: TPanel
    Left = 0
    Top = 100
    Width = 360
    Height = 300
    Align = alClient
    TabOrder = 2
    object BPSub1: TPanel
      Left = 1
      Top = 1
      Width = 358
      Height = 60
      Align = alTop
      TabOrder = 0
      object ButtonDivision: TButton
        Left = 265
        Top = 1
        Width = 90
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '/'
        TabOrder = 0
      end
      object ButtonClear: TButton
        Left = 1
        Top = 1
        Width = 176
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = 'Clear'
        TabOrder = 1
      end
      object ButtonBackspace: TButton
        Left = 177
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = 'backspace'
        TabOrder = 2
      end
    end
    object BPSub5: TPanel
      Left = 1
      Top = 241
      Width = 358
      Height = 60
      Align = alTop
      TabOrder = 1
      object ButtonSign: TButton
        Left = 1
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '+/-'
        TabOrder = 0
      end
      object Button0: TButton
        Left = 89
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '0'
        TabOrder = 1
      end
      object ButtonFloatingPoint: TButton
        Left = 177
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '.'
        TabOrder = 2
      end
      object ButtonReturn: TButton
        Left = 265
        Top = 1
        Width = 90
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '='
        TabOrder = 3
      end
    end
    object BPSub4: TPanel
      Left = 1
      Top = 181
      Width = 358
      Height = 60
      Align = alTop
      TabOrder = 2
      object Button1: TButton
        Left = 1
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '1'
        TabOrder = 0
      end
      object Button2: TButton
        Left = 89
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '2'
        TabOrder = 1
      end
      object Button3: TButton
        Left = 177
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '3'
        TabOrder = 2
      end
      object ButtonAdd: TButton
        Left = 265
        Top = 1
        Width = 90
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '+'
        TabOrder = 3
      end
    end
    object BPSub3: TPanel
      Left = 1
      Top = 121
      Width = 358
      Height = 60
      Align = alTop
      TabOrder = 3
      object Button4: TButton
        Left = 1
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '4'
        TabOrder = 0
      end
      object Button5: TButton
        Left = 89
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '5'
        TabOrder = 1
      end
      object Button6: TButton
        Left = 177
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '6'
        TabOrder = 2
      end
      object ButtonSub: TButton
        Left = 265
        Top = 1
        Width = 90
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = #12641
        TabOrder = 3
      end
    end
    object BPSub2: TPanel
      Left = 1
      Top = 61
      Width = 358
      Height = 60
      Align = alTop
      TabOrder = 4
      object Button7: TButton
        Left = 1
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '7'
        TabOrder = 0
      end
      object Button8: TButton
        Left = 89
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '8'
        TabOrder = 1
      end
      object Button9: TButton
        Left = 177
        Top = 1
        Width = 88
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = '9'
        TabOrder = 2
      end
      object ButtonMultiple: TButton
        Left = 265
        Top = 1
        Width = 90
        Height = 58
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = 'X'
        TabOrder = 3
      end
    end
  end
end