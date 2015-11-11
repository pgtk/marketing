object AbiturientForm: TAbiturientForm
  Left = 554
  Top = 338
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
  ClientHeight = 494
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    491
    494)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 491
    Height = 463
    ActivePage = TabSheet1
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1051#1080#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 49
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 22
        Height = 13
        Caption = #1048#1084#1103
      end
      object Label3: TLabel
        Left = 8
        Top = 56
        Width = 47
        Height = 13
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      end
      object Label4: TLabel
        Left = 8
        Top = 137
        Width = 97
        Height = 13
        Caption = #1040#1076#1088#1077#1089' '#1087#1086' '#1087#1088#1086#1087#1080#1089#1082#1077
      end
      object Label6: TLabel
        Left = 6
        Top = 237
        Width = 78
        Height = 13
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      end
      object Label10: TLabel
        Left = 247
        Top = 22
        Width = 92
        Height = 13
        Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
      end
      object Label11: TLabel
        Left = 6
        Top = 326
        Width = 98
        Height = 13
        Caption = #1048#1085#1086#1089#1090#1088#1072#1085#1085#1099#1081' '#1103#1079#1099#1082
      end
      object Label14: TLabel
        Left = 247
        Top = 231
        Width = 63
        Height = 13
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      end
      object Label15: TLabel
        Left = 6
        Top = 261
        Width = 95
        Height = 13
        Caption = #1055#1086#1089#1090#1091#1087#1072#1077#1090' '#1085#1072' '#1073#1072#1079#1077
      end
      object Label17: TLabel
        Left = 6
        Top = 302
        Width = 86
        Height = 13
        Caption = #1055#1086#1083' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
      end
      object Label18: TLabel
        Left = 8
        Top = 97
        Width = 95
        Height = 13
        Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
      end
      object Label19: TLabel
        Left = 6
        Top = 214
        Width = 86
        Height = 13
        Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
      end
      object Label21: TLabel
        Left = 8
        Top = 77
        Width = 79
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      end
      object GenderComboBox: TComboBox
        Left = 112
        Top = 298
        Width = 129
        Height = 21
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 10
        Text = #1052
        OnChange = GenderComboBoxChange
        Items.Strings = (
          #1046
          #1052)
      end
      object GroupBox1: TGroupBox
        Left = 248
        Top = 108
        Width = 233
        Height = 120
        Caption = #1051#1100#1075#1086#1090#1099
        TabOrder = 18
        object isParentLessCheckBox: TDBCheckBox
          Left = 120
          Top = 22
          Width = 97
          Height = 17
          Caption = #1057#1080#1088#1086#1090#1072
          DataField = 'ab_isParentLess'
          DataSource = AbiturientDataSource
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object InvalidCheckBox: TDBCheckBox
          Left = 5
          Top = 23
          Width = 97
          Height = 17
          Caption = #1048#1085#1074#1072#1083#1080#1076
          DataField = 'ab_isInvalid'
          DataSource = AbiturientDataSource
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object MedalCheckBox: TDBCheckBox
          Left = 6
          Top = 48
          Width = 97
          Height = 17
          Caption = #1052#1077#1076#1072#1083#1080#1089#1090
          DataField = 'ab_isMedal'
          DataSource = AbiturientDataSource
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object VeteranCheckBox: TDBCheckBox
          Left = 6
          Top = 72
          Width = 219
          Height = 17
          Caption = #1042#1077#1090#1077#1088#1072#1085' / '#1056#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1103' '#1080#1079' '#1042'. '#1063'.'
          DataField = 'ab_isVeteran'
          DataSource = AbiturientDataSource
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object FurtherlessCheckBox: TDBCheckBox
          Left = 6
          Top = 95
          Width = 211
          Height = 17
          Caption = #1054#1090#1077#1094' '#1087#1086#1075#1080#1073' '#1085#1072' '#1096#1072#1093#1090#1077
          DataField = 'ab_isFurtherLess'
          DataSource = AbiturientDataSource
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 120
          Top = 48
          Width = 97
          Height = 17
          Caption = #1054#1087#1077#1082#1072#1077#1084#1099#1081
          DataField = 'ab_isopekun'
          DataSource = AbiturientDataSource
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object StudyFormComboBox: TComboBox
        Left = 112
        Top = 209
        Width = 129
        Height = 21
        ItemHeight = 13
        TabOrder = 6
        OnChange = StudyFormComboBoxChange
        Items.Strings = (
          #1086#1095#1085#1072#1103
          #1079#1072#1086#1095#1085#1072#1103)
      end
      object BirthDateEdit: TDateTimePicker
        Left = 112
        Top = 72
        Width = 130
        Height = 21
        CalAlignment = dtaLeft
        Date = 40000.4920458565
        Time = 40000.4920458565
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 3
        OnChange = BirthDateEditChange
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 344
        Width = 241
        Height = 91
        Caption = #1058#1077#1083#1077#1092#1086#1085#1099
        TabOrder = 12
        object Label29: TLabel
          Left = 5
          Top = 24
          Width = 55
          Height = 13
          Caption = #1044#1086#1084#1072#1096#1085#1080#1081
        end
        object Label30: TLabel
          Left = 5
          Top = 47
          Width = 59
          Height = 13
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
        end
        object Label31: TLabel
          Left = 7
          Top = 70
          Width = 42
          Height = 13
          Caption = #1056#1072#1073#1086#1095#1080#1081
        end
        object HPhoneEdit: TDBEdit
          Left = 112
          Top = 16
          Width = 125
          Height = 21
          DataField = 'ab_HomePhone'
          DataSource = AbiturientDataSource
          TabOrder = 0
          OnChange = ChangeInfo
        end
        object MPhoneEdit: TDBEdit
          Left = 112
          Top = 40
          Width = 126
          Height = 21
          DataField = 'ab_CellPhone'
          DataSource = AbiturientDataSource
          TabOrder = 1
          OnChange = ChangeInfo
        end
        object WPhoneEdit: TDBEdit
          Left = 112
          Top = 64
          Width = 126
          Height = 21
          DataField = 'ab_WorkPhone'
          DataSource = AbiturientDataSource
          TabOrder = 2
          OnChange = ChangeInfo
        end
      end
      object GroupBox5: TGroupBox
        Left = 248
        Top = 320
        Width = 163
        Height = 113
        Caption = #1060#1086#1090#1086#1075#1088#1072#1092#1080#1103
        TabOrder = 19
        object AbPhoto: TDBImage
          Left = 2
          Top = 15
          Width = 159
          Height = 96
          Align = alClient
          DataField = 'ab_Photo'
          DataSource = AbiturientDataSource
          Stretch = True
          TabOrder = 0
          OnDblClick = AbPhotoDblClick
        end
      end
      object CommentEdit: TDBMemo
        Left = 248
        Top = 247
        Width = 233
        Height = 71
        DataField = 'ab_Comment'
        DataSource = AbiturientDataSource
        TabOrder = 20
      end
      object SerialEdit: TDBEdit
        Left = 344
        Top = 16
        Width = 121
        Height = 21
        DataField = 'ab_Serial'
        DataSource = AbiturientDataSource
        TabOrder = 13
      end
      object isVillageCheckBox: TDBCheckBox
        Left = 248
        Top = 40
        Width = 217
        Height = 17
        Caption = #1046#1080#1090#1077#1083#1100' '#1089#1077#1083#1100#1089#1082#1086#1081' '#1084#1077#1089#1090#1085#1086#1089#1090#1080
        DataField = 'ab_isVillage'
        DataSource = AbiturientDataSource
        TabOrder = 14
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object isForeignCheckBox: TDBCheckBox
        Left = 352
        Top = 64
        Width = 97
        Height = 17
        Caption = #1048#1085#1086#1089#1090#1088#1072#1085#1077#1094
        DataField = 'ab_isForeign'
        DataSource = AbiturientDataSource
        TabOrder = 16
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object OtherTownCheckBox: TDBCheckBox
        Left = 248
        Top = 64
        Width = 97
        Height = 17
        Caption = #1048#1085#1086#1075#1086#1088#1086#1076#1085#1080#1081
        DataField = 'ab_isOtherTown'
        DataSource = AbiturientDataSource
        TabOrder = 15
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object HotelCheckBox: TDBCheckBox
        Left = 248
        Top = 85
        Width = 209
        Height = 17
        Caption = #1053#1091#1078#1076#1072#1077#1090#1089#1103' '#1074' '#1086#1073#1097#1077#1078#1080#1090#1080#1080
        DataField = 'ab_isHotel'
        DataSource = AbiturientDataSource
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object FNameEdit: TDBEdit
        Left = 64
        Top = 0
        Width = 177
        Height = 21
        DataField = 'ab_FName'
        DataSource = AbiturientDataSource
        TabOrder = 0
        OnChange = ChangeInfo
      end
      object MNameEdit: TDBEdit
        Left = 64
        Top = 24
        Width = 177
        Height = 21
        DataField = 'ab_MName'
        DataSource = AbiturientDataSource
        TabOrder = 1
        OnChange = ChangeInfo
      end
      object LNameEdit: TDBEdit
        Left = 64
        Top = 48
        Width = 177
        Height = 21
        DataField = 'ab_LName'
        DataSource = AbiturientDataSource
        TabOrder = 2
        OnChange = ChangeInfo
      end
      object PlaceComboBox: TDBLookupComboBox
        Left = 8
        Top = 112
        Width = 233
        Height = 21
        DataField = 'ab_plcode'
        DataSource = AbiturientDataSource
        KeyField = 'pl_pcode'
        ListField = 'pl_FullName'
        ListSource = PlaceSource
        TabOrder = 4
      end
      object AddressEdit: TDBMemo
        Left = 8
        Top = 152
        Width = 233
        Height = 52
        DataField = 'ab_Address'
        DataSource = AbiturientDataSource
        TabOrder = 5
      end
      object SpecComboBox: TDBLookupComboBox
        Left = 112
        Top = 232
        Width = 129
        Height = 21
        DataField = 'ab_rspcode'
        DataSource = AbiturientDataSource
        KeyField = 'sp_pcode'
        ListField = 'sp_Comment'
        ListSource = SpecSource
        TabOrder = 7
      end
      object BaseComboBox: TDBLookupComboBox
        Left = 112
        Top = 256
        Width = 129
        Height = 21
        DataField = 'ab_basecode'
        DataSource = AbiturientDataSource
        KeyField = 'bs_pcode'
        ListField = 'bs_Text'
        ListSource = BaseSource
        TabOrder = 8
      end
      object LangComboBox: TDBLookupComboBox
        Left = 112
        Top = 322
        Width = 129
        Height = 21
        DataField = 'ab_Lang'
        DataSource = AbiturientDataSource
        KeyField = 'lg_index'
        ListField = 'lg_name'
        ListSource = LangSource
        TabOrder = 11
      end
      object CommercialCheckBox: TDBCheckBox
        Left = 8
        Top = 280
        Width = 225
        Height = 17
        Caption = #1057' '#1087#1086#1083#1085#1099#1084' '#1074#1086#1079#1084#1077#1097#1077#1085#1080#1077#1084' '#1079#1072#1090#1088#1072#1090
        DataField = 'ab_isCommercial'
        DataSource = AbiturientDataSource
        TabOrder = 9
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 1
      object Label16: TLabel
        Left = 0
        Top = 71
        Width = 117
        Height = 13
        Caption = #1040#1090#1090#1077#1089#1090#1072#1090' '#8470', '#1075#1086#1076', '#1075#1086#1088#1086#1076
      end
      object Label9: TLabel
        Left = 0
        Top = 27
        Width = 166
        Height = 13
        Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1077#1077' '#1091#1095#1077#1073#1085#1086#1077' '#1079#1072#1074#1077#1076#1077#1085#1080#1077
      end
      object Label26: TLabel
        Left = 0
        Top = 158
        Width = 24
        Height = 13
        Caption = #1048#1053#1053
      end
      object GroupBox2: TGroupBox
        Left = 241
        Top = 9
        Width = 241
        Height = 168
        Caption = #1055#1072#1089#1089#1087#1086#1088#1090
        TabOrder = 5
        object Label22: TLabel
          Left = 8
          Top = 18
          Width = 31
          Height = 13
          Caption = #1057#1077#1088#1080#1103
        end
        object Label23: TLabel
          Left = 113
          Top = 19
          Width = 34
          Height = 13
          Caption = #1053#1086#1084#1077#1088
        end
        object Label24: TLabel
          Left = 8
          Top = 46
          Width = 66
          Height = 13
          Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        end
        object Label25: TLabel
          Left = 8
          Top = 66
          Width = 56
          Height = 13
          Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085
        end
        object PasspGetDateEdit: TDateTimePicker
          Left = 81
          Top = 42
          Width = 153
          Height = 21
          CalAlignment = dtaLeft
          Date = 40000.5024423148
          Time = 40000.5024423148
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 2
          OnChange = PasspGetDateEditChange
        end
        object PasspSeriaEdit: TDBEdit
          Left = 48
          Top = 16
          Width = 57
          Height = 21
          DataField = 'ab_PassptSeria'
          DataSource = AbiturientDataSource
          TabOrder = 0
        end
        object PasspNumEdit: TDBEdit
          Left = 152
          Top = 16
          Width = 81
          Height = 21
          DataField = 'ab_PassptNum'
          DataSource = AbiturientDataSource
          TabOrder = 1
        end
        object PasspDeptEdit: TDBMemo
          Left = 8
          Top = 79
          Width = 225
          Height = 85
          DataField = 'ab_PassptDept'
          DataSource = AbiturientDataSource
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 178
        Width = 481
        Height = 45
        Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1073#1072#1085#1082#1072
        TabOrder = 6
        object Label27: TLabel
          Left = 8
          Top = 18
          Width = 41
          Height = 13
          Caption = #1060#1080#1083#1080#1072#1083
        end
        object Label28: TLabel
          Left = 129
          Top = 19
          Width = 23
          Height = 13
          Caption = #1057#1095#1077#1090
        end
        object BankDepEdit: TDBEdit
          Left = 56
          Top = 16
          Width = 65
          Height = 21
          DataField = 'ab_bankDep'
          DataSource = AbiturientDataSource
          TabOrder = 0
        end
        object BankNumEdit: TDBEdit
          Left = 154
          Top = 16
          Width = 121
          Height = 21
          DataField = 'ab_bankNum'
          DataSource = AbiturientDataSource
          TabOrder = 1
        end
      end
      object DocMissingCheckBox: TDBCheckBox
        Left = 0
        Top = 7
        Width = 233
        Height = 17
        Caption = #1057#1076#1072#1085' '#1085#1077#1087#1086#1083#1085#1099#1081' '#1082#1086#1084#1087#1083#1077#1082#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
        DataField = 'ab_isDocmissing'
        DataSource = AbiturientDataSource
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object OldDocumentCheckBox: TDBCheckBox
        Left = 0
        Top = 136
        Width = 233
        Height = 17
        Caption = #1040#1090#1090#1077#1089#1090#1072#1090' '#1087#1088#1086#1096#1083#1099#1093' '#1083#1077#1090
        DataField = 'ab_isOldDocument'
        DataSource = AbiturientDataSource
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object SchoolEdit: TDBEdit
        Left = 0
        Top = 48
        Width = 233
        Height = 21
        DataField = 'ab_School'
        DataSource = AbiturientDataSource
        TabOrder = 1
      end
      object DocumentMemo: TDBMemo
        Left = 0
        Top = 88
        Width = 233
        Height = 44
        DataField = 'ab_Document'
        DataSource = AbiturientDataSource
        TabOrder = 2
      end
      object INNEdit: TDBEdit
        Left = 32
        Top = 152
        Width = 201
        Height = 21
        DataField = 'ab_INN'
        DataSource = AbiturientDataSource
        TabOrder = 4
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1069#1082#1079#1072#1084#1077#1085#1099
      ImageIndex = 2
      object Label20: TLabel
        Left = 6
        Top = 11
        Width = 136
        Height = 13
        Caption = #1055#1086#1089#1090#1091#1087#1072#1077#1090' '#1087#1086' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1084
      end
      object Label5: TLabel
        Left = 6
        Top = 39
        Width = 70
        Height = 13
        Caption = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083
      end
      object Label7: TLabel
        Left = 6
        Top = 86
        Width = 63
        Height = 13
        Caption = #1052#1072#1090#1077#1084#1072#1090#1080#1082#1072
      end
      object Label8: TLabel
        Left = 6
        Top = 62
        Width = 71
        Height = 13
        Caption = #1056#1091#1089#1089#1082#1080#1081' '#1103#1079#1099#1082
      end
      object Label32: TLabel
        Left = 6
        Top = 110
        Width = 143
        Height = 13
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1101#1082#1079#1072#1084#1077#1085#1099
      end
      object isEgeComboBox: TComboBox
        Left = 160
        Top = 8
        Width = 113
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = isEgeComboBoxChange
        Items.Strings = (
          #1058#1077#1089#1090#1086#1074
          #1043#1048#1040
          #1045#1043#1069)
      end
      object SpecListGroupBox: TGroupBox
        Left = 0
        Top = 168
        Width = 483
        Height = 267
        Align = alBottom
        Caption = #1057#1087#1080#1089#1086#1082' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1077#1081' '#1076#1083#1103' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
        Enabled = False
        TabOrder = 6
        DesignSize = (
          483
          267)
        object SpecListGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 479
          Height = 210
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = SpecListDataSource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'sp_Comment'
              Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
              Width = 439
              Visible = True
            end>
        end
        object AddBtn: TButton
          Left = 5
          Top = 232
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 1
          OnClick = AddBtnClick
        end
        object DelBtn: TButton
          Left = 80
          Top = 232
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
          OnClick = DelBtnClick
        end
      end
      object Memo1: TMemo
        Left = 280
        Top = 32
        Width = 200
        Height = 69
        Color = clBtnFace
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          #1055#1091#1089#1090#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072' '
          #1101#1082#1074#1080#1074#1072#1083#1077#1085#1090#1085#1086' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1102' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072'.')
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object CourseCheckBox: TDBCheckBox
        Left = 6
        Top = 130
        Width = 233
        Height = 17
        Caption = #1055#1088#1086#1093#1086#1076#1080#1083'('#1072') '#1087#1086#1076#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100#1085#1099#1077' '#1082#1091#1088#1089#1099
        DataField = 'ab_HasCourse'
        DataSource = AbiturientDataSource
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object TestsCheckBox: TDBCheckBox
        Left = 6
        Top = 150
        Width = 259
        Height = 17
        Caption = #1042#1099#1076#1077#1088#1078#1072#1083'('#1072') '#1074#1089#1090#1091#1087#1080#1090#1077#1083#1100#1085#1099#1077' '#1080#1089#1087#1099#1090#1072#1085#1080#1103
        DataField = 'ab_isPassed'
        DataSource = AbiturientDataSource
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object MBallEdit: TDBEdit
        Left = 160
        Top = 32
        Width = 113
        Height = 21
        DataField = 'ab_mball'
        DataSource = AbiturientDataSource
        TabOrder = 1
        OnChange = ChangeInfo
      end
      object Ex2Edit: TDBEdit
        Left = 160
        Top = 56
        Width = 113
        Height = 21
        DataField = 'ab_Ex2'
        DataSource = AbiturientDataSource
        TabOrder = 2
        OnChange = ChangeInfo
      end
      object Ex1Edit: TDBEdit
        Left = 160
        Top = 80
        Width = 113
        Height = 21
        DataField = 'ab_Ex1'
        DataSource = AbiturientDataSource
        TabOrder = 3
        OnChange = ChangeInfo
      end
      object AddExEdit: TDBEdit
        Left = 160
        Top = 104
        Width = 113
        Height = 21
        DataField = 'ab_AddEx'
        DataSource = AbiturientDataSource
        TabOrder = 8
        OnChange = ChangeInfo
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1047#1072#1086#1095#1085#1086#1077
      ImageIndex = 3
      object Label12: TLabel
        Left = 6
        Top = 12
        Width = 63
        Height = 13
        Caption = #1054#1073#1097#1080#1081' '#1089#1090#1072#1078
      end
      object Label13: TLabel
        Left = 6
        Top = 37
        Width = 121
        Height = 13
        Caption = #1057#1090#1072#1078' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      end
      object FuulExpEdit: TDBEdit
        Left = 136
        Top = 8
        Width = 105
        Height = 21
        DataField = 'ab_fullexp'
        DataSource = AbiturientDataSource
        TabOrder = 0
      end
      object SpecExpEdit: TDBEdit
        Left = 136
        Top = 32
        Width = 105
        Height = 21
        DataField = 'ab_specexp'
        DataSource = AbiturientDataSource
        TabOrder = 1
      end
    end
  end
  object OkBtn: TButton
    Left = 160
    Top = 466
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = OkBtnClick
  end
  object CancelBtn: TButton
    Left = 237
    Top = 466
    Width = 73
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object SpecListQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Specialities;')
    Left = 408
    Top = 288
  end
  object SpecListDataSource: TDataSource
    DataSet = SpecListQuery
    OnDataChange = SpecListDataSourceDataChange
    Left = 448
    Top = 288
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 376
    Top = 288
  end
  object AbiturientQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 * FROM Abiturients;')
    Left = 320
    Top = 464
  end
  object AbiturientDataSource: TDataSource
    DataSet = AbiturientQuery
    Left = 352
    Top = 464
  end
  object PlaceQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT pl_FullName, pl_pcode FROM Places;')
    Top = 464
  end
  object PlaceSource: TDataSource
    DataSet = PlaceQuery
    Left = 32
    Top = 464
  end
  object SpecQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'EXEC GetSpecList 0')
    Left = 72
    Top = 464
  end
  object SpecSource: TDataSource
    DataSet = SpecQuery
    Left = 104
    Top = 464
  end
  object BaseQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Bases;')
    Left = 392
    Top = 464
  end
  object BaseSource: TDataSource
    DataSet = BaseQuery
    Left = 424
    Top = 464
  end
  object LangQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Languages;')
    Left = 424
    Top = 360
  end
  object LangSource: TDataSource
    DataSet = LangQuery
    Left = 424
    Top = 392
  end
end
