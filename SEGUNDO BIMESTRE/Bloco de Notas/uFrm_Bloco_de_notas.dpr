program uFrm_Bloco_de_notas;

uses
  Vcl.Forms,
  Bloco_de_notas in 'Bloco_de_notas.pas' {Frm_Bloco_de_notas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Bloco_de_notas, Frm_Bloco_de_notas);
  Application.Run;
end.
