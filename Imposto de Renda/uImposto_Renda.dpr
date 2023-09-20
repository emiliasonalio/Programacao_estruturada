program uImposto_Renda;

uses
  Vcl.Forms,
  Imposto_Renda in 'Imposto_Renda.pas' {Frm_Um},
  Unit2 in 'Unit2.pas' {Frm_Dois};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Dois, Frm_Dois);
  Application.CreateForm(TFrm_Um, Frm_Um);
  Application.Run;
end.
