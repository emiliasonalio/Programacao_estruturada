program uTrabalho_Cadastro2;

uses
  Vcl.Forms,
  Trabalho_Cadastro in 'Trabalho_Cadastro.pas' {Casdatro_inicial},
  Cadastro_Principal2 in 'Cadastro_Principal2.pas' {Cadastro_Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCasdatro_inicial, Casdatro_inicial);
  Application.CreateForm(TCadastro_Principal, Cadastro_Principal);
  Application.Run;
end.
