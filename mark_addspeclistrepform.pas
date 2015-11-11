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
    QRDBText1: TQRDBText;
    QRMemo1: TQRMemo;
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  APlan  : integer;
    { Private declarations }
  public
  property plan: integer read APlan write APlan;
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
var
RecNo : integer;

begin
recNo := MainForm.AStudentsQuery.RecNo;
if RecNo >= plan then
  DetailBand1.Color := $C0C0C0 else
  DetailBand1.Color := $FFFFFF;
Value := IntToStr(RecNo);
end;

procedure TAddSpecListReportForm.QRLabel4Print(sender: TObject;
  var Value: String);
begin
Value := ' ';
end;

procedure TAddSpecListReportForm.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  DetailBand1.Color := $FFFFFF;
end;

procedure TAddSpecListReportForm.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if MainForm.AStudentsQuery.RecNo > plan then
  DetailBand1.Color := $C0C0C0 else
  DetailBand1.Color := $FFFFFF;
end;

end.
