object EditCastingForm: TEditCastingForm
  Left = 876
  Top = 668
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
  ClientHeight = 142
  ClientWidth = 330
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
    330
    142)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 15
    Width = 175
    Height = 13
    Caption = #1043#1086#1076' '#1089#1086#1073#1088#1072#1085#1080#1103' '#1087#1088#1080#1077#1084#1085#1086#1081' '#1082#1086#1084#1080#1089#1089#1080#1080
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 126
    Height = 13
    Caption = #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' '#1082#1086#1084#1080#1089#1089#1080#1080
  end
  object Label3: TLabel
    Left = 8
    Top = 84
    Width = 107
    Height = 13
    Caption = #1057#1077#1082#1088#1077#1090#1072#1088#1100' '#1082#1086#1084#1080#1089#1089#1080#1080
  end
  object Label4: TLabel
    Left = 8
    Top = 63
    Width = 98
    Height = 13
    Caption = #1047#1072#1084'. '#1087#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1103
  end
  object OkBtn: TButton
    Left = 83
    Top = 113
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 163
    Top = 113
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object YearEdit: TSpinEdit
    Left = 200
    Top = 8
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
    OnChange = YearEditChange
  end
  object DirectorEdit: TEdit
    Left = 144
    Top = 35
    Width = 177
    Height = 21
    TabOrder = 3
    OnChange = YearEditChange
  end
  object SekretarEdit: TEdit
    Left = 144
    Top = 79
    Width = 177
    Height = 21
    TabOrder = 4
    OnChange = YearEditChange
  end
  object ZamDirEdit: TEdit
    Left = 144
    Top = 58
    Width = 177
    Height = 21
    TabOrder = 5
    OnChange = YearEditChange
  end
end
