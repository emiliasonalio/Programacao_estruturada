program Radio_button;

uses
  Vcl.Forms,
  Radio_button_exemplo in 'Radio_button_exemplo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
