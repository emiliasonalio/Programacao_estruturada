program Prj_Cadastro;

uses
  Vcl.Forms,
  Frm_Cadastro_livros in 'Frm_Cadastro_livros.pas' {Frm_Cad},
  uDM_cadastro_livros in 'uDM_cadastro_livros.pas' {uDM_Cadastro: TDataModule},
  Frm_Menu in 'Frm_Menu.pas' {Frm_Men},
  Frm_Cadastro_editora in 'Frm_Cadastro_editora.pas' {Frm_cadastro_edt},
  Frm_Cadastro_clientes in 'Frm_Cadastro_clientes.pas' {Frm_Cli};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Men, Frm_Men);
  Application.CreateForm(TFrm_Cad, Frm_Cad);
  Application.CreateForm(TuDM_Cadastro, uDM_Cadastro);
  Application.CreateForm(TFrm_cadastro_edt, Frm_cadastro_edt);
  Application.CreateForm(TFrm_Cli, Frm_Cli);
  Application.Run;
end.
