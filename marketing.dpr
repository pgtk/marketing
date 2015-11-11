program marketing;

uses
  Forms,
  mark_main in 'mark_main.pas' {MainForm},
  kern in 'kern.pas',
  mark_abiturient in 'mark_abiturient.pas' {AbiturientForm},
  dep_groupform in 'dep_groupform.pas' {GroupForm},
  mark_lookupstudentsform in 'mark_lookupstudentsform.pas' {LookupForm},
  mark_comprepform in 'mark_comprepform.pas' {CompReportForm: Unit1},
  mark_castingform in 'mark_castingform.pas' {CastingForm},
  mark_editcastingform in 'mark_editcastingform.pas' {EditCastingForm},
  mark_membersform in 'mark_membersform.pas' {MembersForm},
  mark_inforepform in 'mark_inforepform.pas' {InfoReportForm},
  mark_resultsrepform in 'mark_resultsrepform.pas' {ResultsReportForm},
  mark_plansform in 'mark_plansform.pas' {PlansForm},
  mark_planeditform in 'mark_planeditform.pas' {PlanEditForm},
  mark_deskinforepform in 'mark_deskinforepform.pas' {DeskInfoReportForm},
  mark_speclistrepform in 'mark_speclistrepform.pas' {SpecListReportForm},
  mark_addspeclistrepform in 'mark_addspeclistrepform.pas' {AddSpecListReportForm},
  mark_studentlistreportform in 'mark_studentlistreportform.pas' {StudentsListReportForm},
  mark_deskpreinforepform in '\\hercules\delphi\marketing\mark_deskpreinforepform.pas' {DeskPreInfoReportForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDeskPreInfoReportForm, DeskPreInfoReportForm);
  Application.Run;
end.
