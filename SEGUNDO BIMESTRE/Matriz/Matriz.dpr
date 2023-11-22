program Matriz;

uses
  Vcl.Forms,
  Exercicio_Grid in 'Exercicio_Grid.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
