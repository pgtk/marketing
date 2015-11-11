unit mark_castingform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TCastingForm = class(TForm)
    CastingGrid: TDBGrid;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    PlanBtn: TButton;
    MembersBtn: TButton;
    CloseBtn: TButton;
    CastingSource: TDataSource;
    CastingQuery: TADOQuery;
    Command: TADOCommand;
    procedure CastingSourceDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure MembersBtnClick(Sender: TObject);
    procedure PlanBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CastingForm: TCastingForm;

implementation

uses mark_main, mark_editcastingform, kern, mark_membersform,
  mark_plansform;

{$R *.dfm}

procedure TCastingForm.CastingSourceDataChange(Sender: TObject;
  Field: TField);
begin
AddBtn.Enabled := (CastingQuery.Active);
EditBtn.Enabled := (CastingQuery.Active) and (CastingQuery.RecNo > 0);
DelBtn.Enabled := (CastingQuery.Active) and (CastingQuery.RecNo > 0);
MembersBtn.Enabled := (CastingQuery.Active) and (CastingQuery.RecNo > 0);
PlanBtn.Enabled := (CastingQuery.Active) and (CastingQuery.RecNo > 0);
end;

procedure TCastingForm.FormCreate(Sender: TObject);
begin
CastingQuery.Open;
end;

procedure TCastingForm.AddBtnClick(Sender: TObject);
var
form : TEditCastingForm;
begin
form := TEditCastingForm.Create(self);
if (mrOk = form.ShowModal) then
  begin
  Command.CommandText := 'INSERT INTO Casting(ct_Year, ct_Director, ct_Sekretar, ct_ZamDir) '+
  'VALUES('+form.YearEdit.Text+', '''+form.DirectorEdit.Text+''', '''+
  form.SekretarEdit.Text+''', '''+form.ZamDirEdit.Text+''');';
  Command.Execute;
  CastingQuery.Requery;
  end;
form.Free;
end;

procedure TCastingForm.EditBtnClick(Sender: TObject);
var
form : TEditCastingForm;
begin
form := TEditCastingForm.Create(self);
form.YearEdit.Value := CastingQuery.FieldByName('ct_Year').AsInteger;
form.DirectorEdit.Text := CastingQuery.FieldByName('ct_Director').AsString;
form.SekretarEdit.Text := CastingQuery.FieldByName('ct_Sekretar').AsString;
form.ZamDirEdit.Text := CastingQuery.FieldByName('ct_ZamDir').AsString;
if (mrOk = form.ShowModal) then
  begin
  Command.CommandText := 'UPDATE Casting SET ct_Year = '+form.YearEdit.Text+
  ', ct_Director = '''+form.DirectorEdit.Text+''', ct_Sekretar = '''+form.SekretarEdit.Text+
  ''', ct_ZamDir = '''+form.ZamDirEdit.Text+
  ''' WHERE (ct_pcode = '''+CastingQuery.FieldByName('ct_pcode').AsString+''');';
  Command.Execute;
  CastingQuery.Requery;
  end;
form.Free;
end;

procedure TCastingForm.DelBtnClick(Sender: TObject);
begin
if (mrYes = MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0)) then
  begin
  Command.CommandText := 'DELETE FROM Casting WHERE ct_pcode = '''+
    CastingQuery.FieldByName('ct_pcode').AsString+''';';
  Command.Execute;
  CastingQuery.Requery;
  end;
end;

procedure TCastingForm.MembersBtnClick(Sender: TObject);
var
form : TMembersForm;
begin
form := TMembersForm.Create(self);
form.CastID := CastingQuery.FieldByName('ct_pcode').AsString;
if form.MembersQuery.Active then
  form.MembersQuery.Close;
form.MembersQuery.SQL.Clear;
form.MembersQuery.SQL.Add('SELECT * FROM CtMembers, Workers WHERE (ctm_wkcode = wk_pcode)');
form.MembersQuery.SQL.Add('AND (ctm_ctcode = '''+
  CastingQuery.FieldByName('ct_pcode').AsString+''') ORDER BY ctm_index, wk_Name');
form.MembersQuery.Open;
form.ShowModal;
form.Free;
end;

procedure TCastingForm.PlanBtnClick(Sender: TObject);
var
form : TPlansForm;

begin
form := TPlansForm.Create(self);
form.CastID := CastingQuery.FieldByName('ct_pcode').AsString;
if form.PlansQuery.Active then form.PlansQuery.Close;
form.PlansQuery.SQL.Clear;
form.PlansQuery.SQL.Add('SELECT * FROM CtPlans, Specialities WHERE (sp_pcode = ctp_spcode) AND (ctp_ctcode = '''+
  CastingQuery.FieldByName('ct_pcode').AsString+''');');
form.PlansQuery.Open;
form.ShowModal;
form.Free;
end;

end.
