unit Contador_de_Letras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edt_Texto: TEdit;
    Button1: TButton;
    Edt_Letra: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
cont, quantidade : Integer;

begin

  cont := 0;
  quantidade := 0;

  while cont <= Length(Edt_Texto.text) do
  begin
  cont := cont + 1;

    if Edt_Texto.Text[cont] = Edt_Letra.Text then
    begin
      quantidade := quantidade + 1;
    end;

    if Edt_Texto.Text[cont] = '*' then
    begin
    break;
    end;
  end;
    ShowMessage('Encontrei' + IntToStr(quantidade) + 'vezes';


end;

end.
