unit mark_plansform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TPlansForm = class(TForm)
    PlansGrid: TDBGrid;
    PlansSource: TDataSource;
    Command: TADOCommand;
    PlansQuery: TADOQuery;
    AddBtn: TButton;
    EditBtn: TButton;
    DelBtn: TButton;
    OkBtn: TButton;
    procedure AddBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure PlansSourceDataChange(Sender: TObject; Field: TField);
  private
  ACastID  : string;
    { Private declarations }
  public
  property CastID: string read ACastID write ACastID;
    { Public declarations }
  end;

var
  PlansForm: TPlansForm;

implementation

uses mark_main, mark_planeditform, kern;

{$R *.dfm}

procedure TPlansForm.AddBtnClick(Sender: TObject);
var
tmpquery : TADOQuery;
x        : integer;
form     : TPlanEditForm;
cont     : TContainer;

begin
form := TPlanEditForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE (sp_actual = 1) AND (sp_pcode NOT IN ');
tmpquery.SQL.Add('  (SELECT ctp_spcode FROM CtPlans WHERE ctp_ctcode = '''+
  CastID+'''))');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
  begin
  tmpquery.RecNo := x;
  cont := TContainer.Create;
  cont.Name := tmpquery.FieldByName('sp_Comment').AsString;
  cont.Key := tmpquery.FieldByName('sp_pcode').AsString;
  form.SpecComboBox.Items.AddObject(cont.Name, cont);
  end;
tmpquery.Free;
if (mrOk = form.ShowModal) then
  try
  Command.CommandText :=
    'INSERT INTO CtPlans (ctp_obplan, ctp_zbplan, ctp_ocplan, ctp_zcplan, ctp_spcode, ctp_ctcode) '+
    'VALUES('+form.OBPlanEdit.Text+', '+form.ZBPlanEdit.Text+', '+
    form.OCplanEdit.Text+', '+form.ZCPlanEdit.Text+', '''+
    TContainer(form.SpecComboBox.Items.Objects[form.SpecComboBox.ItemIndex]).Key+''', '''+
    CastID+''')';
  Command.Execute;
  PlansQuery.Requery;
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  end;
form.Free;
end;

procedure TPlansForm.DelBtnClick(Sender: TObject);
begin
if (mrYes = MessageDlg(DELETE_REQ, mtWarning, [mbYes, mbNo], 0)) then
  begin
  Command.CommandText := 'DELETE FROM CtPlans WHERE (ctp_pcode = '''+
    PlansQuery.FieldByName('ctp_pcode').AsString+''')';
  Command.Execute;
  PlansQuery.Requery;
  end;
end;

procedure TPlansForm.EditBtnClick(Sender: TObject);
var
tmpquery : TADOQuery;
x, i     : integer;
form     : TPlanEditForm;
cont     : TContainer;

begin
i := 0;
form := TPlanEditForm.Create(self);
tmpquery := TADOQuery.Create(self);
tmpquery.Connection := MainForm.Connection;
tmpquery.SQL.Add('SELECT * FROM Specialities WHERE sp_pcode NOT IN ');
tmpquery.SQL.Add('  (SELECT ctp_spcode FROM CtPlans WHERE (ctp_ctcode = '''+
  CastID+''') AND (ctp_pcode != '''+PlansQuery.FieldByName('ctp_pcode').AsString+''')) ORDER BY sp_Comment');
tmpquery.Open;
if tmpquery.RecordCount > 0 then
  for x := 1 to tmpquery.RecordCount do
  begin
  tmpquery.RecNo := x;
  cont := TContainer.Create;
  cont.Name := tmpquery.FieldByName('sp_Comment').AsString;
  cont.Key := tmpquery.FieldByName('sp_pcode').AsString;
  if (cont.Key = PlansQuery.FieldByName('ctp_spcode').AsString) then
    i := x-1;
  form.SpecComboBox.Items.AddObject(cont.Name, cont);
  end;
tmpquery.Free;
form.SpecComboBox.ItemIndex := i;
form.OBPlanEdit.Value := PlansQuery.FieldByName('ctp_obplan').AsInteger;
form.ZBPlanEdit.Value := PlansQuery.FieldByName('ctp_zbplan').AsInteger;
form.OCPlanEdit.Value := PlansQuery.FieldByName('ctp_ocplan').AsInteger;
form.ZCPlanEdit.Value := PlansQuery.FieldByName('ctp_zcplan').AsInteger;
form.ZCPlanEditChange(self);
if (mrOk = form.ShowModal) then
  try
  Command.CommandText :=
    'UPDATE CtPlans SET ctp_obplan = '+form.OBPlanEdit.Text+
    ', ctp_zbplan = '+form.ZBPlanEdit.Text+
    ', ctp_ocplan = '+form.OCplanEdit.Text+
    ', ctp_zcplan = '+form.ZCPlanEdit.Text+
    ', ctp_spcode = '''+TContainer(form.SpecComboBox.Items.Objects[form.SpecComboBox.ItemIndex]).Key+''' '+
    'WHERE (ctp_pcode = '''+PlansQuery.FieldByName('ctp_pcode').AsString+''')';
  Command.Execute;
  PlansQuery.Requery;
  except
  MessageDlg(OP_ERROR, mtError, [mbOk], 0);
  end;
form.Free;
end;

procedure TPlansForm.PlansSourceDataChange(Sender: TObject; Field: TField);
begin
EditBtn.Enabled := (PlansQuery.Active) and (PlansQuery.RecordCount > 0);
DelBtn.Enabled := (PlansQuery.Active) and (PlansQuery.RecordCount > 0);
end;

end.
