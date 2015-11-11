unit mark_studentlistreportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB, jpeg;

type
  TStudentsListReportForm = class(TForm)
    StudentsListRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    SchoolLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    DescLabel: TQRLabel;
    QRImage1: TQRImage;
    QRLabel5: TQRLabel;
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudentsListReportForm: TStudentsListReportForm;

implementation

uses mark_main, kern;

{$R *.dfm}

procedure TStudentsListReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TStudentsListReportForm.QRLabel2Print(sender: TObject;
  var Value: String);
begin
Value := #$D+Value;
end;

procedure TStudentsListReportForm.QRLabel5Print(sender: TObject;
  var Value: String);
begin
Value := #$D+Value;
end;

procedure TStudentsListReportForm.QRLabel9Print(sender: TObject;
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

procedure TStudentsListReportForm.QRLabel12Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TStudentsListReportForm.QRLabel4Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

end.
