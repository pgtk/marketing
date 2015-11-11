object MembersForm: TMembersForm
  Left = 288
  Top = 610
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1063#1083#1077#1085#1099' '#1082#1086#1087#1080#1089#1089#1080#1080
  ClientHeight = 265
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MembersGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 400
    Height = 217
    Align = alTop
    DataSource = MembersSource
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
        FieldName = 'ctm_index'
        Title.Caption = #8470
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wk_FName'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wk_MName'
        Title.Caption = #1048#1084#1103
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wk_LName'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 132
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 224
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object DelBtn: TButton
    Left = 75
    Top = 224
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = DelBtnClick
  end
  object ExitBtn: TButton
    Left = 321
    Top = 224
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object NumberBtn: TButton
    Left = 160
    Top = 224
    Width = 75
    Height = 25
    Caption = #1053#1086#1084#1077#1088
    TabOrder = 4
    OnClick = NumberBtnClick
  end
  object MembersSource: TDataSource
    DataSet = MembersQuery
    OnDataChange = MembersSourceDataChange
    Left = 96
    Top = 120
  end
  object MembersQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CtMembers, Workers '
      'WHERE ctm_wkcode = wk_pcode'
      'ORDER BY ctm_index, wk_Name;')
    Left = 128
    Top = 120
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 176
    Top = 120
  end
end
