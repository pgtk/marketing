unit mark_inforepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  TInfoReportForm = class(TForm)
    InfoRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    Query: TADOQuery;
    DescLabel: TQRLabel;
    DirectorLabel: TQRLabel;
    MembersLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    DateLabel: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure EmptyPrint(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoReportForm: TInfoReportForm;

implementation

uses dep_main, kern;

{$R *.dfm}

procedure TInfoReportForm.QRLabel18Print(sender: TObject;
  var Value: String);
begin
Value := ' '+IntToStr(Query.RecNo);
end;

procedure TInfoReportForm.EmptyPrint(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TInfoReportForm.QRDBText3Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TInfoReportForm.QRDBText1Print(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

procedure TInfoReportForm.QRDBText2Print(sender: TObject;
  var Value: String);
var
val : real;
wdg : TQRDBText;
begin
val := StrToFloatDef(Value, 0);
wdg := TQRDBText(sender);
if val > MINAVG then
   wdg.Font.Style := [fsBold]
   else
   wdg.Font.Style := [];
end;

end.
