program uTabuadaText;

uses
  Vcl.Forms,
  TabuadaText in 'TabuadaText.pas' {Frm_Tabuada};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Tabuada, Frm_Tabuada);
  Application.Run;
end.
