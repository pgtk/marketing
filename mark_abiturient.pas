unit mark_abiturient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ADODB, kern, Mask, Spin, ComCtrls, DB, Grids, DBGrids,
  DBCtrls;

type
  TAbiturientForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GenderComboBox: TComboBox;
    GroupBox1: TGroupBox;
    StudyFormComboBox: TComboBox;
    OkBtn: TButton;
    CancelBtn: TButton;
    TabSheet2: TTabSheet;
    Label16: TLabel;
    Label9: TLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    isEgeComboBox: TComboBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BirthDateEdit: TDateTimePicker;
    Label21: TLabel;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    PasspGetDateEdit: TDateTimePicker;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox3: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    GroupBox4: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    SpecListGroupBox: TGroupBox;
    SpecListQuery: TADOQuery;
    SpecListDataSource: TDataSource;
    SpecListGrid: TDBGrid;
    AddBtn: TButton;
    DelBtn: TButton;
    Command: TADOCommand;
    Memo1: TMemo;
    GroupBox5: TGroupBox;
    AbiturientQuery: TADOQuery;
    AbiturientDataSource: TDataSource;
    AbPhoto: TDBImage;
    CommentEdit: TDBMemo;
    SerialEdit: TDBEdit;
    isVillageCheckBox: TDBCheckBox;
    isForeignCheckBox: TDBCheckBox;
    OtherTownCheckBox: TDBCheckBox;
    HotelCheckBox: TDBCheckBox;
    isParentLessCheckBox: TDBCheckBox;
    InvalidCheckBox: TDBCheckBox;
    MedalCheckBox: TDBCheckBox;
    VeteranCheckBox: TDBCheckBox;
    FurtherlessCheckBox: TDBCheckBox;
    FNameEdit: TDBEdit;
    MNameEdit: TDBEdit;
    LNameEdit: TDBEdit;
    PlaceComboBox: TDBLookupComboBox;
    PlaceQuery: TADOQuery;
    PlaceSource: TDataSource;
    AddressEdit: TDBMemo;
    SpecQuery: TADOQuery;
    SpecSource: TDataSource;
    SpecComboBox: TDBLookupComboBox;
    BaseQuery: TADOQuery;
    BaseSource: TDataSource;
    BaseComboBox: TDBLookupComboBox;
    LangQuery: TADOQuery;
    LangSource: TDataSource;
    LangComboBox: TDBLookupComboBox;
    CommercialCheckBox: TDBCheckBox;
    CourseCheckBox: TDBCheckBox;
    TestsCheckBox: TDBCheckBox;
    DocMissingCheckBox: TDBCheckBox;
    OldDocumentCheckBox: TDBCheckBox;
    SchoolEdit: TDBEdit;
    DocumentMemo: TDBMemo;
    INNEdit: TDBEdit;
    MBallEdit: TDBEdit;
    Ex2Edit: TDBEdit;
    Ex1Edit: TDBEdit;
    FuulExpEdit: TDBEdit;
    SpecExpEdit: TDBEdit;
    HPhoneEdit: TDBEdit;
    MPhoneEdit: TDBEdit;
    WPhoneEdit: TDBEdit;
    PasspSeriaEdit: TDBEdit;
    PasspNumEdit: TDBEdit;
    PasspDeptEdit: TDBMemo;
    BankDepEdit: TDBEdit;
    BankNumEdit: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label32: TLabel;
    AddExEdit: TDBEdit;
    procedure BaseComboBoxChange(Sender: TObject);
    procedure LangComboBoxChange(Sender: TObject);
    procedure ChangeInfo(Sender: TObject);
    procedure GenderComboBoxChange(Sender: TObject);
    procedure PlaceComboBoxChange(Sender: TObject);
    procedure StudyFormComboBoxChange(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SpecListDataSourceDataChange(Sender: TObject; Field: TField);
    procedure AbPhotoDblClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure isEgeComboBoxChange(Sender: TObject);
    procedure BirthDateEditChange(Sender: TObject);
    procedure PasspGetDateEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  procedure UpdateSpecList(const form : integer);
    { Public declarations }
  end;

var
  AbiturientForm: TAbiturientForm;
  hdib, testdib : hbitmap;
  w, h, n       : integer;


implementation

uses mark_main, MultiTWAIN, mark_lookupstudentsform;

{$R *.dfm}

procedure TAbiturientForm.UpdateSpecList(const form: integer);
begin
if StudyFormComboBox.ItemIndex >= 0 then
  begin
  SpecQuery.Close;
  SpecQuery.SQL.Clear;
  SpecQuery.SQL.Add('EXEC GetSpecList '+IntToStr(form));
  SpecQuery.Open;
  SpecComboBox.Enabled := true;
end else
  SpecComboBox.Enabled := false;
end;

procedure CallbackFxn(CurDib: THandle; index: Integer); stdcall;
begin
//   MessageBox(0, 'Called back!', 'CallbackFxn', mb_ok);
end;


procedure TAbiturientForm.BaseComboBoxChange(Sender: TObject);
begin
ChangeInfo(self);
end;

procedure TAbiturientForm.LangComboBoxChange(Sender: TObject);
begin
ChangeInfo(self);
end;

procedure TAbiturientForm.ChangeInfo(Sender: TObject);
begin
if AddExEdit.Text = '' then AddExEdit.Text := '0';
OkBtn.Enabled := (SpecComboBox.KeyValue <> NULL) and (Trim(FNameEdit.Text) <> '')
  and (Trim(MNameEdit.Text)<> '') and (Trim(LNameEdit.Text) <> '') and
  (LangComboBox.KeyValue <> NULL) and (StudyFormComboBox.ItemIndex >= 0);
end;

procedure TAbiturientForm.GenderComboBoxChange(Sender: TObject);
begin
if GenderComboBox.ItemIndex < 0 then
  GenderComboBox.ItemIndex := 0;
AbiturientQuery.FieldByName('ab_isMale').AsBoolean :=
  GenderComboBox.ItemIndex = 1;
ChangeInfo(self);
end;

procedure TAbiturientForm.PlaceComboBoxChange(Sender: TObject);
begin
if GenderComboBox.ItemIndex < 0 then
  GenderComboBox.ItemIndex := 0;
ChangeInfo(self);
end;

procedure TAbiturientForm.StudyFormComboBoxChange(Sender: TObject);

begin
if (StudyFormComboBox.ItemIndex < 0) then StudyFormComboBox.ItemIndex := 0;
AbiturientQuery.FieldByName('ab_isZaoch').AsBoolean :=
  StudyFormComboBox.ItemIndex = 1;
UpdateSpecList(StudyFormComboBox.ItemIndex);
OkBtn.Enabled := (SpecComboBox.KeyValue <> NULL) and (Trim(FNameEdit.Text) <> '')
  and (Trim(MNameEdit.Text)<> '') and (Trim(LNameEdit.Text) <> '') and
  (LangComboBox.KeyValue <> NULL);
end;

procedure TAbiturientForm.AddBtnClick(Sender: TObject);
var
form     : TLookupForm;
cont     : TContainer;
tmpquery : TADOQuery;
x        : integer;
selcount : integer;

begin
form := TLookupForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('SELECT * FROM Specialities ');
tmpquery.SQL.Add('  WHERE (sp_pcode != '''+
  MainForm.AStudentsQuery.FieldByName('av_rspcode').AsString+''') AND (sp_pcode NOT IN ');
tmpquery.SQL.Add('    (SELECT wsp_spcode FROM WSpecTable WHERE (wsp_abcode = '''+
  MainForm.AStudentsQuery.FieldByName('av_pcode').AsString+''')))');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    cont := TContainer.Create;
    cont.Name := tmpquery.FieldByName('sp_Comment').AsString;
    cont.Key := tmpquery.FieldByName('sp_pcode').AsString;
    form.ListBox.Items.AddObject(cont.Name, cont);
    end;
selcount := 0;
form.OkBtn.Enabled := form.ListBox.Items.Count > 0;
if form.ShowModal = mrOk then
  try
  for x := 0 to form.ListBox.Items.Count -1 do
    begin
    if form.ListBox.Checked[x] then
      begin
      inc(selcount);
      if selcount = 1 then
        begin
        Command.CommandText := 'BEGIN TRAN Tmarketing';
//        showmessage(command.CommandText);
        Command.Execute;
        end; // if selcount
      Command.CommandText := 'INSERT INTO WSpecTable(wsp_abcode, wsp_spcode) VALUES('''+
        MainForm.AStudentsQuery.FieldByName('av_pcode').AsString+''', '''+
        TContainer(form.ListBox.Items.Objects[x]).Key+''')';
//      ShowMessage(command.CommandText);
      Command.Execute;
      end; // if checked
    end; // for
  if selcount > 0 then
    begin
    Command.CommandText := 'COMMIT TRAN Tmarketing';
    Command.Execute;
//    ShowMessage(Command.CommandText);
    end;
  SpecListQuery.Requery;
  except
  if selcount > 0 then
    begin
    Command.CommandText := 'ROLLBACK TRAN Tmarketing';
    Command.Execute;
    end;
  MessageDlg('Ошибка при обработке транзакции!',mtError,[mbOk],0);
  end;
form.Free;
end;

procedure TAbiturientForm.DelBtnClick(Sender: TObject);
begin
if (mrYes = MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0)) then
  begin
  Command.CommandText := 'DELETE FROM WSpecTable WHERE (wsp_pcode = '''+
    SpecListQuery.FieldByName('wsp_pcode').AsString+''')';
  Command.Execute;
  SpecListQuery.Requery;
  end;
end;

procedure TAbiturientForm.SpecListDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
AddBtn.Enabled := SpecListQuery.Active;
DelBtn.Enabled := SpecListQuery.Active and (SpecListQuery.RecordCount > 0);
end;

procedure TAbiturientForm.AbPhotoDblClick(Sender: TObject);
var
img : TImage;
begin
TWAIN_SelectImageSource(0);
hdib := TWAIN_AcquireNative(0, 0);
n := TWAIN_GetNumDibs;
if n >= 1 then
   begin
   img := TImage.Create(self);
   img.Visible := false;
   TestDib := TWAIN_GetDib(0);
   CopyDibIntoImage(TestDib, img);
   AbPhoto.Picture := img.Picture;
   img.Free;
   TWAIN_FreeNative(TestDib);
   TestDib := 0;
   end;
end;

procedure TAbiturientForm.OkBtnClick(Sender: TObject);
begin
if (AbiturientQuery.State = dsInsert) or (AbiturientQuery.State = dsEdit) then
  begin
  if (StudyFormComboBox.ItemIndex < 0) then StudyFormComboBox.ItemIndex := 0;
  AbiturientQuery.FieldByName('ab_isZaoch').AsBoolean :=
    StudyFormComboBox.ItemIndex = 1;
  if GenderComboBox.ItemIndex < 0 then
    GenderComboBox.ItemIndex := 0;
  AbiturientQuery.FieldByName('ab_isMale').AsBoolean :=
    GenderComboBox.ItemIndex = 1;
  if (isEgeComboBox.ItemIndex < 0) then
    isEgeComboBox.ItemIndex := 0;
  AbiturientQuery.FieldByName('ab_examKind').AsInteger :=
    isEgeComboBox.ItemIndex;

  if AbiturientQuery.State = dsInsert then
  AbiturientQuery.FieldByName('ab_wspcode').AsString :=
    AbiturientQuery.FieldByName('ab_rspcode').AsString;
  AbiturientQuery.Post;
  end;
end;

procedure TAbiturientForm.isEgeComboBoxChange(Sender: TObject);
begin
if (isEgeComboBox.ItemIndex < 0) then
  isEgeComboBox.ItemIndex := 0;
AbiturientQuery.FieldByName('ab_examKind').AsInteger :=
  isEgeComboBox.ItemIndex;
end;

procedure TAbiturientForm.BirthDateEditChange(Sender: TObject);
begin
AbiturientQuery.FieldByName('ab_BirthDate').AsDateTime :=
  BirthDateEdit.Date;
  ChangeInfo(self);
end;

procedure TAbiturientForm.PasspGetDateEditChange(Sender: TObject);
begin
AbiturientQuery.FieldByName('ab_passptDate').AsDateTime :=
  PasspGetdateEdit.Date;
  ChangeInfo(self);
end;

procedure TAbiturientForm.FormShow(Sender: TObject);
begin
isEgeComboBox.ItemIndex := AbiturientQuery.FieldByName('ab_ExamKind').AsInteger;
BirthDateEdit.Date := AbiturientQuery.FieldByName('ab_BirthDate').AsDateTime;
PasspGetdateEdit.Date := AbiturientQuery.FieldByName('ab_passptDate').AsDateTime;
StudyFormComboBox.ItemIndex := 0;
if AbiturientQuery.FieldByName('ab_isZaoch').AsBoolean then
  StudyFormComboBox.ItemIndex := 1;
GenderComboBox.ItemIndex := 0;
if AbiturientQuery.FieldByName('ab_isMale').AsBoolean then
  GenderComboBox.ItemIndex := 1;
PlaceQuery.Close;
PlaceQuery.SQL.Clear;
PlaceQuery.SQL.Add('SELECT pl_pcode, pl_FullName, pl_hit FROM Places');
PlaceQuery.SQL.Add('WHERE pl_FullName IS NOT NULL');
PlaceQuery.SQL.Add('ORDER BY pl_hit DESC, pl_FullName');
PlaceQuery.Open;
LangQuery.Close;
LangQuery.SQL.Clear;
LangQuery.SQL.Add('SELECT * FROM Languages ORDER BY lg_index');
LangQuery.Open;
BaseQuery.Close;
BaseQuery.SQL.Clear;
BaseQuery.SQL.Add('SELECT * FROM Bases ORDER BY bs_pcode');
BaseQuery.Open;
ChangeInfo(self);
// added for TWAIN :)
hDib := 0;
w := 0; h := 0;
testDib := 0;
TWAIN_RegisterCallback(CallbackFxn);
end;

end.
