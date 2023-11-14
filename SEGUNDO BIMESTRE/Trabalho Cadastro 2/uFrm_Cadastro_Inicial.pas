unit uFrm_Cadastro_Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrm_Cadastro_Inicial = class(TForm)
    Cadastrar: TButton;
    procedure CadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_Inicial: TFrm_Cadastro_Inicial;

implementation

{$R *.dfm}

uses uFrm_Cadastro_Principal;


procedure TFrm_Cadastro_Inicial.CadastrarClick(Sender: TObject);
begin
Frm_Cadastro_Principal.Show;
end;

end.
