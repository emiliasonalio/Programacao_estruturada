unit Trabalho_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCasdatro_inicial = class(TForm)
    Cadastrar: TButton;
    procedure CadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Casdatro_inicial: TCasdatro_inicial;

implementation

{$R *.dfm}

uses Cadastro_Principal2;

procedure TCasdatro_inicial.CadastrarClick(Sender: TObject);
begin
Cadastro_Principal.Show;
end;

end.
