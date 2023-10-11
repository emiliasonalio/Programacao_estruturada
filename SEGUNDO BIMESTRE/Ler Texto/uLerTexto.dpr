program uLerTexto;

uses
  Vcl.Forms,
  LerTexto in 'LerTexto.pas' {Frm_LerTexto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_LerTexto, Frm_LerTexto);
  Application.Run;
end.
