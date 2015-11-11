unit mark_membersform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB, Grids, DBGrids;

type
  TMembersForm = class(TForm)
    MembersSource: TDataSource;
    MembersGrid: TDBGrid;
    MembersQuery: TADOQuery;
    Command: TADOCommand;
    AddBtn: TButton;
    DelBtn: TButton;
    ExitBtn: TButton;
    NumberBtn: TButton;
    procedure MembersSourceDataChange(Sender: TObject; Field: TField);
    procedure AddBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure NumberBtnClick(Sender: TObject);
  private
  ACastID : string;
    { Private declarations }
  public
  property CastID: string read ACastID write ACastID;
    { Public declarations }
  end;

var
  MembersForm: TMembersForm;

implementation

uses mark_main, mark_lookupstudentsform, kern;

{$R *.dfm}

procedure TMembersForm.MembersSourceDataChange(Sender: TObject;
  Field: TField);
begin
DelBtn.Enabled := (MembersQuery.Active) and (MembersQuery.RecordCount > 0);
AddBtn.Enabled := MembersQuery.Active;
NumberBtn.Enabled := (MembersQuery.Active) and (MembersQuery.RecordCount > 0);
end;

procedure TMembersForm.AddBtnClick(Sender: TObject);
var
form     : TLookupForm;
tmpquery : TADOQuery;
x        : integer;
cont     : TContainer;

begin
form := TLookupForm.Create(self);
form.Caption := 'Список работников';
form.GroupBox.Caption := 'Добавить члена комиссии';
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('SELECT wk_Name, wk_pcode FROM Workers');
tmpquery.SQL.Add('WHERE wk_pcode NOT IN (SELECT ctm_wkcode FROM CtMembers WHERE (ctm_ctcode = '''+
  CastID+''')) ORDER BY wk_Name');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
    begin
    tmpquery.RecNo := x;
    cont := TContainer.Create;
    cont.Name := tmpquery.FieldByName('wk_Name').AsString;
    cont.Key := tmpquery.FieldByName('wk_pcode').AsString;
    form.ListBox.Items.AddObject(cont.Name, cont);
    end;
if (mrOk = form.ShowModal) then
  try
  Command.CommandText := 'BEGIN TRAN AddMembersTran';
  Command.Execute;
  for x := 0 to form.ListBox.Items.Count -1 do
    if form.ListBox.Checked[x] then
    begin
    Command.CommandText := 'INSERT INTO CtMembers(ctm_wkcode, ctm_ctcode) '+
      'VALUES('''+TContainer(form.ListBox.Items.Objects[x]).Key+''', '''+CastID+''')';
    Command.Execute;
    end;
    Command.CommandText := 'COMMIT TRAN AddMembersTran';
    Command.Execute;
    MembersQuery.Requery;
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  Command.CommandText := 'ROLLBACK TRAN AddMembersTran';
  Command.Execute;
  MembersQuery.Requery;
  end; // try

// Add members;
end;

procedure TMembersForm.DelBtnClick(Sender: TObject);
begin
if (mrYes = MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0)) then
  begin
  Command.CommandText := 'DELETE FROM CtMembers WHERE (ctm_pcode = '''+
    MembersQuery.FieldByName('ctm_pcode').AsString+''');';
  Command.Execute;
  MembersQuery.Requery;
  end;
end;

procedure TMembersForm.NumberBtnClick(Sender: TObject);
var
num : integer;

begin
num := StrToIntDef(InputBox('Порядковый номер', 'Введите номер', IntToStr(MembersQuery.RecNo)), 0);
if num > 100 then num := 100;
if num < 0 then num := 0;
if (num > 0) then
  begin
  Command.CommandText := 'UPDATE CtMembers SET ctm_index = '+IntToStr(num)+
    ' WHERE (ctm_pcode = '''+MembersQuery.FieldByName('ctm_pcode').AsString+''')';
  Command.Execute;
  MembersQuery.Requery;
  end;

end;

end.
