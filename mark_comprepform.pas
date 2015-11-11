unit mark_comprepform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB, jpeg;

type
  TCompReportForm = class(TForm)
    CompReport: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    DescLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    DirectorLabel: TQRLabel;
    SekretarLabel: TQRLabel;
    MLabel1: TQRLabel;
    MLabel2: TQRLabel;
    MLabel3: TQRLabel;
    MLabel4: TQRLabel;
    MLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel17: TQRLabel;
    QRImage1: TQRImage;
    SchoolLabel: TQRLabel;
    QRLabel5: TQRLabel;
    ZamDirLabel: TQRLabel;
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
  private
  AisZaoch : boolean;
    { Private declarations }
  public
  property isZaoch : boolean read AisZaoch write AisZaoch;
    { Public declarations }
  end;

var
  CompReportForm: TCompReportForm;

implementation

uses kern, mark_main;

{$R *.dfm}

procedure TCompReportForm.QRLabel18Print(sender: TObject;
  var Value: String);
begin
Value := ' '+IntToStr(MainForm.AStudentsQuery.RecNo);
end;

procedure TCompReportForm.QRLabel17Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TCompReportForm.QRDBText1Print(sender: TObject;
  var Value: String);

var
bstr, estr : string;
x, pos, i  : integer;
h          : integer;

begin
h := QRDbText1.Height;
Value := ' ' + Value;
  if length(Value) > 35 then
    begin
    pos := 0;
    i := 0;
    for x := length(Value) downto 1 do
      if Value[x] = ' ' then
      begin
      inc(i);
      pos := x;
      if i = 2 then break;
      end;
    if pos > 0 then
      begin
      bstr := copy(Value, 1, pos);
      estr := copy(Value, pos, length(Value)-pos+1);
      Value := bstr+#$D+estr;
      h := h*2;
      end;
    end;
  QRDBText1.Height := h;
//  if QRDBText1.Height < h then QRDBText1.Height := h;
  QRLabel17.Height := h;
  QRLabel18.Height := h;
  QRDBText11.Height := h;
  QRDBText2.Height := h;
  QRDBText5.Height := h;
  QRDBText6.Height := h;
  QRDBText7.Height := h;
  QRDBText8.Height := h;
  QRDBText10.Height := h;
  DetailBand1.Height := h;
end;


procedure TCompReportForm.QRLabel1Print(sender: TObject;
  var Value: String);
begin
Value := Value + ' от '+DateToStr(now());
end;

end.
