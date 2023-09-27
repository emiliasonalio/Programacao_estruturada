program uContador_De_Letras;

uses
  Vcl.Forms,
  Contador_de_Letras in 'Contador_de_Letras.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
