unit mark_editcastingform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TEditCastingForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    YearEdit: TSpinEdit;
    Label2: TLabel;
    DirectorEdit: TEdit;
    Label3: TLabel;
    SekretarEdit: TEdit;
    Label4: TLabel;
    ZamDirEdit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure YearEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditCastingForm: TEditCastingForm;

implementation

{$R *.dfm}

procedure TEditCastingForm.FormCreate(Sender: TObject);
begin
YearEdit.Value := CurrentYear;
end;

procedure TEditCastingForm.YearEditChange(Sender: TObject);
begin
OkBtn.Enabled := (Trim(DirectorEdit.Text) <> '') and (Trim(SekretarEdit.Text) <> '')
  and (YearEdit.Value > 2000);
end;

end.
