unit dep_groupform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls, ADODB;

type
  TGroupForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    NameEdit: TEdit;
    CommercialCheckBox: TCheckBox;
    Label2: TLabel;
    CourseEdit: TSpinEdit;
    Label3: TLabel;
    CreateYearEdit: TSpinEdit;
    Label4: TLabel;
    LernLengthEdit: TEdit;
    Label6: TLabel;
    ShortLernLengthEdit: TEdit;
    Label5: TLabel;
    SpecComboBox: TComboBox;
    Label7: TLabel;
    DepComboBox: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SpecComboBoxChange(Sender: TObject);
    procedure DepComboBoxChange(Sender: TObject);
    procedure NameEditChange(Sender: TObject);
  private
  AMCode: string;
    { Private declarations }
  public
  Connection : TADOConnection;
  SpecQuery  : TADOQuery;
  property MCode: string read AMCode write AMCode;
    { Public declarations }
  end;

var
  GroupForm: TGroupForm;

implementation

uses kern, mark_main;

{$R *.dfm}

procedure TGroupForm.FormCreate(Sender: TObject);
var
tmpquery : TADOQuery;
cont     : TContainer;
x        : integer;

begin
SpecQuery := TADOQuery.Create(self);
SpecQuery.Connection := MainForm.Connection;
SpecComboBox.Items.Add('Сначала укажите отделение');
CreateYearEdit.Value := CurrentYear;
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('SELECT dp_pcode, dp_Name FROM Departments');
tmpquery.SQL.Add('ORDER BY dp_Name');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
  begin
  tmpquery.RecNo := x;
  cont := TContainer.Create;
  cont.Key := tmpquery.FieldByName('dp_pcode').AsString;
  cont.Name := tmpquery.FieldByName('dp_Name').AsString;
  DepComboBox.Items.AddObject(cont.Name, cont);
  end;
tmpquery.Free;
SpecComboBox.ItemIndex := 0;
end;

procedure TGroupForm.SpecComboBoxChange(Sender: TObject);
begin
if SpecComboBox.ItemIndex = -1 then
  SpecComboBox.ItemIndex := 0;
OkBtn.Enabled := (Trim(NameEdit.Text) <> '') and
  (DepComboBox.ItemIndex >= 0) and (SpecComboBox.ItemIndex >= 0); 
end;

procedure TGroupForm.DepComboBoxChange(Sender: TObject);
var
x        : integer;
cont     : TContainer;
tmpquery : TADOQuery;

begin
if DepComboBox.ItemIndex >= 0 then
  begin
  if (SpecQuery.Active) and (SpecQuery.RecordCount > 0) then
    for x := 0 to SpecComboBox.Items.Count -1 do
      SpecComboBox.Items.Objects[x].Free;
    SpecComboBox.Items.Clear;
  SpecQuery.Close;
  SpecQuery.SQL.Clear;
  tmpquery := TADOQuery.Create(self);
  tmpquery.Connection := MainForm.Connection;
  tmpquery.SQL.Add('SELECT * FROM Departments WHERE (dp_pcode = '''+
  TContainer(DepComboBox.Items.Objects[DepComboBox.ItemIndex]).Key+''')');
  tmpquery.Open;
  if tmpquery.RecordCount > 0 then
    begin
    SpecQuery.SQL.Add('SELECT sp_pcode, sp_Key, sp_ShortName FROM Specialities');
    SpecQuery.SQL.Add('WHERE (sp_ShortName is not NULL)');
    if (tmpquery.FieldByName('dp_isZaoch').AsBoolean) then
      SpecQuery.SQL.Add('    AND ((sp_depcode = '''+
      tmpquery.FieldByName('dp_pcode').AsString+''') OR (sp_isZaoch = 1))') else
      SpecQuery.SQL.Add('    AND (sp_depcode = '''+tmpquery.FieldByName('dp_pcode').AsString+''')');
    SpecQuery.SQL.Add('ORDER BY sp_key');
    SpecQuery.Open;
    for x := 1 to SpecQuery.RecordCount do
      begin
      SpecQuery.RecNo := x;
      cont := TContainer.Create;
      cont.Key := SpecQuery.FieldByName('sp_pcode').AsString;
      cont.Name := SpecQuery.FieldByName('sp_Key').AsString+' ('+
        SpecQuery.FieldByName('sp_ShortName').AsString+')';
      SpecComboBox.Items.AddObject(cont.Name, cont);
      end;
    SpecComboBox.ItemIndex := 0;
    tmpquery.Free;
    end;
  end else
  begin
  for x := 0 to SpecComboBox.Items.Count -1 do
    SpecComboBox.Items.Objects[x].Free;
  SpecComboBox.Items.Clear;
  end;
OkBtn.Enabled := (Trim(NameEdit.Text) <> '') and
  (DepComboBox.ItemIndex >= 0) and (SpecComboBox.ItemIndex >= 0);
end;

procedure TGroupForm.NameEditChange(Sender: TObject);
begin
OkBtn.Enabled := (Trim(NameEdit.Text) <> '') and
  (DepComboBox.ItemIndex >= 0) and (SpecComboBox.ItemIndex >= 0); 
end;

end.
