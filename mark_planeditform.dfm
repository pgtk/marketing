object PlanEditForm: TPlanEditForm
  Left = 339
  Top = 531
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1083#1072#1085' '#1087#1088#1080#1077#1084#1072
  ClientHeight = 186
  ClientWidth = 275
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
    275
    186)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 23
    Width = 78
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 79
    Height = 13
    Caption = #1054#1095#1085#1080#1082#1080' '#1073#1102#1076#1078#1077#1090
  end
  object Label3: TLabel
    Left = 16
    Top = 71
    Width = 90
    Height = 13
    Caption = #1047#1072#1086#1095#1085#1080#1082#1080' '#1073#1102#1076#1078#1077#1090
  end
  object Label4: TLabel
    Left = 16
    Top = 96
    Width = 86
    Height = 13
    Caption = #1054#1095#1085#1080#1082#1080' '#1082#1086#1085#1090#1088#1072#1082#1090
  end
  object Label5: TLabel
    Left = 16
    Top = 119
    Width = 97
    Height = 13
    Caption = #1047#1072#1086#1095#1085#1080#1082#1080' '#1082#1086#1085#1090#1088#1072#1082#1090
  end
  object SpecComboBox: TComboBox
    Left = 120
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnChange = SpecComboBoxChange
  end
  object OBPlanEdit: TSpinEdit
    Left = 200
    Top = 40
    Width = 65
    Height = 22
    MaxValue = 500
    MinValue = 0
    TabOrder = 1
    Value = 0
    OnChange = ZCPlanEditChange
  end
  object ZBPlanEdit: TSpinEdit
    Left = 200
    Top = 64
    Width = 65
    Height = 22
    MaxValue = 500
    MinValue = 0
    TabOrder = 2
    Value = 0
    OnChange = ZCPlanEditChange
  end
  object OCPlanEdit: TSpinEdit
    Left = 200
    Top = 88
    Width = 65
    Height = 22
    MaxValue = 500
    MinValue = 0
    TabOrder = 3
    Value = 0
    OnChange = ZCPlanEditChange
  end
  object ZCPlanEdit: TSpinEdit
    Left = 200
    Top = 112
    Width = 65
    Height = 22
    MaxValue = 500
    MinValue = 0
    TabOrder = 4
    Value = 0
    OnChange = ZCPlanEditChange
  end
  object OkBtn: TButton
    Left = 56
    Top = 152
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 5
  end
  object CancelBtn: TButton
    Left = 136
    Top = 152
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    Default = True
    ModalResult = 2
    TabOrder = 6
  end
end
