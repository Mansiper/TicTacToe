program Spisok;

uses
  Forms,
  uGlav in 'uGlav.pas' {fGlav},
  uRTree in 'uRTree.pas',
  uViz in 'uViz.pas' {fViz};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfGlav, fGlav);
  Application.CreateForm(TfViz, fViz);
  Application.Run;
end.
