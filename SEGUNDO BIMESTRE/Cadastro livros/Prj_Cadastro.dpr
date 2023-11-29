program Prj_Cadastro;

uses
  Vcl.Forms,
  Frm_Cadastro in 'Frm_Cadastro.pas' {Form1},
  uDM_cadastro_livros in 'uDM_cadastro_livros.pas' {uDM_Cadastro: TDataModule},
  Frm_Inclusao in 'Frm_Inclusao.pas' {Frm_Incluir},
  Frm_Cadastro_Editora in 'Frm_Cadastro_Editora.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TuDM_Cadastro, uDM_Cadastro);
  Application.CreateForm(TFrm_Incluir, Frm_Incluir);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
