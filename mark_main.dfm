object MainForm: TMainForm
  Left = 304
  Top = 116
  Width = 952
  Height = 639
  Caption = #1052#1086#1076#1091#1083#1100' '#1075#1088#1091#1087#1087#1099' '#1084#1072#1088#1082#1077#1090#1080#1085#1075#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 574
    Width = 944
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 300
      end
      item
        Width = 200
      end>
    SimplePanel = False
  end
  object AbiturientsTabSheet: TPageControl
    Left = 0
    Top = 0
    Width = 944
    Height = 574
    ActivePage = ArchiveTabSheet
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    TabPosition = tpBottom
    object ArchiveTabSheet: TTabSheet
      Caption = #1040#1073#1080#1090#1091#1088#1080#1077#1085#1090#1099
      ImageIndex = 1
      object CandidateGrid: TDBGrid
        Left = 0
        Top = 104
        Width = 936
        Height = 444
        Align = alClient
        DataSource = AStudentsDataSource
        DefaultDrawing = False
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = AbiturientsPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = CandidateGridDrawColumnCell
        OnDblClick = CandidateGridDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'av_Serial'
            Title.Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_Name'
            Title.Caption = #1060#1048#1054
            Width = 179
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_HasCourse'
            Title.Caption = #1050#1091#1088#1089#1099
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_SpComment'
            Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_mball'
            Title.Caption = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_Ex2'
            Title.Caption = #1056#1091#1089#1089#1082#1080#1081
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_Ex1'
            Title.Caption = #1052#1072#1090#1077#1084#1072#1090#1080#1082#1072
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_GroupBall'
            Title.Caption = #1054#1073#1097#1080#1081' '#1073#1072#1083#1083
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_Comment'
            Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Width = 260
            Visible = True
          end>
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 936
        Height = 104
        ButtonHeight = 98
        Caption = 'ToolBar1'
        TabOrder = 1
        object GroupBox: TGroupBox
          Left = 0
          Top = 2
          Width = 937
          Height = 98
          Align = alClient
          Caption = #1060#1080#1083#1100#1090#1088
          TabOrder = 0
          object Bevel1: TBevel
            Left = 3
            Top = 14
            Width = 449
            Height = 55
          end
          object SpecComboBox: TComboBox
            Left = 116
            Top = 21
            Width = 108
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            OnChange = FilterRecords
            Items.Strings = (
              #1042#1089#1077)
          end
          object SpecCheckBox: TCheckBox
            Left = 8
            Top = 23
            Width = 97
            Height = 17
            Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
            TabOrder = 1
            OnClick = FilterRecords
          end
          object MBallCheckBox: TCheckBox
            Left = 464
            Top = 21
            Width = 92
            Height = 17
            Caption = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
            TabOrder = 2
            OnClick = FilterRecords
          end
          object GroupBallCheckBox: TCheckBox
            Left = 464
            Top = 45
            Width = 83
            Height = 17
            Caption = #1054#1073#1097#1080#1081' '#1073#1072#1083#1083
            TabOrder = 3
            OnClick = FilterRecords
          end
          object MBallEdit: TEdit
            Left = 555
            Top = 18
            Width = 54
            Height = 21
            TabOrder = 4
            OnChange = FilterRecords
          end
          object GroupBallEdit: TEdit
            Left = 555
            Top = 42
            Width = 54
            Height = 21
            TabOrder = 5
            OnChange = FilterRecords
          end
          object BaseCheckBox: TCheckBox
            Left = 228
            Top = 23
            Width = 65
            Height = 17
            Caption = #1053#1072' '#1073#1072#1079#1077
            TabOrder = 6
            OnClick = FilterRecords
          end
          object BaseComboBox: TComboBox
            Left = 295
            Top = 20
            Width = 149
            Height = 21
            ItemHeight = 13
            TabOrder = 7
            OnChange = FilterRecords
            Items.Strings = (
              #1042#1089#1077)
          end
          object ZaochCheckBox: TCheckBox
            Left = 7
            Top = 47
            Width = 105
            Height = 17
            Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
            TabOrder = 8
            OnClick = FilterRecords
          end
          object FNameCheckBox: TCheckBox
            Left = 615
            Top = 45
            Width = 73
            Height = 17
            Caption = #1060#1072#1084#1080#1083#1080#1103
            TabOrder = 9
            OnClick = FilterRecords
          end
          object FNameEdit: TEdit
            Left = 688
            Top = 42
            Width = 121
            Height = 21
            TabOrder = 10
            OnChange = FilterRecords
          end
          object FormComboBox: TComboBox
            Left = 116
            Top = 43
            Width = 108
            Height = 21
            ItemHeight = 13
            TabOrder = 11
            OnChange = FilterRecords
            Items.Strings = (
              #1042#1089#1077
              #1086#1095#1085#1072#1103
              #1079#1072#1086#1095#1085#1072#1103)
          end
          object CommercialCheckBox: TCheckBox
            Left = 228
            Top = 47
            Width = 129
            Height = 17
            Caption = #1060#1080#1085#1072#1085#1089#1080#1088#1086#1074#1072#1085#1080#1077
            TabOrder = 12
            OnClick = FilterRecords
          end
          object CommercialComboBox: TComboBox
            Left = 344
            Top = 44
            Width = 101
            Height = 21
            ItemHeight = 13
            TabOrder = 13
            OnChange = FilterRecords
            Items.Strings = (
              #1042#1089#1077
              #1073#1102#1076#1078#1077#1090
              #1082#1086#1085#1090#1088#1072#1082#1090)
          end
          object AddCheckBox: TCheckBox
            Left = 615
            Top = 21
            Width = 150
            Height = 17
            Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1085#1072#1073#1086#1088
            TabOrder = 14
          end
          object isegeCheckBox: TCheckBox
            Left = 7
            Top = 75
            Width = 66
            Height = 17
            Caption = #1069#1082#1079#1072#1084#1077#1085
            TabOrder = 15
            OnClick = FilterRecords
          end
          object EgeComboBox: TComboBox
            Left = 116
            Top = 72
            Width = 109
            Height = 21
            ItemHeight = 13
            TabOrder = 16
            Text = #1058#1077#1089#1090#1099
            OnChange = FilterRecords
            Items.Strings = (
              #1058#1077#1089#1090#1099
              #1043#1048#1040
              #1045#1043#1069)
          end
          object ParentLessCheckBox: TCheckBox
            Left = 229
            Top = 74
            Width = 97
            Height = 17
            Caption = #1057#1080#1088#1086#1090#1072
            TabOrder = 17
            OnClick = FilterRecords
          end
          object InvalidCheckBox: TCheckBox
            Left = 344
            Top = 74
            Width = 97
            Height = 17
            Caption = #1048#1085#1074#1072#1083#1080#1076
            TabOrder = 18
            OnClick = FilterRecords
          end
        end
      end
    end
    object FormedTabSheet: TTabSheet
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1085#1099#1077
      object Splitter1: TSplitter
        Left = 161
        Top = 51
        Width = 4
        Height = 497
        Cursor = crHSplit
      end
      object GroupGrid: TDBGrid
        Left = 0
        Top = 51
        Width = 161
        Height = 497
        Align = alLeft
        DataSource = FGroupDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = FGroupPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = EditGroupActionExecute
        Columns = <
          item
            Expanded = False
            FieldName = 'gr_Name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 124
            Visible = True
          end>
      end
      object StudentGrid: TDBGrid
        Left = 165
        Top = 51
        Width = 771
        Height = 497
        Align = alClient
        DataSource = FStudentsDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = FStudentsPopupMenu
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'av_FName'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 228
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_MName'
            Title.Caption = #1048#1084#1103
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_LName'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 209
            Visible = True
          end>
      end
      object ToolBar3: TToolBar
        Left = 0
        Top = 0
        Width = 936
        Height = 51
        ButtonHeight = 45
        Caption = 'ToolBar3'
        TabOrder = 2
        object GroupBox2: TGroupBox
          Left = 0
          Top = 2
          Width = 937
          Height = 45
          Align = alClient
          Caption = #1060#1080#1083#1100#1090#1088
          TabOrder = 0
          object StInYearCheckBox: TCheckBox
            Left = 4
            Top = 15
            Width = 163
            Height = 22
            Caption = #1043#1086#1076' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
            TabOrder = 0
            OnClick = FilterStudents
          end
          object StInYearEdit: TSpinEdit
            Left = 167
            Top = 15
            Width = 121
            Height = 22
            MaxValue = 2090
            MinValue = 1990
            TabOrder = 1
            Value = 1990
            OnChange = FilterStudents
          end
        end
      end
    end
    object ArchivaTabSheet: TTabSheet
      Caption = #1040#1088#1093#1080#1074
      ImageIndex = 2
      object ArGrid: TDBGrid
        Left = 0
        Top = 80
        Width = 936
        Height = 468
        Align = alClient
        DataSource = ArDataSource
        DefaultDrawing = False
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = ArPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = ArGridDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'av_Serial'
            Title.Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_Name'
            Title.Caption = #1060#1048#1054
            Width = 179
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_HasCourse'
            Title.Caption = #1050#1091#1088#1089#1099
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_SpComment'
            Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_mball'
            Title.Caption = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_Ex2'
            Title.Caption = #1056#1091#1089#1089#1082#1080#1081
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_Ex1'
            Title.Caption = #1052#1072#1090#1077#1084#1072#1090#1080#1082#1072
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_GroupBall'
            Title.Caption = #1054#1073#1097#1080#1081' '#1073#1072#1083#1083
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'av_Comment'
            Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Width = 260
            Visible = True
          end>
      end
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 936
        Height = 80
        ButtonHeight = 73
        Caption = 'ToolBar1'
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 0
          Top = 2
          Width = 937
          Height = 73
          Align = alClient
          Caption = #1060#1080#1083#1100#1090#1088
          TabOrder = 0
          object Bevel2: TBevel
            Left = 3
            Top = 14
            Width = 449
            Height = 55
          end
          object ComboBox1: TComboBox
            Left = 116
            Top = 21
            Width = 108
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = #1042#1089#1077
            Items.Strings = (
              #1042#1089#1077)
          end
          object CheckBox1: TCheckBox
            Left = 8
            Top = 23
            Width = 97
            Height = 17
            Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
            TabOrder = 1
          end
          object CheckBox2: TCheckBox
            Left = 464
            Top = 21
            Width = 92
            Height = 17
            Caption = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
            TabOrder = 2
          end
          object CheckBox3: TCheckBox
            Left = 464
            Top = 45
            Width = 83
            Height = 17
            Caption = #1054#1073#1097#1080#1081' '#1073#1072#1083#1083
            TabOrder = 3
          end
          object Edit1: TEdit
            Left = 555
            Top = 18
            Width = 54
            Height = 21
            TabOrder = 4
          end
          object Edit2: TEdit
            Left = 555
            Top = 42
            Width = 54
            Height = 21
            TabOrder = 5
          end
          object CheckBox4: TCheckBox
            Left = 228
            Top = 23
            Width = 65
            Height = 17
            Caption = #1053#1072' '#1073#1072#1079#1077
            TabOrder = 6
          end
          object ComboBox2: TComboBox
            Left = 295
            Top = 20
            Width = 149
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 7
            Text = #1042#1089#1077
            Items.Strings = (
              #1042#1089#1077)
          end
          object CheckBox5: TCheckBox
            Left = 7
            Top = 47
            Width = 105
            Height = 17
            Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
            TabOrder = 8
          end
          object CheckBox6: TCheckBox
            Left = 615
            Top = 45
            Width = 73
            Height = 17
            Caption = #1060#1072#1084#1080#1083#1080#1103
            TabOrder = 9
            OnClick = FilterRecords
          end
          object Edit3: TEdit
            Left = 688
            Top = 42
            Width = 121
            Height = 21
            TabOrder = 10
          end
          object ComboBox3: TComboBox
            Left = 116
            Top = 43
            Width = 108
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 11
            Text = #1042#1089#1077
            Items.Strings = (
              #1042#1089#1077
              #1054#1095#1085#1072#1103
              #1047#1072#1086#1095#1085#1072#1103)
          end
          object CheckBox7: TCheckBox
            Left = 228
            Top = 47
            Width = 129
            Height = 17
            Caption = #1060#1080#1085#1072#1085#1089#1080#1088#1086#1074#1072#1085#1080#1077
            TabOrder = 12
          end
          object ComboBox4: TComboBox
            Left = 344
            Top = 44
            Width = 101
            Height = 21
            ItemHeight = 0
            TabOrder = 13
            Text = #1042#1089#1077
            Items.Strings = (
              #1042#1089#1077
              #1041#1102#1076#1078#1077#1090
              #1050#1086#1085#1090#1088#1072#1082#1090)
          end
          object CheckBox8: TCheckBox
            Left = 615
            Top = 21
            Width = 150
            Height = 17
            Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1085#1072#1073#1086#1088
            TabOrder = 14
          end
          object CheckBox9: TCheckBox
            Left = 767
            Top = 19
            Width = 66
            Height = 17
            Caption = #1069#1082#1079#1072#1084#1077#1085
            TabOrder = 15
          end
          object ComboBox5: TComboBox
            Left = 835
            Top = 16
            Width = 95
            Height = 21
            ItemHeight = 0
            TabOrder = 16
            Text = #1058#1077#1089#1090#1099
            Items.Strings = (
              #1058#1077#1089#1090#1099
              #1043#1048#1040
              #1045#1043#1069)
          end
        end
      end
    end
  end
  object FGroupQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Groups;')
    Left = 32
    Top = 440
  end
  object FStudentsQuery: TADOQuery
    Connection = Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM AbiturientsView;')
    Left = 184
    Top = 440
  end
  object AStudentsQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM AbiturientsView')
    Left = 448
    Top = 440
  end
  object FGroupDataSource: TDataSource
    DataSet = FGroupQuery
    OnDataChange = FGroupDataSourceDataChange
    Left = 32
    Top = 408
  end
  object FStudentsDataSource: TDataSource
    DataSet = FStudentsQuery
    OnDataChange = FStudentsDataSourceDataChange
    Left = 184
    Top = 408
  end
  object AStudentsDataSource: TDataSource
    DataSet = AStudentsQuery
    OnDataChange = AStudentsDataSourceDataChange
    Left = 448
    Top = 408
  end
  object Connection: TADOConnection
    ConnectionString = 'FILE NAME=W:\marketing\connection.udl'
    Provider = 'SQLOLEDB.1'
    Left = 72
    Top = 496
  end
  object Command: TADOCommand
    Connection = Connection
    Parameters = <>
    Left = 104
    Top = 496
  end
  object MainMenu: TMainMenu
    Left = 16
    Top = 128
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object CastingFormAction1: TMenuItem
        Action = CastingFormAction
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1040#1073#1080#1090#1091#1088#1080#1077#1085#1090#1099
      object N4: TMenuItem
        Action = AddAbiturientAction
      end
      object N5: TMenuItem
        Action = EditAbiturientAction
      end
      object N6: TMenuItem
        Action = DelAbiturientAction
      end
    end
    object N14: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object CompReportItem: TMenuItem
        Caption = #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
        Enabled = False
        OnClick = CompReportItemClick
      end
      object ResultReportItem: TMenuItem
        Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1093' '#1087#1088#1080#1077#1084#1072
        Enabled = False
        OnClick = ResultReportItemClick
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object AddSpecListReportItem: TMenuItem
        Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1089#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Enabled = False
        OnClick = AddSpecListReportItemClick
      end
      object SpecListReportItem: TMenuItem
        Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Enabled = False
        OnClick = SpecListReportItemClick
      end
      object AllListReportItem: TMenuItem
        Caption = #1048#1090#1086#1075#1080' '#1074#1089#1090#1091#1087#1080#1090#1077#1083#1100#1085#1099#1093' '#1080#1089#1087#1099#1090#1072#1085#1080#1081
        OnClick = AllListReportItemClick
      end
      object N39: TMenuItem
        Action = StudentsListAction
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object N26: TMenuItem
        Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1082#1086#1085#1090#1080#1085#1075#1077#1085#1090#1072' '#1086#1095#1085#1080#1082#1086#1074
        OnClick = N26Click
      end
      object N27: TMenuItem
        Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1082#1086#1085#1090#1080#1085#1075#1077#1085#1090#1072' '#1079#1072#1086#1095#1085#1080#1082#1086#1074
        OnClick = N27Click
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object N17: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1093' '#1087#1088#1080#1077#1084#1072' '#1086#1095#1085#1080#1082#1086#1074
        OnClick = N17Click
      end
      object N22: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1093' '#1087#1088#1080#1077#1084#1072' '#1079#1072#1086#1095#1085#1080#1082#1086#1074
        OnClick = N22Click
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object N24: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1085#1072' '#1089#1090#1077#1085#1076' '#1076#1083#1103' '#1086#1095#1085#1080#1082#1086#1074
        OnClick = N24Click
      end
      object N25: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1085#1072' '#1089#1090#1077#1085#1076' '#1076#1083#1103' '#1079#1072#1086#1095#1085#1080#1082#1086#1074
        OnClick = N25Click
      end
      object N40: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1076#1072#1095#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1086#1095#1085#1080#1082#1086#1074
        OnClick = N40Click
      end
      object N41: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1076#1072#1095#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1079#1072#1086#1095#1085#1080#1082#1086#1074
        OnClick = N41Click
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object N30: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1074#1089#1090#1091#1087#1080#1090#1077#1083#1100#1085#1099#1093' '#1101#1082#1079#1072#1084#1077#1085#1072#1093' '#1086#1095#1085#1080#1082#1086#1074
        OnClick = N30Click
      end
      object N31: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1074#1089#1090#1091#1087#1080#1090#1077#1083#1100#1085#1099#1093' '#1101#1082#1079#1072#1084#1077#1085#1072#1093' '#1079#1072#1086#1095#1085#1080#1082#1086#1074
        OnClick = N31Click
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object N20: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1093' '#1087#1088#1080#1077#1084#1072
        OnClick = N20Click
      end
      object SvodReportExportMenuItem: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1089#1074#1086#1076#1085#1086#1081' '#1074#1077#1076#1086#1084#1086#1089#1090#1080
        OnClick = SvodReportExportMenuItemClick
      end
    end
    object N18: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object N19: TMenuItem
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
        OnClick = N19Click
      end
    end
  end
  object AbiturientsPopupMenu: TPopupMenu
    Left = 480
    Top = 408
    object N7: TMenuItem
      Action = AddAbiturientAction
    end
    object N8: TMenuItem
      Action = EditAbiturientAction
    end
    object N36: TMenuItem
      Caption = '-'
    end
    object N35: TMenuItem
      Action = ArchiveAction
    end
    object N33: TMenuItem
      Caption = '-'
    end
    object N9: TMenuItem
      Action = DelAbiturientAction
    end
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 78
    ActionBars = <>
    LinkedActionLists = <>
    Left = 48
    Top = 128
    object AddAbiturientAction: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = AddAbiturientActionExecute
    end
    object EditAbiturientAction: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnExecute = EditAbiturientActionExecute
    end
    object DelAbiturientAction: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = DelAbiturientActionExecute
    end
    object NewGroupAction: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = NewGroupActionExecute
    end
    object EditGroupAction: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnExecute = EditGroupActionExecute
    end
    object DeleteGroupAction: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = DeleteGroupActionExecute
    end
    object AddStudentsToGroupAction: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
      OnExecute = AddStudentsToGroupActionExecute
    end
    object DeleteStudentFromGroupAction: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1075#1088#1091#1087#1087#1099
      OnExecute = DeleteStudentFromGroupActionExecute
    end
    object CastingFormAction: TAction
      Caption = #1055#1088#1080#1077#1084#1085#1099#1077' '#1082#1086#1084#1080#1089#1089#1080#1080
      OnExecute = CastingFormActionExecute
    end
    object ArchiveAction: TAction
      Caption = #1042' '#1072#1088#1093#1080#1074
      OnExecute = ArchiveActionExecute
    end
    object ArDelAction: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = ArDelActionExecute
    end
    object ArRestoreAction: TAction
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1074' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1099
      OnExecute = ArRestoreActionExecute
    end
    object StudentsListAction: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1079#1072#1095#1080#1089#1083#1077#1085#1085#1099#1093
      OnExecute = StudentsListActionExecute
    end
  end
  object FGroupPopupMenu: TPopupMenu
    Left = 48
    Top = 176
    object N10: TMenuItem
      Action = NewGroupAction
    end
    object N11: TMenuItem
      Action = EditGroupAction
    end
    object N12: TMenuItem
      Action = DeleteGroupAction
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object AddStudentsToGroupAction1: TMenuItem
      Action = AddStudentsToGroupAction
    end
  end
  object FStudentsPopupMenu: TPopupMenu
    Left = 272
    Top = 184
    object N13: TMenuItem
      Action = DeleteStudentFromGroupAction
    end
  end
  object ArDataSource: TDataSource
    AutoEdit = False
    DataSet = ArQuery
    OnDataChange = ArDataSourceDataChange
    Left = 592
    Top = 408
  end
  object ArQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM AbiturientsView WHERE av_Attributes =128;')
    Left = 592
    Top = 440
  end
  object ArPopupMenu: TPopupMenu
    Left = 624
    Top = 408
    object N38: TMenuItem
      Action = ArRestoreAction
    end
    object N37: TMenuItem
      Action = ArDelAction
    end
  end
end
