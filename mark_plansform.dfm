object PlansForm: TPlansForm
  Left = 196
  Top = 542
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1083#1072#1085#1099
  ClientHeight = 273
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    457
    273)
  PixelsPerInch = 96
  TextHeight = 13
  object PlansGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 457
    Height = 233
    Align = alTop
    DataSource = PlansSource
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
        Width = 231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ctp_oplan'
        Title.Caption = #1054#1095#1085#1080#1082#1086#1074
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ctp_bplan'
        Title.Caption = #1041#1102#1076#1078#1077#1090#1085#1080#1082#1086#1074
        Width = 89
        Visible = True
      end>
  end
  object AddBtn: TButton
    Left = 0
    Top = 240
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddBtnClick
  end
  object EditBtn: TButton
    Left = 76
    Top = 240
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = EditBtnClick
  end
  object DelBtn: TButton
    Left = 152
    Top = 240
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelBtnClick
  end
  object OkBtn: TButton
    Left = 380
    Top = 240
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 4
  end
  object PlansSource: TDataSource
    DataSet = PlansQuery
    OnDataChange = PlansSourceDataChange
    Left = 16
    Top = 48
  end
  object Command: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 16
    Top = 80
  end
  object PlansQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM CtPlans, Specialities WHERE (sp_pcode = ctp_spcode' +
        ');')
    Left = 48
    Top = 48
  end
end
