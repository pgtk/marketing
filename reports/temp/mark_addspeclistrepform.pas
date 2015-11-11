unit mark_addspeclistrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TAddSpecListReportForm = class(TForm)
    AddSpecListRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    DescLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    Query: TADOQuery;
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddSpecListReportForm: TAddSpecListReportForm;

implementation

uses mark_main, kern;

{$R *.dfm}

procedure TAddSpecListReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TAddSpecListReportForm.QRLabel2Print(sender: TObject;
  var Value: String);
begin
Value := #$D+Value;
end;

procedure TAddSpecListReportForm.QRLabel5Print(sender: TObject;
  var Value: String);
begin
Value := #$D+Value;
end;

procedure TAddSpecListReportForm.QRLabel9Print(sender: TObject;
  var Value: String);
begin
Value := ' ';
if MainForm.AStudentsQuery.FieldByName('av_isParentLess').AsBoolean or
  MainForm.AStudentsQuery.FieldByName('av_isInvalid').AsBoolean or
  MainForm.AStudentsQuery.FieldByName('av_isMedal').AsBoolean or
  MainForm.AStudentsQuery.FieldByName('av_isVeteran').AsBoolean or
  MainForm.AStudentsQuery.FieldByName('av_isFurtherLess').AsBoolean then
  Value := 'Есть';
end;

procedure TAddSpecListReportForm.QRLabel12Print(sender: TObject;
  var Value: String);
begin
Value := IntToStr(MainForm.AStudentsQuery.RecNo
);
end;

end.
