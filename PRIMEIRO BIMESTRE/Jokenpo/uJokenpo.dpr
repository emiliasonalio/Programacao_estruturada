program uJokenpo;

uses
  Vcl.Forms,
  Jokenpo in 'Jokenpo.pas' {Frm_Jokenpo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Jokenpo, Frm_Jokenpo);
  Application.Run;
end.
