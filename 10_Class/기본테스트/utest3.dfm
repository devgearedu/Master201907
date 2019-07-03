object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 258
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Yes'
    ModalResult = 6
    TabOrder = 0
  end
  object Button2: TButton
    Left = 104
    Top = 224
    Width = 75
    Height = 25
    Caption = 'No'
    ModalResult = 7
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 256
    Top = 225
    Width = 75
    Height = 25
    Kind = bkYes
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 339
    Top = 225
    Width = 70
    Height = 25
    Kind = bkNo
    NumGlyphs = 2
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 16
    Width = 218
    Height = 21
    Date = 43649.000000000000000000
    Time = 0.677309398146462600
    ParseInput = True
    TabOrder = 4
    OnUserInput = DateTimePicker1UserInput
  end
  object MonthCalendar1: TMonthCalendar
    Left = 24
    Top = 56
    Width = 218
    Height = 160
    Date = 43649.000000000000000000
    FirstDayOfWeek = dowMonday
    TabOrder = 5
  end
end
