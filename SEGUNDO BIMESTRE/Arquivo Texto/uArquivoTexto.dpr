program uArquivoTexto;

uses
  Vcl.Forms,
  ArquivoTexto in 'ArquivoTexto.pas' {Frm_Arquivo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Arquivo, Frm_Arquivo);
  Application.Run;
end.
