object GroupForm: TGroupForm
  Left = 779
  Top = 521
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1043#1088#1091#1087#1087#1072
  ClientHeight = 214
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    344
    214)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 115
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099
  end
  object Label2: TLabel
    Left = 10
    Top = 50
    Width = 24
    Height = 13
    Caption = #1050#1091#1088#1089
  end
  object Label3: TLabel
    Left = 188
    Top = 49
    Width = 85
    Height = 13
    Caption = #1043#1086#1076' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
  end
  object Label4: TLabel
    Left = 67
    Top = 50
    Width = 74
    Height = 13
    Caption = #1057#1088#1086#1082' '#1086#1073#1091#1095#1077#1085#1080#1103
  end
  object Label6: TLabel
    Left = 8
    Top = 133
    Width = 148
    Height = 13
    Caption = #1057#1088#1086#1082' '#1086#1073#1091#1095#1077#1085#1080#1103' '#1091#1089#1082#1086#1088#1077#1085#1085#1080#1082#1086#1074
  end
  object Label5: TLabel
    Left = 176
    Top = 135
    Width = 78
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
  end
  object Label7: TLabel
    Left = 8
    Top = 92
    Width = 55
    Height = 13
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
  end
  object OkBtn: TButton
    Left = 105
    Top = 178
    Width = 75
    Height = 25
    Anchors = [akRight]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 5
  end
  object CancelBtn: TButton
    Left = 185
    Top = 178
    Width = 75
    Height = 25
    Anchors = [akRight]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 6
  end
  object NameEdit: TEdit
    Left = 8
    Top = 24
    Width = 329
    Height = 21
    TabOrder = 0
    OnChange = NameEditChange
  end
  object CommercialCheckBox: TCheckBox
    Left = 241
    Top = 70
    Width = 104
    Height = 17
    Caption = #1050#1086#1084#1084#1077#1088#1095#1077#1089#1082#1072#1103
    TabOrder = 4
  end
  object CourseEdit: TSpinEdit
    Left = 8
    Top = 65
    Width = 57
    Height = 22
    MaxValue = 5
    MinValue = 1
    TabOrder = 1
    Value = 1
  end
  object CreateYearEdit: TSpinEdit
    Left = 188
    Top = 65
    Width = 49
    Height = 22
    MaxValue = 2050
    MinValue = 1990
    TabOrder = 3
    Value = 2005
  end
  object LernLengthEdit: TEdit
    Left = 66
    Top = 66
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ShortLernLengthEdit: TEdit
    Left = 8
    Top = 152
    Width = 153
    Height = 21
    TabOrder = 7
  end
  object SpecComboBox: TComboBox
    Left = 176
    Top = 151
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    OnChange = SpecComboBoxChange
  end
  object DepComboBox: TComboBox
    Left = 7
    Top = 108
    Width = 330
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    OnChange = DepComboBoxChange
  end
end
