unit mark_planeditform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, DB, ADODB;

type
  TPlanEditForm = class(TForm)
    SpecComboBox: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    OBPlanEdit: TSpinEdit;
    ZBPlanEdit: TSpinEdit;
    OCPlanEdit: TSpinEdit;
    ZCPlanEdit: TSpinEdit;
    OkBtn: TButton;
    CancelBtn: TButton;
    procedure SpecComboBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ZCPlanEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanEditForm: TPlanEditForm;

implementation

{$R *.dfm}

procedure TPlanEditForm.SpecComboBoxChange(Sender: TObject);
begin
if SpecComboBox.ItemIndex < 0 then
  SpecComboBox.ItemIndex := 0;
OkBtn.Enabled := SpecComboBox.ItemIndex >= 0;
end;

procedure TPlanEditForm.FormCreate(Sender: TObject);
begin
OkBtn.Enabled := false;
end;

procedure TPlanEditForm.ZCPlanEditChange(Sender: TObject);
begin
OkBtn.Enabled := SpecComboBox.ItemIndex >= 0;
end;

end.
