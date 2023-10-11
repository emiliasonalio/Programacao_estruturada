program uLerListBox;

uses
  Vcl.Forms,
  LerListBox in 'LerListBox.pas' {Frm_List};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_List, Frm_List);
  Application.Run;
end.
