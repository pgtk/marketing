object CastingForm: TCastingForm
  Left = 408
  Top = 550
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1080#1077#1084#1085#1099#1077' '#1082#1086#1084#1080#1089#1089#1080#1080
  ClientHeight = 279
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    509
    279)
  PixelsPerInch = 96
  TextHeight = 13
  object CastingGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 509
    Height = 233
    Align = alTop
    DataSource = CastingSource
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
        FieldName = 'ct_Year'
        Title.Caption = #1043#1086#1076
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_Director'
        Title.Caption = #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' '#1082#1086#1084#1080#1089#1089#1080#1080
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_Sekretar'
        Title.Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100' '#1082#1086#1084#1080#1089#1089#1080#1080
        Width = 202
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 240
    Width = 67
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 67
    Top = 240
    Width = 67
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 134
    Top = 240
    Width = 67
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object PlanBtn: TButton
    Left = 219
    Top = 240
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1055#1083#1072#1085#1099
    TabOrder = 4
    OnClick = PlanBtnClick
  end
  object MembersBtn: TButton
    Left = 316
    Top = 240
    Width = 97
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080
    TabOrder = 5
    OnClick = MembersBtnClick
  end
  object CloseBtn: TButton
    Left = 431
    Top = 240
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Default = True
    ModalResult = 1
    TabOrder = 6
  end
  object CastingSource: TDataSource
    DataSet = CastingQuery
    OnDataChange = CastingSourceDataChange
    Left = 192
    Top = 168
  end
  object CastingQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Casting ORDER BY ct_Year DESC;')
    Left = 224
    Top = 168
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 264
    Top = 168
  end
end
