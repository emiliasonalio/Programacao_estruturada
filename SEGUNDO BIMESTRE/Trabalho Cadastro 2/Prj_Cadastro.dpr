program Prj_Cadastro;

uses
  Vcl.Forms,
  uFrm_Cadastro_Inicial in 'uFrm_Cadastro_Inicial.pas' {Frm_Cadastro_Inicial},
  uFrm_Cadastro_Principal in 'uFrm_Cadastro_Principal.pas' {Frm_Cadastro_Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Cadastro_Inicial, Frm_Cadastro_Inicial);
  Application.CreateForm(TFrm_Cadastro_Principal, Frm_Cadastro_Principal);
  Application.Run;
end.
