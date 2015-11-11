unit mark_speclistrepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TSpecListReportForm = class(TForm)
    SpecListRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    SummaryBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    DescLabel: TQRLabel;
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
  SpecListReportForm: TSpecListReportForm;

implementation

uses mark_main, kern;

{$R *.dfm}

procedure TSpecListReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TSpecListReportForm.QRLabel2Print(sender: TObject;
  var Value: String);
begin
Value := #$D+Value;
end;

procedure TSpecListReportForm.QRLabel5Print(sender: TObject;
  var Value: String);
begin
Value := #$D+Value;
end;

procedure TSpecListReportForm.QRLabel9Print(sender: TObject;
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

procedure TSpecListReportForm.QRLabel12Print(sender: TObject;
  var Value: String);
begin
Value := IntToStr(MainForm.AStudentsQuery.RecNo
);
end;

end.
