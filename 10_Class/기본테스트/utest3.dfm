object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 258
  ClientWidth = 423
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
    Left = 8
    Top = 20
    Width = 218
    Height = 32
    Date = 43649.000000000000000000
    Time = 0.677309398146462600
    ParseInput = True
    TabOrder = 4
    OnUserInput = DateTimePicker1UserInput
  end
  object MonthCalendar1: TMonthCalendar
    Left = 8
    Top = 58
    Width = 218
    Height = 160
    Date = 43649.000000000000000000
    FirstDayOfWeek = dowMonday
    TabOrder = 5
  end
  object DatePicker1: TDatePicker
    Left = 265
    Top = 8
    Date = 43650.000000000000000000
    DateFormat = 'yyyy/MM/dd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 6
  end
  object TimePicker1: TTimePicker
    Left = 265
    Top = 46
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 7
    Time = 43650.396689039350000000
    TimeFormat = 'AMPM h:mm'
  end
  object CalendarPicker1: TCalendarPicker
    Left = 265
    Top = 84
    Width = 150
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    DisplayMode = dmYear
    FirstDayOfWeek = dwMonday
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    TextHint = 'select a date'
  end
  object CalendarView1: TCalendarView
    Left = 256
    Top = 122
    Width = 159
    Height = 97
    Date = 43650.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    HeaderInfo.DaysOfWeekFont.Color = clWindowText
    HeaderInfo.DaysOfWeekFont.Height = -13
    HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    HeaderInfo.DaysOfWeekFont.Style = []
    HeaderInfo.Font.Charset = DEFAULT_CHARSET
    HeaderInfo.Font.Color = clWindowText
    HeaderInfo.Font.Height = -20
    HeaderInfo.Font.Name = 'Segoe UI'
    HeaderInfo.Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
end
