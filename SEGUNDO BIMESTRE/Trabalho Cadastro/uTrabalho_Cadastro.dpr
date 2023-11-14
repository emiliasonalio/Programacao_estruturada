program uTrabalho_Cadastro;

uses
  Vcl.Forms,
  Trabalho_Cadastro in 'Trabalho_Cadastro.pas' {Form1},
  Cadastro_Principal2 in 'Cadastro_Principal2.pas' {Cadastro_Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTrabalho_Cadastro, Trabalho_Cadastro);
  Application.CreateForm(TCadastro_Principal, Cadastro_Principal);
  Application.Run;
end.
