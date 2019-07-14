object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 368
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TRibbon
    Left = 0
    Top = 0
    Width = 754
    Height = 143
    ActionManager = ActionManager1
    ApplicationMenu.Caption = #52572#44540#50640#50676#50612#48376#54028#51068
    ApplicationMenu.Menu = RibbonApplicationMenuBar1
    Caption = #47700#47784#51109
    QuickAccessToolbar.ActionBar = RibbonQuickAccessToolbar1
    Tabs = <
      item
        Caption = #54028#51068
        Page = RibbonPage1
      end
      item
        Caption = #44592#53440
        Page = RibbonPage2
      end
      item
        Caption = #45936#51060#53552#48288#51060#49828
        Page = RibbonPage3
      end>
    TabIndex = 2
    DesignSize = (
      754
      143)
    StyleName = 'Ribbon - Silver'
    object RibbonApplicationMenuBar1: TRibbonApplicationMenuBar
      ActionManager = ActionManager1
      OptionItems = <>
      RecentItems = <>
    end
    object RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar
      Left = 49
      Top = 1
      Width = 171
      Height = 24
      ActionManager = ActionManager1
    end
    object RibbonPage1: TRibbonPage
      Left = 0
      Top = 50
      Width = 753
      Height = 93
      Caption = #54028#51068
      Index = 0
      object RibbonGroup1: TRibbonGroup
        Left = 4
        Top = 3
        Width = 136
        Height = 86
        ActionManager = ActionManager1
        Caption = #50676#44592'/'#45803#44592
        GroupIndex = 0
      end
      object RibbonGroup2: TRibbonGroup
        Left = 142
        Top = 3
        Width = 124
        Height = 86
        ActionManager = ActionManager1
        Caption = #54200#51665
        GroupIndex = 1
      end
      object RibbonGroup3: TRibbonGroup
        Left = 268
        Top = 3
        Width = 108
        Height = 86
        ActionManager = ActionManager1
        Caption = #51221#47148
        GroupIndex = 2
      end
      object RibbonGroup4: TRibbonGroup
        Left = 378
        Top = 3
        Width = 253
        Height = 86
        ActionManager = ActionManager1
        Caption = #54256#53944
        GroupIndex = 3
        object RibbonSpinEdit1: TRibbonSpinEdit
          Left = 176
          Top = 2
          Width = 73
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
          OnChange = RibbonSpinEdit1Change
        end
      end
    end
    object RibbonPage2: TRibbonPage
      Left = 0
      Top = 50
      Width = 753
      Height = 93
      Caption = #44592#53440
      Index = 1
      object RibbonGroup5: TRibbonGroup
        Left = 4
        Top = 3
        Width = 103
        Height = 86
        ActionManager = ActionManager1
        Caption = #49828#53440#51068
        GroupIndex = 0
      end
      object RibbonGroup6: TRibbonGroup
        Left = 109
        Top = 3
        Width = 144
        Height = 86
        ActionManager = ActionManager1
        Caption = #44160#49353
        GroupIndex = 1
      end
      object RibbonGroup7: TRibbonGroup
        Left = 255
        Top = 3
        Width = 132
        Height = 86
        ActionManager = ActionManager1
        Caption = #44592#53440
        GroupIndex = 2
      end
    end
    object RibbonPage3: TRibbonPage
      Left = 0
      Top = 50
      Width = 753
      Height = 93
      Caption = #45936#51060#53552#48288#51060#49828
      Index = 2
      object RibbonGroup8: TRibbonGroup
        Left = 4
        Top = 3
        Width = 79
        Height = 86
        ActionManager = ActionManager1
        Caption = #44288#47532
        GroupIndex = 0
      end
      object RibbonGroup9: TRibbonGroup
        Left = 85
        Top = 3
        Width = 195
        Height = 86
        ActionManager = ActionManager1
        Caption = #49444#51221
        GroupIndex = 1
      end
      object RibbonGroup10: TRibbonGroup
        Left = 282
        Top = 3
        Width = 53
        Height = 86
        ActionManager = ActionManager1
        Caption = #51312#54924
        GroupIndex = 2
      end
      object RibbonGroup11: TRibbonGroup
        Left = 337
        Top = 3
        Width = 133
        Height = 86
        ActionManager = ActionManager1
        Caption = #48176#52824#52376#47532
        GroupIndex = 3
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 349
    Width = 754
    Height = 19
    Panels = <
      item
        Width = 350
      end
      item
        Width = 350
      end
      item
        Width = 50
      end>
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 143
    Width = 754
    Height = 206
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 25.064281622541730000
      end
      item
        Value = 72.914273811030530000
      end
      item
        Value = 2.021444566427745000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = CategoryPanelGroup1
        Row = 1
      end
      item
        Column = 1
        Control = RichEdit1
        Row = 1
      end>
    RowCollection = <
      item
        Value = 3.076781450259921000
      end
      item
        Value = 93.936052093177050000
      end
      item
        Value = 2.987166456563030000
      end>
    TabOrder = 2
    object CategoryPanelGroup1: TCategoryPanelGroup
      Left = 1
      Top = 7
      Width = 188
      Height = 191
      VertScrollBar.Tracking = True
      Align = alClient
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      TabOrder = 0
      object CategoryPanel4: TCategoryPanel
        Top = 600
        Caption = #47532#49828#53944#48624
        TabOrder = 0
        object ListView1: TListView
          Left = 0
          Top = 0
          Width = 167
          Height = 174
          Align = alClient
          Columns = <
            item
              Caption = #54016#51109#51060#47492
            end
            item
              Caption = #51064#50896#49688
            end>
          Items.ItemData = {
            05560000000200000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF000000
            00034DD638AED9B3023100300040FDBB1C00000000FFFFFFFFFFFFFFFF010000
            00FFFFFFFF000000000374C71CC2E0C202320030004004BC1CFFFFFFFF}
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
      object CategoryPanel3: TCategoryPanel
        Top = 400
        Caption = #53944#47532#48624
        TabOrder = 1
        object TreeView1: TTreeView
          Left = 0
          Top = 0
          Width = 167
          Height = 174
          Align = alClient
          Indent = 19
          TabOrder = 0
          OnClick = TreeView1Click
          Items.NodeData = {
            0302000000240000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            000200000001031DCD34BB34BB240000000000000000000000FFFFFFFFFFFFFF
            FF000000000000000000000000010344BE1CC1E4C22400000000000000000000
            00FFFFFFFFFFFFFFFF00000000000000000000000001034DD6F4BCE4C2240000
            000000000000000000FFFFFFFFFFFFFFFF000000000000000002000000010350
            AD21C780BD220000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            0000000000010290C714BC240000000000000000000000FFFFFFFFFFFFFFFF00
            00000000000000000000000103A8BA14BC7CC7}
        end
      end
      object CategoryPanel2: TCategoryPanel
        Top = 200
        Caption = #45944#54028#51060#44368#50977
        TabOrder = 2
        object ButtonGroup1: TButtonGroup
          Left = 0
          Top = 0
          Width = 167
          Height = 174
          Align = alClient
          ButtonOptions = [gboFullSize, gboShowCaptions]
          Items = <
            item
              Caption = #44592#48376#44368#50977
            end
            item
              Caption = #50952#46020#50864#54532#47196#44536#47000#48141
            end
            item
              Caption = #53804#54000#50612#44284#51221
            end
            item
              Caption = #48516#49328#52376#47532
            end
            item
              Caption = #47784#48148#51068#44284#51221
            end
            item
              Caption = #49324#47932#51064#53552#45367
            end>
          TabOrder = 0
        end
      end
      object CategoryPanel1: TCategoryPanel
        Top = 0
        Caption = #49660#54609#47785#47197
        TabOrder = 3
        object CategoryButtons1: TCategoryButtons
          Left = 0
          Top = 0
          Width = 167
          Height = 174
          Align = alClient
          ButtonFlow = cbfVertical
          ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions, boUsePlusMinus]
          Categories = <
            item
              Caption = #51032#47448
              Color = 16053492
              Collapsed = False
              Items = <
                item
                  Caption = #53076#53944#47448
                end
                item
                  Caption = #49836#47001#49828
                end
                item
                  Caption = #51088#53011#47448
                end
                item
                  Caption = #49492#52768
                end
                item
                  Caption = #50896#54588#49828
                end
                item
                  Caption = #49828#52964#53944
                end
                item
                  Caption = #51652#47448
                end
                item
                  Caption = #45768#53944
                end>
            end
            item
              Caption = #50501#49464#49436#47532
              Color = 15395839
              Collapsed = False
              Items = <>
            end
            item
              Caption = #49800#51592
              Color = 16771839
              Collapsed = False
              Items = <>
            end
            item
              Caption = #44032#51204#51228#54408
              Color = 16771818
              Collapsed = False
              Items = <>
            end
            item
              Caption = #44032#44396
              Color = 15400959
              Collapsed = False
              Items = <>
            end
            item
              Caption = #49885#54408
              Color = 16777194
              Collapsed = False
              Items = <>
            end
            item
              Caption = #46020#49436
              Color = 15395839
              Collapsed = False
              Items = <>
            end
            item
              Caption = #51020#48152
              Color = 15466474
              Collapsed = False
              Items = <>
            end>
          RegularButtonColor = clWhite
          SelectedButtonColor = 15132390
          TabOrder = 0
        end
      end
    end
    object RichEdit1: TRichEdit
      Left = 189
      Top = 7
      Width = 548
      Height = 191
      Align = alClient
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      ScrollBars = ssBoth
      TabOrder = 1
      Touch.GestureManager = GestureManager1
      Zoom = 100
      OnGesture = RichEdit1Gesture
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = New_Action
            Caption = '&New'
            ImageIndex = 17
          end
          item
            Action = FileExit1
            ImageIndex = 13
          end
          item
            Action = FileSaveAs1
            ImageIndex = 12
          end
          item
            Action = FileOpen1
            ImageIndex = 11
            ShortCut = 16463
            CommandProperties.ButtonSize = bsLarge
          end>
        ActionBar = RibbonGroup1
      end
      item
        Items = <
          item
            Action = EditDelete1
            ImageIndex = 4
            ShortCut = 46
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            ShortCut = 16474
          end
          item
            Action = EditSelectAll1
            ShortCut = 16449
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            ShortCut = 16451
          end
          item
            Action = EditCut1
            ImageIndex = 0
            ShortCut = 16472
          end>
        ActionBar = RibbonGroup2
      end
      item
        Items = <
          item
            Action = FormatRichEditAlignRight1
            CommandStyle = csRadioButton
            ImageIndex = 9
            CommandProperties.Width = -1
          end
          item
            Action = FormatRichEditAlignCenter1
            CommandStyle = csRadioButton
            ImageIndex = 10
            CommandProperties.Width = -1
          end
          item
            Action = FormatRichEditAlignLeft1
            CommandStyle = csRadioButton
            Default = True
            ImageIndex = 8
            CommandProperties.Width = -1
          end>
        ActionBar = RibbonGroup3
      end
      item
        Items = <
          item
            Action = FormatRichEditItalic1
            CommandStyle = csCheckBox
            ImageIndex = 6
            ShortCut = 16457
            CommandProperties.Width = -1
          end
          item
            Action = FormatRichEditUnderline1
            CommandStyle = csCheckBox
            ImageIndex = 7
            ShortCut = 16469
            CommandProperties.Width = -1
          end
          item
            Action = FormatRichEditBold1
            CommandStyle = csCheckBox
            ImageIndex = 5
            ShortCut = 16450
            CommandProperties.Width = -1
          end
          item
            Caption = #54256#53944#53356#44592'(&Z)'
            CommandStyle = csControl
            CommandProperties.Width = 150
            CommandProperties.ContainedControl = RibbonSpinEdit1
          end>
        ActionBar = RibbonGroup4
      end
      item
        Items = <
          item
            Action = Auric_Action
            Caption = 'Auric_'#49828#53440#51068'(&A)'
          end
          item
            Action = Silver_Action
            Caption = 'Silver'#49828#53440#51068'(&S)'
          end
          item
            Action = Window_Action
            Caption = #50952#46020#50864#49828#53440#51068'(&Z)'
          end>
        ActionBar = RibbonGroup5
      end
      item
        Items = <
          item
            Action = SearchFindFirst1
          end
          item
            Action = SearchReplace1
            ImageIndex = 16
          end
          item
            Action = SearchFindNext1
            ImageIndex = 15
            ShortCut = 114
          end
          item
            Action = SearchFind1
            ImageIndex = 14
            ShortCut = 16454
          end>
        ActionBar = RibbonGroup6
      end
      item
        Items = <
          item
            Action = Top_Action
            Caption = #54637#49345#52572#49345#50948'(&Z)'
            CommandStyle = csCheckBox
            ImageIndex = 19
            CommandProperties.Width = -1
          end
          item
            Action = About_Action
            Caption = '&About'
            ImageIndex = 18
            ShortCut = 117
          end
          item
            Action = About_dll_Action
            Caption = 'A&bout(dll)'
            ImageIndex = 18
          end>
        ActionBar = RibbonGroup7
      end
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Items = <
                  item
                    Action = FileOpen1
                    ImageIndex = 11
                    ShortCut = 16463
                  end
                  item
                    Action = FileSaveAs1
                    ImageIndex = 12
                  end
                  item
                    Action = FileExit1
                    ImageIndex = 13
                  end
                  item
                    Action = New_Action
                    Caption = '&New'
                    ImageIndex = 17
                  end>
                Caption = '&File'
                UsageCount = 1
              end
              item
                Caption = '&ActionClientItem1'
              end>
            Caption = '&ActionClientItem0'
            KeyTip = 'F'
          end>
        ActionBar = RibbonApplicationMenuBar1
        AutoSize = False
      end
      item
        Items = <
          item
            Action = EditDelete1
            ImageIndex = 4
            ShowCaption = False
            ShortCut = 46
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            ShowCaption = False
            ShortCut = 16474
          end
          item
            Action = EditSelectAll1
            ShowCaption = False
            ShortCut = 16449
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            ShowCaption = False
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            ShowCaption = False
            ShortCut = 16451
          end
          item
            Action = EditCut1
            ImageIndex = 0
            ShowCaption = False
            ShortCut = 16472
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = EditDelete1
            ImageIndex = 4
            ShowCaption = False
            ShortCut = 46
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            ShowCaption = False
            ShortCut = 16474
          end
          item
            Action = EditSelectAll1
            ShowCaption = False
            ShortCut = 16449
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            ShowCaption = False
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            ShowCaption = False
            ShortCut = 16451
          end
          item
            Action = EditCut1
            ImageIndex = 0
            ShowCaption = False
            ShortCut = 16472
          end>
        ActionBar = RibbonQuickAccessToolbar1
        AutoSize = False
      end
      item
        Items = <
          item
            Action = Insa_Action
            Caption = #49324#50896#44288#47532'(&Y)'
            ImageIndex = 21
          end
          item
            Action = Dept_Action
            Caption = #48512#49436#44288#47532'(&Z)'
            ImageIndex = 20
          end>
        ActionBar = RibbonGroup8
      end
      item
        Items = <
          item
            Action = update_Action
            Caption = #51312#51064#46108#53244#47532#50629#45936#51060#53944'('#52880#49772#49324#50857')(&Y)'
          end
          item
            Action = Trans_Action
            Caption = #53944#47004#51117#49496#52376#47532'(&Z)'
            ImageIndex = 22
          end>
        ActionBar = RibbonGroup9
      end
      item
        Items = <
          item
            Action = tree_Action
            Caption = #51312#51649#46020'(&Z)'
            ImageIndex = 23
          end>
        ActionBar = RibbonGroup10
      end
      item
        Items = <
          item
            Action = Batch_Action
            Caption = #48176#52824#52376#47532'('#45936#51060#53552#51060#46041')(&Z)'
            ImageIndex = 24
          end>
        ActionBar = RibbonGroup11
      end>
    Images = ImageList1
    Left = 656
    Top = 312
    StyleName = 'Ribbon - Silver'
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 4
      ShortCut = 46
    end
    object FormatRichEditBold1: TRichEditBold
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bold'
      Hint = 'Bold'
      ImageIndex = 5
      ShortCut = 16450
    end
    object FormatRichEditItalic1: TRichEditItalic
      Category = 'Format'
      AutoCheck = True
      Caption = '&Italic'
      Hint = 'Italic'
      ImageIndex = 6
      ShortCut = 16457
    end
    object FormatRichEditUnderline1: TRichEditUnderline
      Category = 'Format'
      AutoCheck = True
      Caption = '&Underline'
      Hint = 'Underline'
      ImageIndex = 7
      ShortCut = 16469
    end
    object FormatRichEditAlignLeft1: TRichEditAlignLeft
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Left'
      Hint = 'Align Left|Aligns text at the left indent'
      ImageIndex = 8
    end
    object FormatRichEditAlignRight1: TRichEditAlignRight
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Right'
      Hint = 'Align Right|Aligns text at the right indent'
      ImageIndex = 9
    end
    object FormatRichEditAlignCenter1: TRichEditAlignCenter
      Category = 'Format'
      AutoCheck = True
      Caption = '&Center'
      Hint = 'Center|Centers text between margins'
      ImageIndex = 10
    end
    object FileOpen1: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 11
      ShortCut = 16463
      BeforeExecute = FileOpen1BeforeExecute
      OnAccept = FileOpen1Accept
    end
    object FileSaveAs1: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As...'
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 12
      BeforeExecute = FileSaveAs1BeforeExecute
      OnAccept = FileSaveAs1Accept
    end
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 13
    end
    object SearchFind1: TSearchFind
      Category = 'Search'
      Caption = '&Find...'
      Hint = 'Find|Finds the specified text'
      ImageIndex = 14
      ShortCut = 16454
    end
    object SearchFindNext1: TSearchFindNext
      Category = 'Search'
      Caption = 'Find &Next'
      Hint = 'Find Next|Repeats the last find'
      ImageIndex = 15
      ShortCut = 114
    end
    object SearchReplace1: TSearchReplace
      Category = 'Search'
      Caption = '&Replace'
      Hint = 'Replace|Replaces specific text with different text'
      ImageIndex = 16
    end
    object SearchFindFirst1: TSearchFindFirst
      Category = 'Search'
      Caption = 'F&ind First'
      Hint = 'Find First|Finds the first occurance of specified text'
    end
    object New_Action: TAction
      Category = 'File'
      Caption = 'New'
      Hint = #47700#47784#51109#49352#47196#49884#51089#54616#44592
      ImageIndex = 17
      OnExecute = New_ActionExecute
    end
    object About_Action: TAction
      Category = #44592#53440
      Caption = 'About'
      Hint = #45824#54868#49345#51088#54364#49884
      ImageIndex = 18
      ShortCut = 117
      OnExecute = About_ActionExecute
    end
    object Top_Action: TAction
      Category = #44592#53440
      Caption = #54637#49345#52572#49345#50948
      Hint = #54868#47732#51012#47592#50948#47196'....'
      ImageIndex = 19
      OnExecute = Top_ActionExecute
    end
    object Window_Action: TAction
      Category = #49828#53440#51068
      Caption = #50952#46020#50864#49828#53440#51068
      Hint = #50952#46020#50864#49828#53440#51068
      OnExecute = Window_ActionExecute
    end
    object Silver_Action: TAction
      Category = #49828#53440#51068
      Caption = 'Silver'#49828#53440#51068
      Hint = 'Silver'#49828#53440#51068
      OnExecute = Silver_ActionExecute
    end
    object Auric_Action: TAction
      Category = #49828#53440#51068
      Caption = 'Auric_'#49828#53440#51068
      Hint = 'Auric_'#49828#53440#51068
      OnExecute = Auric_ActionExecute
    end
    object About_dll_Action: TAction
      Category = #44592#53440
      Caption = 'About(dll)'
      Hint = 'dll '#49884#50857
      ImageIndex = 18
      OnExecute = About_dll_ActionExecute
    end
    object Dept_Action: TAction
      Category = #44288#47532
      Caption = #48512#49436#44288#47532
      Hint = #48512#49436' '#46321#47197' '#49688#51221' '#49325#51228' '#51312#54924
      ImageIndex = 20
      OnExecute = Dept_ActionExecute
    end
    object Insa_Action: TAction
      Category = #44288#47532
      Caption = #49324#50896#44288#47532
      Hint = #49324#50896' '#46321#47197' '#49688#51221' '#49325#51228' '#51312#54924
      ImageIndex = 21
      OnExecute = Insa_ActionExecute
    end
    object Trans_Action: TAction
      Category = #49444#51221
      Caption = #53944#47004#51117#49496#52376#47532
      Hint = #52964#48120#53944'/'#47213#48177#52376#47532
      ImageIndex = 22
      OnExecute = Trans_ActionExecute
    end
    object update_Action: TAction
      Category = #49444#51221
      Caption = #51312#51064#46108#53244#47532#50629#45936#51060#53944'('#52880#49772#49324#50857')'
      OnExecute = update_ActionExecute
    end
    object tree_Action: TAction
      Category = #51312#54924
      Caption = #51312#51649#46020
      Hint = #48512#49436#48337#49324#50896#51312#54924
      ImageIndex = 23
      OnExecute = tree_ActionExecute
    end
    object Batch_Action: TAction
      Caption = #48176#52824#52376#47532'('#45936#51060#53552#51060#46041')'
      Hint = #50668#47084#44032#51648#53440#51077#51004#47196#45936#51060#53552#51060#46041
      ImageIndex = 24
      OnExecute = Batch_ActionExecute
    end
  end
  object ImageList1: TImageList
    Left = 616
    Top = 312
    Bitmap = {
      494C010114001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000080808000808080008080800000FFFF0000FFFF0080808000808080008080
      80008080800000FFFF0000FFFF00000000000000000000000000000080000000
      000000000000000000000000FF00000000000000FF0000000000000000000000
      0000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      00000000FF00C0C0C000FFFFFF0000000000FFFFFF00C0C0C0000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008080800000000000000000000000000080808000000000000000
      FF00C0C0C00000000000FFFFFF00FFFFFF00FFFFFF0000000000C0C0C0000000
      FF00000000008080800000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000080808000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000080808000000000000000000000000000000000000000FF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000080808000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000000000000000000000000000C0C0
      C0000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF00000000000000000080808000000000000000
      FF00C0C0C00000000000FFFFFF0000000000FFFFFF0000000000C0C0C0000000
      FF000000000080808000000000000000000000000000808080000000FF000000
      FF0000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      00000000FF00C0C0C000FFFFFF0000000000FFFFFF00C0C0C0000000FF000000
      000000000000000000000000000000000000808080000000FF00000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0008080
      800000000000000000000000000000000000000000000000000000000000C0C0
      C000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C00080808000808080000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000080808000C0C0
      C000C0C0C0000000000080808000000000008080800000000000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600868686008686
      8600868686008686860086868600868686008686860086868600FFFFFF00C0C0
      C00086868600C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600868686008686
      860086868600868686008686860086868600868686008686860086868600FFFF
      FF0086868600FFFFFF0086868600868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      00000000000000000000868686008686860086868600FFFFFF00FFFFFF00FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000000000000000000086868600FFFFFF00FFFFFF00FFFF
      FF008000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000800000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000080
      8000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00800000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000C0C0C0000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000800000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000C0C0C0000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000800000000000000000000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000086868600008080008686
      8600008080008686860080000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00000000000000000000000000FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000000000000663300006633
      0000663300006633000066330000000000000000000000000000000000000000
      0000000000006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000000000996600006666
      0000666600009966000000000000000000000000000000000000000000000000
      0000000000006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000FFFF
      FF00800000008000000080000000800000000000000000808000868686000080
      8000868686000080800080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000996600006666
      000099660000CC99660000000000000000000000000000000000000000000000
      0000000000006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000086868600008080008686
      8600008080008686860000808000868686000080800086868600008080008686
      8600008080000000000000000000000000000000000000000000996600009966
      0000CC99660066660000CC996600000000000000000000000000000000000000
      0000CC9966006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000808000868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600868686000000000000000000000000000000000000000000996600000000
      000000000000CC9966006666000066660000CC9966000000000000000000CC99
      660066660000CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000086868600868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC9966006666000066660000666600006666
      0000CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000080
      80000000000000FFFF00000000000000000000FFFF0000000000868686000080
      8000868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000B6E7FF7E8823FFFFB76B9001C007FFFF
      8427C003C007F9FFB76BE0038003F0FFCEE7E0038003F0FFFFFFE0038003E07F
      C7C7E0038003C07FC7C700018003843FC3878000C0071E3FC007E0070001FE1F
      C007E00F0001FF1FC007E00F0001FF8FC007E0278003FFC7C007C073C6C7FFE3
      F39F9E79FC7FFFF8F39F7EFEFFFFFFFFFF7E0000FFFFFFFFBFFF0000FFFFFE49
      F003000007C1FE49E003E00707C1FFFFE003E00707C1FFFFE003E0070101C7C7
      E003E0070001C7C72003E0070001C387E002E0070001C007E003E0078003C007
      E003E007C107C007E003FFFFC107C007E003F81FE38FC007FFFFF81FE38FF39F
      BF7DF81FE38FF39F7F7EFFFFFFFFF39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF001FC007C007C007000FFFFFFFFFFFFF0007C03FF807F83F0003
      FFFFFFFFFFFF0001C007C007C0070000FFFFFFFFFFFF001FC03FF807F01F001F
      FFFFFFFFFFFF001FC007C007C0078FF1FFFFFFFFFFFFFFF9C03FF807F83FFF75
      FFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      EFFDFFFFFFFFE00FC7FFFFFFFFFFFFFFC3FBF00F81FFF83FE3F7F8C7E3FFF39F
      F1E7F8C7F1FFF39FF8CFF8C7F8FFF39FFC1FF80FFC7FF39FFE3FF8C7FE3FF39F
      FC1FF8C7FF1FF39FF8CFF8C7FF8FF39FE1E7F00FFF03E10FC3F3FFFFFFFFFFFF
      C7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFC00FFFF
      F6CFFE008000FFFFF6B7FE000000FFFFF6B7FE000000FFFFF8B780000000FFFF
      FE8F80000001C1FBFE3F80000003C3FBFF7F80000003C3FBFE3F80010003C1F3
      FEBF80030003D863FC9F80070FC3FE07FDDF807F0003FFFFFDDF80FF8007FFFF
      FDDF81FFF87FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList1
    Left = 568
    Top = 311
    object New1: TMenuItem
      Action = New_Action
    end
    object Open1: TMenuItem
      Action = FileOpen1
    end
    object SaveAs1: TMenuItem
      Action = FileSaveAs1
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object About1: TMenuItem
      Action = About_Action
    end
    object N2: TMenuItem
      Action = Top_Action
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Exit1: TMenuItem
      Action = FileExit1
    end
  end
  object TrayIcon1: TTrayIcon
    Animate = True
    Hint = #47700#47784#51109
    Icons = ImageList1
    PopupMenu = PopupMenu1
    Visible = True
    Left = 376
    Top = 303
  end
  object JumpList1: TJumpList
    AutoRefresh = True
    Enabled = True
    CustomCategories = <>
    TaskList = <
      item
        Icon = 
          'C:\Program Files (x86)\Embarcadero\Studio\20.0\Images\Icons\FACT' +
          'ORY.ICO'
        Path = 'D:\201907_'#45944#54028#51060#44368#50977'\'#44592#48376#53580#49828#53944'\Win32\Debug\test.exe'
        FriendlyName = #53580#49828#53944#54532#47196#44536#47016
      end>
    Left = 328
    Top = 303
  end
  object Taskbar1: TTaskbar
    TaskBarButtons = <
      item
        Action = FileOpen1
        Hint = 'Open|Opens an existing file'
        Icon.Data = {
          0000010001001010200000000000680400001600000028000000100000002000
          0000010020000000000000040000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000080800000808000008080000080800000808000008080000080
          8000008080000080800000000000000000000000000000000000000000000000
          000000FFFF000000000000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000FFFFFF0000FFFF0000000000008080000080800000808000008080000080
          8000008080000080800000808000008080000000000000000000000000000000
          000000FFFF00FFFFFF0000FFFF00000000000080800000808000008080000080
          8000008080000080800000808000008080000080800000000000000000000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000000000000000000000000000000000000000000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000000000000000000000000000000000000000000000
          000000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          0000FFFF0000001F0000000F000000070000000300000001000000000000001F
          0000001F0000001F00008FF10000FFF90000FF750000FF8F0000FFFF0000}
      end
      item
        Action = FileSaveAs1
        Hint = 'Save As|Saves the active file with a new name'
        Icon.Data = {
          0000010001001010200000000000680400001600000028000000100000002000
          0000010020000000000000040000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000008080000080800000000000000000000000
          000000000000C0C0C00000000000008080000000000000000000000000000000
          0000000000000000000000000000008080000080800000000000000000000000
          000000000000C0C0C00000000000008080000000000000000000000000000000
          0000000000000000000000000000008080000080800000000000000000000000
          0000000000000000000000000000008080000000000000000000000000000000
          0000000000000000000000000000008080000080800000808000008080000080
          8000008080000080800000808000008080000000000000000000000000000000
          0000000000000000000000000000008080000080800000000000000000000000
          0000000000000000000000808000008080000000000000000000000000000000
          00000000000000000000000000000080800000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C00000000000008080000000000000000000000000000000
          00000000000000000000000000000080800000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C00000000000008080000000000000000000000000000000
          00000000000000000000000000000080800000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
          00000000000000000000000000000080800000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C00000000000C0C0C0000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF7E
          0000BFFF0000F0030000E0030000E0030000E0030000E003000020030000E002
          0000E0030000E0030000E0030000E0030000FFFF0000BF7D00007F7E0000}
      end
      item
        Action = New_Action
        Hint = #47700#47784#51109#49352#47196#49884#51089#54616#44592
        Icon.Data = {
          0000010001001010200000000000680400001600000028000000100000002000
          0000010020000000000000040000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000FF
          FF0000000000000000000000000000000000000000000000000000FFFF000000
          000000FFFF0000FFFF000000000080808000808080008080800000FFFF0000FF
          FF008080800080808000808080008080800000FFFF0000FFFF00000000000000
          00000000000000FFFF0000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000FFFF0000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000008080800000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000008080800000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000008080800000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000000080808000000000000000000000FF
          FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF00000000000000
          000000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000FFFFFF000000000000FFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000000000000000000000FFFF0000FFFF000000000000000000000000000000
          00000000000000FFFF0000000000000000000000000000000000000000000000
          000000000000000000000000000000FFFF0000FFFF0000000000000000000000
          000000FFFF0000FFFF000000000000000000000000000000000000FFFF0000FF
          FF000000000000000000000000000000000000FFFF0000FFFF000000000000FF
          FF0000000000000000000000000000000000000000000000000000FFFF000000
          000000000000000000000000000000000000000000000000000000FFFF00FF7E
          000090010000C0030000E0030000E0030000E0030000E0030000000100008000
          0000E0070000E00F0000E00F0000E0270000C07300009E7900007EFE0000}
      end
      item
        Action = FileExit1
        Hint = 'Exit|Quits the application'
        Icon.Data = {
          0000010001001010200000000000680400001600000028000000100000002000
          0000010020000000000000040000000000000000000000000000000000008686
          8600868686008686860086868600868686008686860086868600868686008686
          860086868600FFFFFF00C0C0C00086868600C0C0C000FFFFFF00C0C0C0008686
          8600868686008686860086868600868686008686860086868600868686008686
          86008686860086868600FFFFFF0086868600FFFFFF0086868600868686008000
          0000800000008000000080000000000000000000000086868600868686008686
          8600FFFFFF00FFFFFF00FFFFFF00800000008000000080000000800000000000
          0000000000000000000080000000FF0000008000000000000000000000008686
          8600FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
          000000000000000000008000000080000000FF0000008000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
          0000000000000000000080000000FF00000080000000FF00000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
          000000000000000000008000000080000000FF0000008000000000000000FFFF
          FF00FFFF0000FFFFFF00FFFF0000800000000000000000000000000000000000
          0000000000000000000080000000FF00000080000000FF00000000000000FFFF
          0000FFFFFF00FFFF0000FFFFFF00800000000000000000000000000000000000
          000000000000000000008000000080000000FF0000008000000000000000FFFF
          FF00FFFF0000FFFFFF00FFFF0000800000000000000000000000000000000000
          0000000000000000000080000000FF00000080000000FF00000000000000FFFF
          0000FFFFFF00FFFF0000FFFFFF00800000000000000000000000000000000000
          0000000000000000000080000000800000008000000080000000800000008000
          0000800000008000000080000000800000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000800000008000000080
          0000008000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000E0070000E0070000E0070000E0070000E0070000E007
          0000E0070000E0070000FFFF0000F81F0000F81F0000F81F0000FFFF0000}
      end>
    TabProperties = []
    Left = 272
    Top = 303
  end
  object GestureManager1: TGestureManager
    Left = 432
    Top = 303
    CustomGestures = <
      item
        Deviation = 26
        ErrorMargin = 30
        GestureID = -1
        Name = 'mys'
        Options = 9
        Points = {
          0194000000E7001E00E4001A00DF001700DA001400D5001000D1000C00CB0009
          00C3000600BC000300B6000200B2000200A9000100A20001009B000000960000
          008F0000008B000000840000007B00000076000100700003006A000500640007
          005E00080058000C0050000F004C00120048001400440018003D001B0038001F
          0034002400300029002D0030002A00380027003C002700400025004400250048
          0025004C00290051002B0055002F00590033005D00390063004000680044006B
          004A0070004E00730053007700590079005D007B0066007F006C008000700081
          00760082007C00830081008500860085008A00860090008600950087009C0088
          00A1008900A7008A00AB008A00B1008B00B5008D00BB008E00BF008E00C40090
          00C8009200CC009300D0009500D5009900DA009C00DF009F00E300A100E700A4
          00EB00A600ED00AA00F000AE00F200B200F400B700F600BB00F600BF00F600C3
          00F600C900F600CF00F600D400F600D800F500DD00F300E100F000E700EC00EC
          00EA00F000E700F600E100FA00DD00FD00D8000001D3000301CE000601CA0007
          01C5000A01C0000C01BC000E01B7001001B2001301AC001501A60017019F0019
          0198001C0191001D0188001F01820021017D00220178002301740023016E0024
          016A002401620024015D00240156002401500024014A002401440024013E0024
          013A00240136002301310020012B001D0126001A01220017011F0012011B000B
          0119000501160001011300FB000F00F6000F00F2000B00EC000900E8000700E2
          000500DC000300D7000200D3000100CE000000CA00}
      end
      item
        Deviation = 20
        ErrorMargin = 20
        GestureID = -2
        Name = 'myq'
        Options = 9
        Points = {
          0144000000000045000000400001003C00030038000300320003002D00040028
          00040024000500200005001A00060016000600120007000D000A0008000E0004
          0012000200170001001C00000020000000240000002B00010031000400370007
          0040000A0047000E004F001000540012005A0014005E00140063001600670018
          006B001C006D0021007100260073002D0075003100780039007A003F007C0045
          007D004C007D0054007D005B007D0062007C0069007A006F007800750076007C
          0073008200700088006C008E00690095006600990062009F005F00A4005900AA
          005200AF004C00B5004500BB003E00BF003500C7003000CC002C00D1002800D8
          002400DD002300E3002300E9002500ED002A00F100}
      end>
    GestureData = <
      item
        Control = RichEdit1
        Collection = <
          item
            Action = FileOpen1
            GestureID = sgiChevronLeft
          end
          item
            Action = FileSaveAs1
            GestureID = sgiChevronRight
          end
          item
            GestureID = sgiTriangle
          end
          item
            GestureID = sgiSquare
          end
          item
            GestureID = sgiCircle
          end
          item
            Action = FileExit1
            GestureID = -1
          end>
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 512
    Top = 303
  end
end
