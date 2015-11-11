unit mark_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB, ToolWin, StdCtrls,
  Menus, ActnList, ActnMan, QRCtrls, DBCtrls, Spin;

type
  TMainForm = class(TForm)
    StatusBar: TStatusBar;
    AbiturientsTabSheet: TPageControl;
    FormedTabSheet: TTabSheet;
    ArchiveTabSheet: TTabSheet;
    FGroupQuery: TADOQuery;
    FStudentsQuery: TADOQuery;
    AStudentsQuery: TADOQuery;
    FGroupDataSource: TDataSource;
    FStudentsDataSource: TDataSource;
    AStudentsDataSource: TDataSource;
    GroupGrid: TDBGrid;
    Splitter1: TSplitter;
    StudentGrid: TDBGrid;
    CandidateGrid: TDBGrid;
    ToolBar1: TToolBar;
    Connection: TADOConnection;
    Command: TADOCommand;
    GroupBox: TGroupBox;
    SpecComboBox: TComboBox;
    MainMenu: TMainMenu;
    AbiturientsPopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ActionManager: TActionManager;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    AddAbiturientAction: TAction;
    EditAbiturientAction: TAction;
    DelAbiturientAction: TAction;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    SpecCheckBox: TCheckBox;
    MBallCheckBox: TCheckBox;
    GroupBallCheckBox: TCheckBox;
    MBallEdit: TEdit;
    GroupBallEdit: TEdit;
    FGroupPopupMenu: TPopupMenu;
    FStudentsPopupMenu: TPopupMenu;
    NewGroupAction: TAction;
    N10: TMenuItem;
    EditGroupAction: TAction;
    DeleteGroupAction: TAction;
    N11: TMenuItem;
    N12: TMenuItem;
    AddStudentsToGroupAction: TAction;
    AddStudentsToGroupAction1: TMenuItem;
    DeleteStudentFromGroupAction: TAction;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    BaseCheckBox: TCheckBox;
    BaseComboBox: TComboBox;
    ZaochCheckBox: TCheckBox;
    FNameCheckBox: TCheckBox;
    FNameEdit: TEdit;
    CompReportItem: TMenuItem;
    FormComboBox: TComboBox;
    CommercialCheckBox: TCheckBox;
    CommercialComboBox: TComboBox;
    AddCheckBox: TCheckBox;
    Bevel1: TBevel;
    CastingFormAction: TAction;
    CastingFormAction1: TMenuItem;
    N16: TMenuItem;
    ResultReportItem: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    isegeCheckBox: TCheckBox;
    EgeComboBox: TComboBox;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    SpecListReportItem: TMenuItem;
    N34: TMenuItem;
    AddSpecListReportItem: TMenuItem;
    N33: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    ArchiveAction: TAction;
    ArchivaTabSheet: TTabSheet;
    ArGrid: TDBGrid;
    ToolBar2: TToolBar;
    GroupBox1: TGroupBox;
    Bevel2: TBevel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox4: TCheckBox;
    ComboBox2: TComboBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Edit3: TEdit;
    ComboBox3: TComboBox;
    CheckBox7: TCheckBox;
    ComboBox4: TComboBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    ComboBox5: TComboBox;
    ArDataSource: TDataSource;
    ArQuery: TADOQuery;
    ArPopupMenu: TPopupMenu;
    N37: TMenuItem;
    N38: TMenuItem;
    ArDelAction: TAction;
    ArRestoreAction: TAction;
    StudentsListAction: TAction;
    ToolBar3: TToolBar;
    GroupBox2: TGroupBox;
    StInYearCheckBox: TCheckBox;
    StInYearEdit: TSpinEdit;
    N39: TMenuItem;
    SvodReportExportMenuItem: TMenuItem;
    ParentLessCheckBox: TCheckBox;
    InvalidCheckBox: TCheckBox;
    N40: TMenuItem;
    N41: TMenuItem;
    AllListReportItem: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure AStudentsDataSourceDataChange(Sender: TObject;
      Field: TField);
    procedure AddAbiturientActionExecute(Sender: TObject);
    procedure EditAbiturientActionExecute(Sender: TObject);
    procedure DelAbiturientActionExecute(Sender: TObject);
    procedure FilterRecords(Sender: TObject);
    procedure FGroupDataSourceDataChange(Sender: TObject; Field: TField);
    procedure NewGroupActionExecute(Sender: TObject);
    procedure EditGroupActionExecute(Sender: TObject);
    procedure DeleteGroupActionExecute(Sender: TObject);
    procedure AddStudentsToGroupActionExecute(Sender: TObject);
    procedure DeleteStudentFromGroupActionExecute(Sender: TObject);
    procedure FStudentsDataSourceDataChange(Sender: TObject;
      Field: TField);
    procedure CompReportItemClick(Sender: TObject);
    procedure CastingFormActionExecute(Sender: TObject);
    procedure ResultReportItemClick(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure CandidateGridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure N19Click(Sender: TObject);
    procedure CandidateGridDblClick(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure SpecListReportItemClick(Sender: TObject);
    procedure AddSpecListReportItemClick(Sender: TObject);
    procedure ArchiveActionExecute(Sender: TObject);
    procedure ArDelActionExecute(Sender: TObject);
    procedure ArRestoreActionExecute(Sender: TObject);
    procedure ArDataSourceDataChange(Sender: TObject; Field: TField);
    procedure ArGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure StudentsListActionExecute(Sender: TObject);
    procedure FilterStudents(Sender: TObject);
    procedure SvodReportExportMenuItemClick(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure AllListReportItemClick(Sender: TObject);
  private
    { Private declarations }
  CID : string;
  DirectorName : string;
  SchoolName   : string;
  MinistryName : string;
  public
  procedure TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses kern, mark_abiturient, dep_groupform, mark_lookupstudentsform,
  mark_comprepform, mark_castingform, mark_resultsrepform, mark_inforepform,
  mark_deskinforepform, mark_speclistrepform, mark_addspeclistrepform,
  mark_studentlistreportform, mark_deskpreinforepform;

{$R *.dfm}

//{$define debug}

procedure TMainForm.TextAngle(const c:TCanvas; angle: integer; s: integer; text: string);
var
LogFont : TLOGFONT;
size    : integer;
x       : integer;
pos     : integer;
fwidth  : integer;

begin
size := 10;
pos := 0;
fwidth := c.ClipRect.Bottom - c.ClipRect.Top;
if s >= 10 then size := s;
c.Brush.Style := bsSolid;
c.Font.Style := [];
GetObject(c.Font.Handle, SizeOf(LOGFONT), @LogFont);
LogFont.lfHeight := size;
LogFont.lfEscapement := angle*10 ;
LogFont.lfOrientation := angle*10;
LogFont.lfCharSet := DEFAULT_CHARSET;
LogFont.lfFaceName := 'Arial';
c.FillRect(c.ClipRect);
c.Font.Handle := CreateFontIndirect(LogFont);
if c.TextWidth(text) > fwidth then
 for x := 1 to length(text) do
  if ((text[x] = ' ') or (text[x] = '-')) and
  (c.TextWidth(Copy(text,1,x)) <= fwidth) then
     pos := x;
if pos > 0 then
begin
c.TextOut(1,c.ClipRect.Bottom-5,Copy(text,1,pos));
c.TextOut(c.TextHeight(text),c.ClipRect.Bottom-5,Copy(text,pos,length(text)-pos+1));
end else
c.TextOut(1,c.ClipRect.Bottom-5,text);
end;



procedure TMainForm.FormCreate(Sender: TObject);
var
cont     : TContainer;
tmpquery : TADOQuery;
x        : integer;

begin
// Correct the path to file
StInYearEdit.Value := CurrentYear;
CID := '';
Connection.ConnectionString := 'FILE NAME='+
  ExtractFilePath(Application.ExeName)+filename;
  BaseComboBox.ItemIndex := 0;
  FormComboBox.ItemIndex := 0;
try
  Connection.Open;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add('SELECT * FROM Schools WHERE (sc_default = 1)');
  tmpquery.Open;
  if tmpquery.recordCount > 0 then
    begin
    DirectorName := tmpquery.FieldByName('sc_DName').AsString;
    SchoolName := tmpquery.FieldByName('sc_Name').AsString;
    MinistryName := tmpquery.FieldByName('sc_MinistryName').AsString;
    end;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT * FROM Casting WHERE ct_Year = Year(GETDATE())');
  tmpquery.Open;
  if (tmpquery.RecordCount > 0) then
    CID := tmpquery.FieldByName('ct_pcode').AsString;
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT sp_pcode, sp_Key, sp_ShortName FROM Specialities');
  tmpquery.SQL.Add('WHERE sp_ShortName is not NULL');
  tmpquery.SQL.Add('ORDER BY sp_key');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    cont := TContainer.Create;
    cont.Key := tmpquery.FieldByName('sp_pcode').AsString;
    cont.Name := tmpquery.FieldByName('sp_Key').AsString+' ('+
      tmpquery.FieldByName('sp_ShortName').AsString+')';
    SpecComboBox.Items.AddObject(cont.Name, cont);
    end;
  tmpquery.Close;
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('SELECT bs_Text, bs_pcode FROM Bases');
  tmpquery.SQL.Add('WHERE bs_Text is not NULL');
  tmpquery.SQL.Add('ORDER BY bs_pcode');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    cont := TContainer.Create;
    cont.Key := tmpquery.FieldByName('bs_pcode').AsString;
    cont.Name := tmpquery.FieldByName('bs_Text').AsString;
    BaseComboBox.Items.AddObject(cont.Name, cont);
    end;
  tmpquery.Free;
  AStudentsQuery.SQL.Clear;
  if (CID <> '') then
    begin
    AStudentsQuery.SQL.Add('SELECT * FROM AbiturientsView WHERE (av_Attributes = 0) AND (av_grcode is NULL) AND (av_ctcode = '''+
      CID+''')');
    AStudentsQuery.SQL.Add('ORDER BY av_isParentLess DESC, av_isInvalid DESC, av_isMedal DESC, '+
    'av_isVeteran DESC, av_isFurtherLess DESC, av_isDocMissing, (av_GroupBall) DESC, (av_mball * av_Ex1 * av_Ex2) DESC, av_Name');
    AStudentsQuery.Open;
    ArQuery.SQL.Clear;
    ArQuery.SQL.Add('SELECT * FROM AbiturientsView WHERE (av_Attributes = '+
      IntToStr(ARCH)+') AND (av_grcode is NULL) AND (av_ctcode = '''+
      CID+''')');
    ArQuery.SQL.Add('ORDER BY av_isParentLess DESC, av_isInvalid DESC, av_isMedal DESC, '+
    'av_isVeteran DESC, av_isFurtherLess DESC, (av_GroupBall) DESC, (av_mball * av_Ex1 * av_Ex2) DESC, av_Name');
    ArQuery.Open;
    FGroupQuery.SQL.Clear;
    FGroupQuery.SQL.Add('SELECT * FROM Groups WHERE (gr_Attributes = 0) AND (gr_Course < 3) ORDER BY gr_Name');
    FGroupQuery.Open;
//  MainForm.WindowState := wsMaximized;
    end else
      MessageDlg('Нет подходящих приемных комиссий! Добавить комиссии можно в меню "Файл"',
        mtWarning, [mbOk], 0);
  SpecComboBox.ItemIndex := 0;
  // TODO
  // Add code for groups and students
except
  on e: Exception do
  begin
  MessageDlg('Невозможно подключиться к серверу: '+e.Message, mtError, [mbOk], 0);
  Application.Terminate;
  end;
end; // try
if (CID <> '') then
  begin
  StatusBar.Panels[0].Text := 'Абитуриентов: '+IntToStr(AStudentsQuery.RecordCount);
  AddAbiturientAction.Enabled := AStudentsQuery.Active;
  EditAbiturientAction.Enabled := AStudentsQuery.Active and
    (AStudentsQuery.RecordCount > 0);
  DelAbiturientAction.Enabled := AStudentsQuery.Active and
    (AStudentsQuery.RecordCount > 0);
  end; // if
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TMainForm.AStudentsDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
StatusBar.Panels[0].Text := 'Абитуриентов: '+IntToStr(AStudentsQuery.RecordCount);
AddAbiturientAction.Enabled := AStudentsQuery.Active and (CID <> '');
EditAbiturientAction.Enabled := AStudentsQuery.Active and
  (AStudentsQuery.RecordCount > 0) and (CID <> '');
DelAbiturientAction.Enabled := AStudentsQuery.Active and
  (AStudentsQuery.RecordCount > 0) and (CID <> '');
ArchiveAction.Enabled := AStudentsQuery.Active and
  (AStudentsQuery.RecordCount > 0) and (CID <> '');
end;

procedure TMainForm.AddAbiturientActionExecute(Sender: TObject);
var
form   : TAbiturientForm;
{course : integer;
str    : string;
ex1    : string;
ex2    : string;
sstr   : string;
fexp   : string;
sexp   : string;
parent : integer;
foreign: integer;
hotel  : integer;
old    : integer;
invalid: integer;
medal  : integer;
town   : integer;
veteran: integer;
further: integer;
budget : integer;
passed : integer;
village: integer;
docmis : integer;}


{$ifdef debug}
fout : textfile;
{$endif}

begin
form := TAbiturientForm.Create(self);
form.Caption := 'Новый абитуриент';
form.AbiturientQuery.Close;
form.AbiturientQuery.SQL.Clear;
form.AbiturientQuery.SQL.Add('SELECT * FROM Abiturients WHERE ab_pcode = NULL');
form.AbiturientQuery.Open;
form.AbiturientQuery.Append;
form.AbiturientQuery.FieldByName('ab_ctcode').AsString := CID;
form.ShowModal;
form.Free;
AStudentsQuery.Requery;
{
if form.ShowModal = mrOk then
  begin
  str := GetDottedFloat(form.BallEdit.Text);
  ex1 := GetDottedFloat(form.Ex1Edit.Text);
  ex2 := GetDottedFloat(form.Ex2Edit.Text);
  fexp := GetDottedFloat(form.FullExpEdit.Text);
  sexp := GetDottedFloat(form.SpecExpEdit.Text);
  sstr := IntToStr(StrToIntDef(form.SerialEdit.Text, 0));
  village := 0;
  if form.isVillageCheckBox.Checked then
    village := 1;
  course := 0;
  if form.CourseCheckBox.Checked then
    course := 1;
  foreign := 0;
  if form.isForeignCheckBox.Checked then
    foreign := 1;
  parent := 0;
  if form.isParentLessCheckBox.Checked then
    parent := 1;
  hotel := 0;
  if form.HotelCheckBox.Checked then
    hotel := 1;
  old := 0;
  if form.OldDocumentCheckBox.Checked then
    old := 1;
  invalid := 0;
  if form.InvalidCheckBox.Checked then
    invalid := 1;
  medal := 0;
  if form.MedalCheckBox.Checked then
    medal := 1;
  town := 0;
  if form.OtherTownCheckBox.Checked then
    town := 1;
  further := 0;
  if form.FurtherLessCheckBox.Checked then
    further := 1;
  veteran := 0;
  if form.VeteranCheckBox.Checked then
    veteran := 1;
  budget := 0;
  if form.CommercialCheckBox.Checked then
    budget := 1;
  passed := 0;
  if form.PassCheckBox.Checked then
    passed := 1;
  docmis := 0;
  if form.DocMissingCheckBox.Checked then
    docmis := 1;
  try
  Command.CommandText := 'INSERT INTO Abiturients(ab_FName, ab_MName, ab_LName, '+
    'ab_Address, ab_School, ab_wspcode, ab_rspcode, ab_HasCourse, '+
    'ab_Ex1, ab_Ex2, ab_mball, ab_Serial, ab_lang, ab_fullexp, ab_specexp, '+
    'ab_isForeign, ab_Comment, ab_isParentLess, ab_isZaoch, ab_basecode, '+
    'ab_isHotel, ab_isOldDocument, ab_isMale, ab_isInvalid, ab_isMedal, '+
    'ab_isFurtherLess, ab_isVeteran, ab_isOtherTown, ab_Document, '+
    'ab_isCommercial, ab_plcode, ab_isPassed, ab_ctcode, ab_ExamKind, ab_BirthDate, '+
    'ab_PassptSeria, ab_PassptNum, ab_PassptDate, ab_PassptDept, '+
    'ab_INN, ab_BankDep, ab_BankNum, ab_HomePhone, ab_WorkPhone, ab_CellPhone, ab_isVillage, ab_isDocMissing) VALUES('''+
    form.FNameEdit.Text+''', '''+form.MNameEdit.Text+''', '''+form.LNameEdit.Text+''', '''+
    form.AddressEdit.Text+''', '''+form.SchoolEdit.Text+''', '''+
    TContainer(form.SpecComboBox.Items.Objects[form.SpecComboBox.ItemIndex]).Key+''', '''+
    TContainer(form.SpecComboBox.Items.Objects[form.SpecComboBox.ItemIndex]).Key+''', '+
    IntToStr(course)+', '+ex1+', '+ex2+', '+str+', '+sstr+', '+
    IntToStr(form.LangComboBox.ItemIndex+1)+', '+ fexp+', '+sexp+', '+
    IntToStr(foreign)+', '''+form.CommentEdit.Text+''', '+intToStr(parent)+', '+
    IntToStr(form.StudyFormComboBox.ItemIndex)+', '+
    TContainer(form.BaseComboBox.Items.Objects[form.BaseComboBox.ItemIndex]).Key+', '+
    IntToStr(hotel)+', '+IntToStr(old)+', '+IntToStr(form.GenderComboBox.ItemIndex)+', '+
    IntToStr(invalid)+', '+IntToStr(medal)+', '+IntToStr(further)+', '+
    IntToStr(veteran)+', '+IntToStr(town)+', '''+form.DocumentMemo.Text+''', '+
    IntToStr(budget)+', '''+TContainer(form.PlaceComboBox.Items.Objects[form.PlaceComboBox.ItemIndex]).Key+
    ''', '+IntToStr(passed)+', '''+CID+''', '+IntToStr(form.isEgeComboBox.ItemIndex)+', '''+
    DateTimeToStr(form.BirthDateEdit.Date)+''', '''+form.PasspSeriaEdit.Text+''', '''+form.PasspNumEdit.Text+''', '''+
    DateTimeToStr(form.PasspGetDateEdit.Date)+''', '''+form.PasspGetWhoEdit.Text+''', '''+form.INNEdit.Text+''', '''+
    form.BankDepEdit.Text+''', '''+form.BankNumEdit.Text+''', '''+Form.HPhoneEdit.Text+''', '''+
    form.WPhoneEdit.Text+''', '''+form.MPhoneEdit.Text+''', '+IntToStr(village)+', '+IntToStr(docmis)+');';
  Command.Execute;
  AStudentsQuery.Requery;
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  end; // try
  end;
form.Free; }

end;

procedure TMainForm.EditAbiturientActionExecute(Sender: TObject);
var
form   : TAbiturientForm;
{course : integer;
x      : integer;
str    : string;
ex1    : string;
ex2    : string;
fexp   : string;
sexp   : string;
parent : integer;
foreign: integer;
key    : string;
serstr : string;
hotel  : integer;
old    : integer;
invalid: integer;
medal  : integer;
town   : integer;
veteran: integer;
further: integer;
gender : boolean;
budget : integer;
passed : integer;
village: integer;
docmis : integer; }

begin
form := TAbiturientForm.Create(self);
form.Caption := 'Новый абитуриент';
form.AbiturientQuery.Close;
form.AbiturientQuery.SQL.Clear;
form.AbiturientQuery.SQL.Add('SELECT * FROM Abiturients WHERE (ab_pcode = '''+
  AStudentsQuery.FieldByName('av_pcode').AsString+''');');
form.AbiturientQuery.Open;
form.AbiturientQuery.Edit;
form.ShowModal;
form.Free;
AStudentsQuery.Requery;
end;

procedure TMainForm.DelAbiturientActionExecute(Sender: TObject);
begin
if MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
  Command.CommandText := 'DELETE FROM Abiturients WHERE (ab_pcode = '''+
    AStudentsQuery.FieldByName('av_pcode').AsString+''');';
  Command.Execute;
  AStudentsQuery.Requery;
  end;
end;

procedure TMainForm.FilterRecords(Sender: TObject);
var
x        : integer;
count    : integer;
fstr     : string;
tmpstr   : string;
float    : double;
tmpquery : TADOQuery;

begin
fstr := '';
float := 0;
if (SpecCheckBox.Checked) and (SpecComboBox.ItemIndex > 0) then
  fstr := '(av_rspcode = '''+TContainer(SpecComboBox.Items.Objects[SpecComboBox.ItemIndex]).Key+''')';
if MBallCheckBox.Checked then
  begin
  tmpstr := Trim(MBallEdit.Text);
  for x := 1 to length(tmpstr) do
    if tmpstr[x] = '.' then
      tmpstr[x] := ',';
    float := StrToFloatDef(tmpstr,0);
    if float > 0 then
      begin
      if (fstr <> '') then
        fstr := fstr + ' AND (av_mball >= '+FloatToStr(float)+')' else
        fstr := '(av_mball >= '+FloatToStr(float)+')';
      end;
  for x := 1 to length(fstr) do
    if fstr[x] = ',' then
      fstr[x] := '.';
  end else
  MBallEdit.Text := '';
if GroupBallCheckBox.Checked then
  begin
  tmpstr := Trim(GroupBallEdit.Text);
  for x := 1 to length(tmpstr) do
    if tmpstr[x] = '.' then
      tmpstr[x] := ',';
    float := StrToFloatDef(tmpstr,0);
    if float > 0 then
      begin
      if (fstr <> '') then
        fstr := fstr + ' AND (av_GroupBall >= '+FloatToStr(float)+')' else
        fstr := '(av_GroupBall >= '+FloatToStr(float)+')';
      end;
  for x := 1 to length(fstr) do
    if fstr[x] = ',' then
      fstr[x] := '.';
  end else
  GroupBallEdit.Text := '';
if (BaseCheckBox.Checked) and (BaseComboBox.ItemIndex > 0) then
  begin
  if (fstr <> '') then
    fstr := fstr + ' AND (av_basecode = '+IntToStr(BaseComboBox.ItemIndex)+')' else
    fstr := fstr + '(av_basecode = '+IntToStr(BaseComboBox.ItemIndex)+')';
  end;
if (ZaochCheckBox.Checked) and (FormComboBox.ItemIndex > 0)then
  case FormComboBox.ItemIndex of
  1: if (fstr <> '') then
       fstr := fstr + ' AND (av_isZaoch = false)' else
       fstr := fstr + '(av_isZaoch = false)';
  2: if (fstr <> '') then
       fstr := fstr + ' AND (av_isZaoch = true)' else
       fstr := fstr + '(av_isZaoch = true)';
  end;
if (CommercialCheckBox.Checked) and (CommercialComboBox.ItemIndex > 0) then
  case CommercialComboBox.ItemIndex of
  1: if (fstr <> '') then
       fstr := fstr + ' AND (av_isCommercial = false)' else
       fstr := fstr + '(av_isCommercial = false)';
  2: if (fstr <> '') then
       fstr := fstr + ' AND (av_isCommercial = true)' else
       fstr := fstr + '(av_isCommercial = true)';
  end;
if (ParentLessCheckBox.Checked) then
  begin
  if (fstr <> '') then
       fstr := fstr + ' AND (av_isParentLess = true)' else
       fstr := fstr + '(av_isParentLess = true)';
  end;
if (InvalidCheckBox.Checked) then
  begin
  if (fstr <> '') then
       fstr := fstr + ' AND (av_isInvalid = true)' else
       fstr := fstr + '(av_isInvalid = true)';
  end;
if FNameCheckBox.Checked and (Trim(FNameEdit.Text) <> '') then
  begin
  if (fstr <> '') then
    fstr := fstr + ' AND (av_FName like '''+FNameEdit.Text+'%'')' else
    fstr := fstr + '(av_FName like '''+FNameEdit.Text+'%'')';
  end;
if (isegeCheckBox.Checked) and (EgeComboBox.ItemIndex >= 0) then
  begin
  if (fstr <> '') then
    fstr := fstr + ' AND (av_ExamKind = '+IntToStr(EgeComboBox.ItemIndex)+')' else
    fstr := fstr + '(av_ExamKind = '+IntToStr(EgeComboBox.ItemIndex)+')';
  end;

AStudentsQuery.Filtered := false;
if fstr <> '' then
  begin
  AStudentsQuery.Filter := fstr;
  AStudentsQuery.Filtered := true;
  end;
StatusBar.Panels[3].Text := '';
compReportItem.Enabled := false;
if (BaseComboBox.ItemIndex > 0) and
  (SpecComboBox.ItemIndex > 0) and (FormComboBox.ItemIndex > 0) and
  (SpecCheckBox.Checked) and (ZaochCheckBox.Checked) and (BaseCheckBox.Checked) and
  (CommercialCheckBox.Checked) and (CommercialComboBox.ItemIndex > 0) then
  begin
  compReportItem.Enabled := true;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add('SELECT * FROM CtPlans WHERE (ctp_spcode = '''+
    TContainer(SpecComboBox.Items.Objects[SpecComboBox.ItemIndex]).Key+
    ''') AND (ctp_ctcode = '''+CID+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    begin
    count := 0;
    float := 0;
      case (FormComboBox.ItemIndex * 10 + CommercialComboBox.ItemIndex) of
      11 : count := tmpquery.FieldByName('ctp_obplan').AsInteger;
      12 : count := tmpquery.FieldByName('ctp_ocplan').AsInteger;
      21 : count := tmpquery.FieldByName('ctp_zbplan').AsInteger;
      22 : count := tmpquery.FieldByName('ctp_zcplan').AsInteger;
      end; // case
    if AStudentsQuery.RecordCount < count then
      count := AStudentsQuery.RecordCount;
    for x := 1 to count do
      begin
      AStudentsQuery.RecNo := x;
      float := float + AStudentsQuery.FieldByName('av_mball').AsFloat;
      end; // for
    AStudentsQuery.First;
    if count > 0 then
    float := float / count;
    end;
  tmpquery.Free;
  StatusBar.Panels[3].Text := 'Итоговый средний балл равен '+FormatFloat('#.##', float);
  end;
resultReportItem.Enabled := (ZaochCheckBox.Checked) and (FormComboBox.ItemIndex > 0);
specListReportItem.Enabled := compReportItem.Enabled;
addSpecListReportItem.Enabled := compReportItem.Enabled;
//svodReportExportMenuItem.Enabled := compReportItem.Enabled;
end;


procedure TMainForm.FGroupDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
// get students for group
StatusBar.Panels[1].Text := 'Групп: '+IntToStr(FGroupQuery.RecordCount);
if FStudentsQuery.Active then
  FStudentsQuery.Close;
AddStudentsToGroupAction.Enabled := false;
EditGroupAction.Enabled := false;
DeleteGroupAction.Enabled := false;
if (FGroupQuery.State = dsBrowse) and (FGroupQuery.RecordCount > 0) then
  begin
  FStudentsQuery.SQL.Clear;
  FStudentsQuery.SQL.Add('SELECT * FROM AbiturientsView WHERE av_grcode = '''+
    FGroupQuery.FieldByName('gr_pcode').AsString+''' ORDER BY av_Name;');
  FStudentsQuery.Open;
  AddStudentsToGroupAction.Enabled := true;
  EditGroupAction.Enabled := true;
  DeleteGroupAction.Enabled := true;
  end;
end;


procedure TMainForm.NewGroupActionExecute(Sender: TObject);
var
form     : TGroupform;
int      : integer;

begin
form := TGroupForm.Create(self);
if form.ShowModal = mrOk then
  begin
  int := 0;
  if form.CommercialCheckBox.checked then
    int := 1;
  Command.CommandText := 'BEGIN TRAN trAdd';
  Command.Execute;
  try
    Command.CommandText :=
    'INSERT INTO Groups (gr_Name, gr_Course, gr_Commercial, '+
    'gr_CreateYear, gr_speccode, gr_LernLength, gr_ShortLernLength, gr_depcode, gr_isZaoch) SELECT '''+
    form.NameEdit.Text+''', '''+IntToStr(form.CourseEdit.Value)+''', '''+IntToStr(int)+''', '''+
    IntToStr(form.CreateYearEdit.Value)+''', '''+
    TContainer(form.SpecComboBox.Items.Objects[form.SpecComboBox.ItemIndex]).Key+
    ''', '''+form.LernLengthEdit.Text+''', '''+form.ShortLernLengthEdit.Text+
    ''', dp_pcode, dp_isZaoch FROM Departments WHERE (dp_pcode = '''+
    TContainer(form.DepComboBox.Items.Objects[form.DepComboBox.ItemIndex]).Key+''');';
    Command.Execute;
    Command.CommandText := 'COMMIT TRAN trAdd';
    Command.Execute;
  except
    Command.CommandText := 'ROLLBACK TRAN trAdd';
    Command.Execute;
    MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  end; // try
  FGroupQuery.Requery;
  end;
form.Free;
end;


procedure TMainForm.EditGroupActionExecute(Sender: TObject);
var
form : TGroupForm;
x    : integer;
key  : string;

begin
form := TGroupForm.Create(self);
form.NameEdit.Text := FGroupQuery.FieldByName('gr_Name').AsString;
form.CommercialCheckBox.Checked := FGroupQuery.FieldByName('gr_Commercial').AsBoolean;
form.CourseEdit.Value := FGroupQuery.FieldByName('gr_Course').AsInteger;
form.LernLengthEdit.Text := FGroupQuery.FieldByName('gr_LernLength').AsString;
form.ShortLernLengthEdit.Text := FGroupQuery.FieldByName('gr_ShortLernLength').AsString;
form.CreateYearEdit.Value := FGroupQuery.FieldByName('gr_CreateYear').AsInteger;
key := FGroupQuery.FieldByName('gr_depcode').AsString;
for x := 0 to form.DepComboBox.Items.Count -1 do
  if TContainer(form.DepComboBox.Items.Objects[x]).Key = key then
    begin
    form.DepComboBox.ItemIndex := x;
    form.DepComboBoxChange(self);
    end;
key := FGroupQuery.FieldByName('gr_speccode').AsString;
for x := 0 to form.SpecComboBox.Items.Count -1 do
  if TContainer(form.SpecComboBox.Items.Objects[x]).Key = key then
    form.SpecComboBox.ItemIndex := x;
if form.ShowModal = mrOk then
  begin
  x := 0;
  if form.CommercialCheckBox.Checked then
    x := 1;
  Command.CommandText :=
  'UPDATE Groups SET gr_Name = '''+form.NameEdit.Text+''', '+
  'gr_Commercial = '''+IntToStr(x)+''', '+
  'gr_CreateYear = '''+IntToStr(form.CreateYearEdit.Value)+''', '+
  'gr_speccode = '''+
    TContainer(form.SpecComboBox.Items.Objects[form.SpecComboBox.ItemIndex]).Key+
  ''', '+'gr_LernLength = '''+form.LernLengthEdit.Text+''', '+
  'gr_ShortLernLength = '''+form.ShortLernLengthEdit.Text+''', '+
  'gr_depcode = '''+TContainer(form.DepComboBox.Items.Objects[form.DepComboBox.ItemIndex]).Key+
  ''', gr_isZaoch = (SELECT dp_isZaoch FROM Departments WHERE (dp_pcode = '''+
  TContainer(form.DepComboBox.Items.Objects[form.DepComboBox.ItemIndex]).Key+
  ''')) WHERE gr_pcode = '''+FGroupQuery.FieldByName('gr_pcode').AsString+''';';
  Command.Execute;
  FGroupQuery.Requery;
  end;
end;


procedure TMainForm.DeleteGroupActionExecute(Sender: TObject);
begin
if MessageDlg(DELETE_REQ,mtWarning,[mbYes, mbNo],0) = mrYes then
  try
  Command.CommandText := 'DELETE FROM Groups WHERE gr_pcode = '''+
    FGroupQuery.FieldByName('gr_pcode').AsString+''';';
  Command.Execute;
  FGroupQuery.Requery;
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  end;
end;

procedure TMainForm.AddStudentsToGroupActionExecute(Sender: TObject);
var
form     : TLookupForm;
cont     : TContainer;
tmpquery : TADOQuery;
x        : integer;
selcount : integer;
lstr     : string;
comm     : string;

begin
form := TLookupForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
comm := '0';
if FGroupQuery.FieldByName('gr_Commercial').AsBoolean then
  comm := '1';
tmpquery.SQL.Add('SELECT * FROM Abiturients WHERE (ab_grcode is NULL) AND (ab_ctcode = '''+
    CID+''') AND (ab_rspcode = '''+FGroupQuery.FieldByName('gr_speccode').AsString+
    ''') AND (ab_isCommercial = '+comm+')');
tmpquery.SQL.Add('ORDER BY ab_isParentLess DESC, ab_isInvalid DESC, ab_isMedal DESC, '+
    'ab_isVeteran DESC, ab_isFurtherLess DESC, ab_isDocMissing, (ab_GroupBall) DESC, (ab_mball * ab_Ex1 * ab_Ex2) DESC, ab_Name');
//tmpquery.SQL.Add('ORDER BY ab_Name');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    lstr := '';
    if tmpquery.FieldByName('ab_isParentLess').AsBoolean or
      tmpquery.FieldByName('ab_isInvalid').AsBoolean or
      tmpquery.FieldByName('ab_isMedal').AsBoolean or
      tmpquery.FieldByName('ab_isVeteran').AsBoolean or
      tmpquery.FieldByName('ab_isFurtherLess').AsBoolean then
      lstr := ', льготник';
    cont := TContainer.Create;
    cont.Name := tmpquery.FieldByName('ab_Name').AsString+' ('+
    tmpquery.FieldByName('ab_GroupBall').AsString+lstr+')';
    cont.Key := tmpquery.FieldByName('ab_pcode').AsString;
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
      Command.CommandText := 'UPDATE Abiturients SET ab_grcode = '''+
        FGroupQuery.FieldByName('gr_pcode').AsString+''' WHERE ab_pcode = '''+
        TContainer(form.ListBox.Items.Objects[x]).Key+'''';
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
  FStudentsQuery.Requery;
  AStudentsQuery.Requery;
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

procedure TMainForm.DeleteStudentFromGroupActionExecute(Sender: TObject);
begin
// Удалить студента из группы.
if MessageDlg('Действительно удалить студента из группы?',mtWarning,[mbYes, mbNo],0) = mrYes then
  begin
  Command.CommandText := 'UPDATE Abiturients SET ab_grcode = NULL WHERE ab_pcode = '''+
    FStudentsQuery.FieldByName('av_pcode').AsString+'''';
//  ShowMessage(Command.CommandText);
  Command.Execute;
  FStudentsQuery.Requery;
  AStudentsQuery.Requery;
  end;
end;

procedure TMainForm.FStudentsDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
StatusBar.Panels[2].Text := 'Студентов в выбранной группе: '+IntToStr(FStudentsQuery.RecordCount);
DeleteStudentFromGroupAction.Enabled := (FStudentsQuery.State = dsBrowse) and
  (FStudentsQuery.RecordCount > 0);
end;

procedure TMainForm.CompReportItemClick(Sender: TObject);
const
//SchoolName = 'ФГОУ СПО Прокопьевский горнотехнический колледж им. В.П.Романова';
prefix     = '______________________________________________________________________________________________ ';

var
form     : TCompReportForm;
base     : string;
group    : string;
sform    : string;
tmpquery : TADOQuery;
spec     : string;
add      : string;
x        : integer;
lb       : TQRLabel;

begin
// Make a composite report.
case FormComboBox.ItemIndex of
1: sform := 'очной';
2: sform := 'заочной';
end;
case BaseComboBox.ItemIndex of
1: base := 'основного общего образования';
2: base := 'среднего (полного) общего образования';
end; // case
case CommercialComboBox.ItemIndex of
1: group := 'бюджет';
2: group := 'полное возмещение затрат';
end;
add := '';
if AddCheckBox.Checked then
  add := ', дополнительный набор';
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE sp_pcode = '''+
  TContainer(SpecComboBox.Items.Objects[SpecComboBox.ItemIndex]).Key+''';');
//tmpquery.SQL.SaveToFile('query.sql');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  begin
  spec := tmpquery.FieldByName('sp_FullKey').AsString+' "'+tmpquery.FieldByName('sp_Name').AsString+'"';
  end;
form := TCompReportForm.Create(self);
form.isZaoch := BaseComboBox.ItemIndex = 2;
form.SchoolLabel.Caption := MinistryName+#$D+SchoolName;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT * FROM Casting, CtMembers, Workers');
tmpquery.SQL.Add('WHERE (ctm_ctcode = ct_pcode) AND (ctm_wkcode = wk_pcode)');
tmpquery.SQL.Add('AND (ct_Year = YEAR(GETDATE())) ORDER BY ctm_index, wk_ShortName;');
//tmpquery.SQL.SaveToFile('query.sql');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  begin
    form.DirectorLabel.Caption := prefix+tmpquery.FieldByName('ct_Director').AsString;
    form.SekretarLabel.Caption := prefix+tmpquery.FieldByName('ct_Sekretar').AsString;
    form.ZamDirLabel.Caption := prefix+tmpquery.FieldByName('ct_ZamDir').AsString;
    for x := 1 to tmpquery.RecordCount do
      begin
      tmpquery.RecNo := x;
      lb := TQRLabel(form.FindComponent('MLabel'+IntToStr(x)));
      if lb <> NIL then
        lb.Caption := prefix+tmpquery.FieldByName('wk_ShortName').AsString;
      end;
  end;
form.DescLabel.Caption := 'абитуриентов '+
  ' на базе '+base+' '+sform+' формы обучения по специальности '+spec+' ('+group+Add+').';
form.CompReport.Preview;
form.Free;
tmpquery.Free;
end;


procedure TMainForm.CastingFormActionExecute(Sender: TObject);
var
form : TCastingForm;

begin
form := TCastingForm.Create(self);
form.ShowModal;
form.Free;
end;

procedure TMainForm.ResultReportItemClick(Sender: TObject);
var
form     : TResultsReportForm;
tmpquery : TADOQuery;
sform    : string;
man      : string;
count    : integer;
prefix   : string;

begin
form := TResultsReportForm.Create(self);
case formComboBox.ItemIndex of
1 : sform := 'очной';
2 : sform := 'заочной';
end;

if form.Query.Active then form.Query.Close;
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetINResultReport '+IntToStr(formComboBox.ItemIndex-1));
form.Query.Open;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('EXEC GetINAddResultReport '+
IntToStr(formComboBox.ItemIndex - 1)+';');
tmpquery.Open;
tmpquery.First;
if tmpquery.RecordCount > 0 then
  begin
    man := tmpquery.FieldByName('rp_count').AsString;
    count := StrToIntDef(man, 0);
    if count <= 20 then
      begin
        if (count >= 2) and (count <= 4) then
          prefix := ' человека' else
          prefix := ' человек';
      end else
      begin
        count := StrToIntDef(Copy(man, Length(man), 1), 0);
          case count of
            0,1 : prefix := ' человек';
            2..4: prefix := ' человека';
            5..9: prefix := ' человек';
          end; // case
      end;
      form.AddLabel1.Caption := tmpquery.FieldByName('rp_title').AsString+man+prefix;
  end;
tmpquery.Next;
  man := tmpquery.FieldByName('rp_count').AsString;
  count := StrToIntDef(man, 0);
  if count <= 20 then
    begin
      if (count >= 2) and (count <= 4) then
        prefix := ' человека' else
        prefix := ' человек';
    end else
    begin
      count := StrToIntDef(Copy(man, Length(man), 1), 0);
        case count of
          0,1 : prefix := ' человек';
          2..4: prefix := ' человека';
          5..9: prefix := ' человек';
        end; // case
    end;
    form.AddLabel2.Caption := tmpquery.FieldByName('rp_title').AsString+man+prefix;
tmpquery.Free;
form.DescLabel.Caption := 'о результатах приема в государственное образовательное учреждение '+
  'на подготовку по образовательным программам среднего профессионального образования по '+sform+
  ' форме обучения в '+IntToStr(CurrentYear)+'/'+IntToStr(CurrentYear+1)+' учебном году'+#$D+
  'Прокопьевский горнотехнический колледж имени В.П.Романова';
form.ResultsRep.Preview;
form.Free;
end;

procedure TMainForm.N17Click(Sender: TObject);
const titles : array[1..20] of string =
('Бюджет', 'Контракт',
  'Бюджет', 'Контракт', 'Иногородние', 'Медали', 'База 9 кл.',
  'База 11 кл.', 'Муж.', 'Жен',
  'Бюджет', 'Контракт', 'Иногородние', 'Медали', 'База 9 кл.',
  'База 11 кл.', 'Муж.', 'Жен',
  'Бюджет', 'Контракт');

var
form : TInfoReportForm;
x    : integer;
img  : TQRImage;

begin
form := TInfoReportForm.Create(self);
form.QRLabel1.Caption := form.QRLabel1.Caption+' (на '+DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetINInfoReport');
form.Query.Open;
form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (очная форма обучения).';
for x := 1 to 20 do
  begin
  img := TQRImage(form.FindComponent('Img'+IntToStr(x)));
  if img <> NIL then
    begin
    TextAngle(img.Canvas, 90, 10, titles[x]);
    end;
  end;
form.InfoRep.Preview;
form.Free;
end;

procedure TMainForm.CandidateGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

begin
with CandidateGrid.Canvas do
  begin
  FillRect(Rect);
  if Column.Field is TBooleanField then
    try
    if (AStudentsQuery.FieldByName('av_HasCourse').AsBoolean) then
      begin
      Brush.Color := clBlue;
      Brush.Style := bsSolid;
      Rectangle(Rect.Left+2, Rect.Top+2, Rect.Left+12, Rect.Top+12);
      end else
      begin
      Brush.Color := clWhite;
      Brush.Style := bsSolid;
      Rectangle(Rect.Left+2, Rect.Top+2, Rect.Left+12, Rect.Top+12);
      end;
    finally
    end
  else
    TextOut(Rect.Left, Rect.Top, Column.Field.Text);
  end;
end;

procedure TMainForm.N19Click(Sender: TObject);
var
updater : string;
lfile   : extended;
rfile   : extended;

begin
lfile := FileInfo(Application.ExeName);
rfile := FileInfo(MARK_REPO);
if (rfile > lfile) then
  begin
  updater := ExtractFilePath(Application.ExeName)+UPD_FILE;
  if (FileExists(updater)) then
    begin
    if (MessageDlg('Обновить программу до более новой версии?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes) then
      begin
      winexec(PChar(updater), SW_SHOWNORMAL);
      Application.Terminate;
      end;
    end
  else
    MessageDlg('Отсутствует утилита обновления '+updater+'!', mtError, [mbOk], 0);
  end
else if (rfile < lfile) then
  begin
  if (MessageDlg('Обновить программу в репозитории до более новой версии?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes) then
    begin
    if CopyFile(PChar(Application.ExeName),PChar(MARK_REPO), false) then
      MessageDlg('Обновление завершено успешно!', mtInformation, [mbOk], 0)
    else
      MessageDlg('Не удалось обновить репозиторий!', mtError, [mbOk], 0);
    end;
  end
else
  begin
    MessageDlg('Программа не нуждается в обновлении!', mtInformation, [mbOk], 0)
  end;
end;

procedure TMainForm.CandidateGridDblClick(Sender: TObject);
begin
if (AStudentsQuery.State = dsBrowse) then
  begin
  if (AStudentsQuery.RecordCount > 0) then
    EditAbiturientActionExecute(self);
  if (AStudentsQuery.RecordCount = 0) then
    AddAbiturientActionExecute(self);
  end;
end;

procedure TMainForm.N20Click(Sender: TObject);
var
tmpquery : TADOquery;
opendlg  : TOpenDialog;
x        : integer;
fout     : textfile;

begin
opendlg := TOpenDialog.Create(self);
if (opendlg.Execute) and (FileExists(opendlg.FileName)) then
  try
  AssignFile(fout, opendlg.FileName);
  rewrite(fout);
  writeln(fout, '<HTML><HEAD><META charset="windows-1251" type="text/html">');
  writeln(fout, '<link rel="stylesheet" type="text/css" href="style.css">');
  writeln(fout, '</HEAD><BODY><H1 align="center">Информация о результатах приема</H1>');
  writeln(fout, '<p align="justify">По состоянию на '+GetDateStr(now)+' года.</p>');
  writeln(fout, '<H2 align="center">Очная форма обучения</H2>');
  writeln(fout, '<TABLE align="center" border="1" width="100%"><TR>');
  writeln(fout, '<TH rowspan="2">Специальность</TH>');
  writeln(fout, '<TH colspan="2">План приема</TH><TH colspan="2">Подано заявлений</TH>');
  writeln(fout, '<TH colspan="2">Зачислено</TH><TH rowspan="2">Конкурс (бюджет)</TH></TR>');
  writeln(fout, '<TR><TH>Бюджет</TH><TH>Внебюджет</TH><TH>Бюджет</TH><TH>Внебюджет</TH><TH>Бюджет</TH><TH>Внебюджет</TH></TR>');
//  SchoolName+' '+IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г.';
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := Connection;
  tmpquery.SQL.Add('EXEC GetINInfoReport');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    writeln(fout, '<TR><TD>'+tmpquery.FieldByName('rp_spName').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_bplan').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_cplan').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_bask').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_cask').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_bcome').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_ccome').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_bconcurse').AsString+'</TD></TR>');
    end;
  writeln(fout, '</TABLE><H2 align="center">Заочная форма обучения</H2>');
  writeln(fout, '<TABLE align="center" border="1" width="100%"><TR>');
  writeln(fout, '<TH>Специальность</TH>');
  writeln(fout, '<TH>План приема (внебюджет)</TH><TH>Подано заявлений (внебюджет)</TH>');
  writeln(fout, '<TH>Зачислено (внебюджет)</TH><TH>Конкурс (внебюджет)</TH></TR>');
  tmpquery.SQL.Clear;
  tmpquery.SQL.Add('EXEC GetZaochINInfoReport');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    writeln(fout, '<TR><TD>'+tmpquery.FieldByName('rp_spName').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_cplan').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_cask').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_ccome').AsString+'</TD>');
    writeln(fout, '<TD align="center">'+tmpquery.FieldByName('rp_cconcurse').AsString+'</TD></TR>');
    end;
  writeln(fout, '</TABLE></BODY></HTML>');
  closeFile(fout);
  ShowMessage('Информация выгружена в файл '+opendlg.FileName+'.');
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  end;
// write information to file
end;

procedure TMainForm.N22Click(Sender: TObject);
const titles : array[1..20] of string =
('Бюджет', 'Контракт',
  'Бюджет', 'Контракт', 'Иногородние', 'Медали', 'База 9 кл.',
  'База 11 кл.', 'Муж.', 'Жен',
  'Бюджет', 'Контракт', 'Иногородние', 'Медали', 'База 9 кл.',
  'База 11 кл.', 'Муж.', 'Жен',
  'Бюджет', 'Контракт');

var
form : TInfoReportForm;
x    : integer;
img  : TQRImage;

begin
form := TInfoReportForm.Create(self);
form.QRLabel1.Caption := form.QRLabel1.Caption+' (на '+DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetZaochINInfoReport');
form.Query.Open;
form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (заочная форма обучения).';
for x := 1 to 20 do
  begin
  img := TQRImage(form.FindComponent('Img'+IntToStr(x)));
  if img <> NIL then
    begin
    TextAngle(img.Canvas, 90, 10, titles[x]);
    end;
  end;
form.InfoRep.Preview;
form.Free;
end;

procedure TMainForm.N24Click(Sender: TObject);
var
form : TDeskInfoReportForm;

begin
form := TDeskInfoReportForm.Create(self);
form.QRLabel1.Caption := form.QRLabel1.Caption+' (на '+DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetINInfoReport');
form.Query.Open;
//form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (очная форма обучения).';
//form.QRLabel24.Free;
//form.DirectorLabel.Free;
form.QRLabel13.Caption := 'Информацию о поступлении вы можете узнать на сайте www.pgtk.edu.ru';
form.DeskInfoRep.Preview;
form.Free;
end;

procedure TMainForm.N25Click(Sender: TObject);
var
form : TDeskInfoReportForm;

begin
form := TDeskInfoReportForm.Create(self);
form.QRLabel1.Caption := form.QRLabel1.Caption+' (на '+DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetZaochINInfoReport');
form.Query.Open;
//form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (заочная форма обучения).';
//form.QRLabel24.Free;
//form.DirectorLabel.Free;
form.QRLabel13.Caption := 'Информацию о поступлении вы можете узнать на сайте www.pgtk.edu.ru';
form.DeskInfoRep.Preview;
form.Free;
end;

procedure TMainForm.N26Click(Sender: TObject);
const titles : array[1..20] of string =
('Бюджет', 'Контракт',
  'Бюджет', 'Контракт', 'Иногородние', 'Медали', 'База 9 кл.',
  'База 11 кл.', 'Муж.', 'Жен',
  'Бюджет', 'Контракт', 'Иногородние', 'Медали', 'База 9 кл.',
  'База 11 кл.', 'Муж.', 'Жен',
  'Бюджет', 'Контракт');

var
form : TInfoReportForm;
x    : integer;
img  : TQRImage;

begin
form := TInfoReportForm.Create(self);
form.QRLabel1.Caption := 'Количество поданных заявлений на первый курс (на '+
  DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetStaticINInfoReport');
form.Query.Open;
form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (очная форма обучения).';
for x := 1 to 20 do
  begin
  img := TQRImage(form.FindComponent('Img'+IntToStr(x)));
  if img <> NIL then
    begin
    TextAngle(img.Canvas, 90, 10, titles[x]);
    end;
  end;
form.InfoRep.Preview;
form.Free;
end;

procedure TMainForm.N27Click(Sender: TObject);
const titles : array[1..20] of string =
('Бюджет', 'Контракт',
  'Бюджет', 'Контракт', 'Иногородние', 'Медали', 'База 9 кл.',
  'База 11 кл.', 'Муж.', 'Жен',
  'Бюджет', 'Контракт', 'Иногородние', 'Медали', 'База 9 кл.',
  'База 11 кл.', 'Муж.', 'Жен',
  'Бюджет', 'Контракт');

var
form : TInfoReportForm;
x    : integer;
img  : TQRImage;

begin
form := TInfoReportForm.Create(self);
form.QRLabel1.Caption := 'Количество поданных заявлений на первый курс (на '+
  DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetStaticZaochINInfoReport');
form.Query.Open;
form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (заочная форма обучения).';
for x := 1 to 20 do
  begin
  img := TQRImage(form.FindComponent('Img'+IntToStr(x)));
  if img <> NIL then
    begin
    TextAngle(img.Canvas, 90, 10, titles[x]);
    end;
  end;
form.InfoRep.Preview;
form.Free;
end;

procedure TMainForm.N30Click(Sender: TObject);
var
form : TDeskInfoReportForm;

begin
form := TDeskInfoReportForm.Create(self);
form.QRLabel1.Caption := form.QRLabel1.Caption+' (на '+DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetTestsInfoReport');
form.Query.Open;
//form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (очная форма обучения).';
form.QRLabel1.Caption := 'Экзамены, по итогам которых осуществляется прием на первый курс';
form.QRLabel7.Caption := 'Тесты';
form.QRLabel3.Caption := 'ГИА';
form.QRLabel10.Caption := 'ЕГЭ';
form.QRLabel33.Caption := 'Итого';
form.QRDBText7.DataField := 'rp_btest';
form.QRDBText9.DataField := 'rp_ctest';
form.QRDBText13.DataField := 'rp_bgia';
form.QRDBText1.DataField := 'rp_cgia';
form.QRDBText11.DataField := 'rp_bege';
form.QRDBText12.DataField := 'rp_cege';
form.QRDBText20.DataField := 'rp_ball';
form.QRDBText21.DataField := 'rp_call';
form.DeskInfoRep.Preview;
form.Free;
end;

procedure TMainForm.N31Click(Sender: TObject);
var
form : TDeskInfoReportForm;

begin
form := TDeskInfoReportForm.Create(self);
form.QRLabel1.Caption := form.QRLabel1.Caption+' (на '+DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetZaochTestsInfoReport');
form.Query.Open;
//form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (заочная форма обучения).';
form.QRLabel1.Caption := 'Экзамены, по итогам которых осуществляется прием на первый курс';
form.QRLabel7.Caption := 'Тесты';
form.QRLabel3.Caption := 'ГИА';
form.QRLabel10.Caption := 'ЕГЭ';
form.QRLabel33.Caption := 'Итого';
form.QRDBText7.DataField := 'rp_btest';
form.QRDBText9.DataField := 'rp_ctest';
form.QRDBText13.DataField := 'rp_bgia';
form.QRDBText1.DataField := 'rp_cgia';
form.QRDBText11.DataField := 'rp_bege';
form.QRDBText12.DataField := 'rp_cege';
form.QRDBText20.DataField := 'rp_ball';
form.QRDBText21.DataField := 'rp_call';
form.DeskInfoRep.Preview;
form.Free;
end;

procedure TMainForm.SpecListReportItemClick(Sender: TObject);
var
form    : TSpecListReportForm;
tmpquery: TADOQuery;
spname  : string;
fstr    : string;
bstr    : string;
cstr    : string;
add     : string;

begin
fstr := 'неизвестную';
if FormComboBox.ItemIndex = 1 then
  fstr := 'очную';
if FormComboBox.ItemIndex = 2 then
  fstr := 'заочную';

bstr := BaseComboBox.Text;

case CommercialComboBox.ItemIndex of
1: cstr := 'бюджетную группу';
2: cstr := 'группу с полным возмещением затрат';
end;
add := '(основной набор)';
if AddCheckBox.Checked then
  add := '(дополнительный набор)';
form := TSpecListReportForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE (sp_pcode = '''+
  TContainer(SpecComboBox.Items.Objects[SpecComboBox.ItemIndex]).Key+''')');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  spname := tmpquery.FieldByName('sp_FullKey').AsString+' '+
  tmpquery.FieldByName('sp_Name').AsString;
tmpquery.Free;
form.QRLabel1.Caption := 'Предварительная информация о результатах приема';
form.DescLabel.Caption := 'Поступающих в '+
  IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+' учебном году в '+
  SchoolName+
//  #$D+
  ' на базе '+bstr+' в '+cstr+' на '+fstr+' форму обучения по специальности '+spname+
  ' '+add+'.';
form.SpecListRep.Preview;
form.Free;
end;

procedure TMainForm.AddSpecListReportItemClick(Sender: TObject);
var
form    : TAddSpecListReportForm;
tmpquery: TADOQuery;
spname  : string;
fstr    : string;
bstr    : string;
cstr    : string;
add     : string;
plan    : integer;

begin
plan := 0;
fstr := 'неизвестную';
if FormComboBox.ItemIndex = 1 then
  fstr := 'очную';
if FormComboBox.ItemIndex = 2 then
  fstr := 'заочную';
bstr := BaseComboBox.Text;
case CommercialComboBox.ItemIndex of
  1: cstr := 'бюджетную группу';
  2: cstr := 'группу с полным возмещением затрат';
end;
add := '(основной набор)';
if AddCheckBox.Checked then
  add := '(дополнительный набор)';
form := TAddSpecListReportForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Add('SELECT * FROM Specialities, CtPlans ');
tmpquery.SQL.Add('WHERE (ctp_spcode = sp_pcode) AND (ctp_ctcode = '''+CID+''') AND (sp_pcode = '''+
  TContainer(SpecComboBox.Items.Objects[SpecComboBox.ItemIndex]).Key+''')');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  case (FormComboBox.ItemIndex*10 + CommercialComboBox.ItemIndex) of
    11 : plan := tmpquery.FieldByName('ctp_obplan').AsInteger;
    12 : plan := tmpquery.FieldByName('ctp_ocplan').AsInteger;
    21 : plan := tmpquery.FieldByName('ctp_zbplan').AsInteger;
    22 : plan := tmpquery.FieldByName('ctp_zcplan').AsInteger;
  end;
  spname := tmpquery.FieldByName('sp_FullKey').AsString+' "'+
  tmpquery.FieldByName('sp_Name').AsString+'"';
tmpquery.Free;
form.plan := plan;
form.QRLabel1.Caption := 'Предварительная информация о результатах приема';
form.DescLabel.Caption := 'В '+
//  IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+' учебном году в '+
  SchoolName+
//  #$D+
  ' на базе '+bstr+' в '+cstr+' на '+fstr+' форму обучения по специальности '+spname+
  ' '+add+'.';
form.AddSpecListRep.Preview;
form.Free;
end;

procedure TMainForm.ArchiveActionExecute(Sender: TObject);
begin
if mrYes = MessageDlg('Поместить выбранную запись в архив?', mtWarning, [mbYes, mbNo], 0) then
  begin
  Command.CommandText := 'UPDATE Abiturients SET ab_Attributes = (ab_Attributes | '+
    IntToStr(ARCH)+') WHERE (ab_pcode = '''+AStudentsQuery.FieldByName('av_pcode').AsString+''')';
  Command.Execute;
  AStudentsQuery.Requery;
  ArQuery.Requery;
  end;
end;

procedure TMainForm.ArDelActionExecute(Sender: TObject);
begin
if mrYes = MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0) then
  begin
  Command.CommandText := 'DELETE FROM Abiturients WHERE (ab_pcode = '''+
    ArQuery.FieldByName('av_pcode').AsString+''');';
  Command.Execute;
  ArQuery.Requery;
  end;
end;

procedure TMainForm.ArRestoreActionExecute(Sender: TObject);
begin
if mrYes = MessageDlg('Вернуть в абитуриенты?', mtWarning, [mbYes, mbNo], 0) then
  begin
  Command.CommandText := 'UPDATE Abiturients SET ab_Attributes = (ab_Attributes & 127) WHERE (ab_pcode = '''+
    ArQuery.FieldByName('av_pcode').AsString+''');';
  Command.Execute;
  ArQuery.Requery;
  AStudentsQuery.Requery;
  end;
end;

procedure TMainForm.ArDataSourceDataChange(Sender: TObject; Field: TField);
begin
ArDelAction.Enabled := ArQuery.Active and
  (ArQuery.RecordCount > 0) and (CID <> '');
ArRestoreAction.Enabled := ArQuery.Active and
  (ArQuery.RecordCount > 0) and (CID <> '');
end;

procedure TMainForm.ArGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
with ArGrid.Canvas do
  begin
  FillRect(Rect);
  if Column.Field is TBooleanField then
    try
    if (ArQuery.FieldByName('av_HasCourse').AsBoolean) then
      begin
      Brush.Color := clBlue;
      Brush.Style := bsSolid;
      Rectangle(Rect.Left+2, Rect.Top+2, Rect.Left+12, Rect.Top+12);
      end else
      begin
      Brush.Color := clWhite;
      Brush.Style := bsSolid;
      Rectangle(Rect.Left+2, Rect.Top+2, Rect.Left+12, Rect.Top+12);
      end;
    finally
    end
  else
    TextOut(Rect.Left, Rect.Top, Column.Field.Text);
  end;
end;

procedure TMainForm.StudentsListActionExecute(Sender: TObject);
const
//SchoolName = 'ФГОУ СПО Прокопьевский горнотехнический колледж им. В.П.Романова';
prefix     = '______________________________________________________________________________________________ ';

var
form     : TStudentsListReportForm;
base     : string;
group    : string;
sform    : string;
tmpquery : TADOQuery;
spec     : string;
//add      : string;

begin
// Make a composite report.
sform := 'очной';
if FGroupQuery.FieldByName('gr_isZaoch').AsBoolean then
  sform := 'заочной';

base := 'основного общего образования';
if (FGroupQuery.FieldByName('gr_isZaoch').AsBoolean) or
  (FGroupQuery.FieldByName('gr_Course').AsInteger > 1) then
  base := 'среднего (полного) общего образования';

group := 'бюджет';
if FGroupQuery.FieldByName('gr_Commercial').AsBoolean then
  group := 'полное возмещение затрат';

//add := '';
//if AddCheckBox.Checked then
//  add := ' (дополнительный набор)';
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := Connection;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE sp_pcode = '''+
  FGroupQuery.FieldByName('gr_speccode').AsString+''';');
//tmpquery.SQL.SaveToFile('query.sql');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  begin
  spec := tmpquery.FieldByName('sp_FullKey').AsString+' "'+tmpquery.FieldByName('sp_Name').AsString+'"';
  end;
tmpquery.Free;
form := TStudentsListReportForm.Create(self);
form.SchoolLabel.Caption := MinistryName+#$D+SchoolName;
form.DescLabel.Caption := 'в группу '+
  FGroupQuery.FieldByName('gr_Name').AsString+' на базе '+base+' '+sform+' формы обучения по специальности '+spec+' ('+group+').';
form.StudentsListRep.Preview;
form.Free;
end;

procedure TMainForm.FilterStudents(Sender: TObject);
var
filter : string;

begin
FStudentsQuery.Filtered := false;
filter := '';
if StInYearCheckBox.Checked then
  filter := 'av_InYear = '+StInYearEdit.text;
if '' <> trim(filter) then
  begin
  FStudentsQuery.Filter := filter;
  FStudentsQuery.Filtered := true;
  end;
end;

procedure TMainForm.SvodReportExportMenuItemClick(Sender: TObject);
var

fout : textfile;
x    : integer;
begin
// Export SvodReport.
try
AssignFile(fout, 'svodreport.csv');
Rewrite(fout);
writeln(fout,'Регистрационный номер;ФИО;Школа;Иностранный язык;Русский;Математика;Дополнительно;Средний балл;Общий балл;Комментарий');
for x := 1 to AStudentsQuery.RecordCount do
  begin
  AStudentsQuery.RecNo := x;
  writeln(fout, AStudentsQuery.FieldByName('av_Serial').AsString+';'+
  AStudentsQuery.FieldByName('av_Name').AsString+';'+
  AStudentsQuery.FieldByName('av_School').AsString+';'+
  AStudentsQuery.FieldByName('av_lang').AsString+';'+
  AStudentsQuery.FieldByName('av_Ex2').AsString+';'+
  AStudentsQuery.FieldByName('av_Ex1').AsString+';'+
  AStudentsQuery.FieldByName('av_AddEx').AsString+';'+
  AStudentsQuery.FieldByName('av_mball').AsString+';'+
  AStudentsQuery.FieldByName('av_GroupBall').AsString+';'+
  AStudentsQuery.FieldByName('av_Comment').AsString);
  end;
CloseFile(fout);
MessageDlg('Данные успешно выгружены в файл '+
  ExtractFilePath(Application.ExeName)+'svodreport.csv', mtInformation, [mbOk], 0);
except
On e: Exception do
  MessageDlg('Ошибка: '+e.message, mtError, [mbOk], 0);
end;

end;

procedure TMainForm.N40Click(Sender: TObject);
var
form : TDeskPreInfoReportForm;

begin
form := TDeskPreInfoReportForm.Create(self);
form.QRLabel1.Caption := form.QRLabel1.Caption+' (на '+DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetINInfoReport');
form.Query.Open;
//form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (очная форма обучения).';
//form.QRLabel24.Free;
//form.DirectorLabel.Free;
form.QRLabel13.Caption := 'Информацию о поступлении вы можете узнать на сайте www.pgtk.edu.ru';
form.DeskInfoRep.Preview;
form.Free;
end;

procedure TMainForm.N41Click(Sender: TObject);
var
form : TDeskPreInfoReportForm;

begin
form := TDeskPreInfoReportForm.Create(self);
form.QRLabel1.Caption := form.QRLabel1.Caption+' (на '+DateToStr(Now)+')';
form.Query.SQL.Clear;
form.Query.SQL.Add('EXEC GetZaochINInfoReport');
form.Query.Open;
//form.DirectorLabel.Caption := DirectorName;
form.DescLabel.Caption := SchoolName+' '+
IntToStr(CurrentYear)+'-'+IntToStr(CurrentYear+1)+'г (заочная форма обучения).';
//form.QRLabel24.Free;
//form.DirectorLabel.Free;
form.QRLabel13.Caption := 'Информацию о поступлении вы можете узнать на сайте www.pgtk.edu.ru';
form.DeskInfoRep.Preview;
form.Free;
end;

procedure TMainForm.AllListReportItemClick(Sender: TObject);
var
form    : TSpecListReportForm;
h       : integer;

begin
form := TSpecListReportForm.Create(self);
h := form.DescLabel.Height;
form.DescLabel.Caption := '';
form.DescLabel.Height := 0;
form.TitleBand1.Height := form.TitleBand1.Height - h;
form.QRLabel1.Caption := 'Итоги вступительных испытаний';
form.SpecListRep.Preview;
form.Free;
end;

end.
