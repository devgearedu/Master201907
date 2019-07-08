object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 417
  Height = 355
  TabOrder = 0
  object DBChart1: TDBChart
    Left = 14
    Top = 16
    Width = 400
    Height = 265
    BackWall.Pen.Width = 7
    BottomWall.Color = clNavy
    BottomWall.Pen.Width = 6
    Title.Text.Strings = (
      #49324#50896#48324' '#44553#50668#54788#54889)
    Frame.Width = 7
    Legend.Symbol.Pen.Color = clAqua
    Legend.Symbol.Pen.Width = 5
    Pages.MaxPointsPerPage = 3
    View3DOptions.Zoom = 93
    BevelInner = bvLowered
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      17
      15
      17)
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      BarBrush.Gradient.EndColor = clRed
      BarPen.Width = 2
      Marks.Margins.Right = 18
      SeriesColor = clRed
      BarWidthPercent = 85
      Gradient.EndColor = clRed
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 16
    Top = 288
    Width = 75
    Height = 25
    Caption = #52376#51020
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 97
    Top = 287
    Width = 75
    Height = 25
    Caption = #51060#51204
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 319
    Width = 75
    Height = 25
    Caption = #45796#51020
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 97
    Top = 318
    Width = 75
    Height = 25
    Caption = #47592#45149
    TabOrder = 4
    OnClick = Button4Click
  end
  object ColorGrid1: TColorGrid
    Left = 186
    Top = 293
    Width = 108
    Height = 48
    TabOrder = 5
    OnChange = ColorGrid1Change
  end
  object CheckBox1: TCheckBox
    Left = 300
    Top = 291
    Width = 97
    Height = 17
    Caption = '3D'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = CheckBox1Click
  end
  object ComboBox1: TComboBox
    Left = 300
    Top = 314
    Width = 100
    Height = 21
    ItemIndex = 1
    TabOrder = 7
    Text = '100'
    OnChange = ComboBox1Change
    Items.Strings = (
      '75'
      '100'
      '125')
  end
end
