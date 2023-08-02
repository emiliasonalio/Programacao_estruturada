program Prj_IMC;

uses
  Vcl.Forms,
  uFrn_Principal in 'uFrn_Principal.pas' {Frn_Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrn_Principal, Frn_Principal);
  Application.Run;
end.
