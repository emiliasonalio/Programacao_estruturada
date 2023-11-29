unit Frm_Inclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TFrm_Incluir = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Salvar: TButton;
    Cancelar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure SalvarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Incluir: TFrm_Incluir;

implementation

{$R *.dfm}

uses uDM_cadastro_livros, Frm_Cadastro;

procedure TFrm_Incluir.CancelarClick(Sender: TObject);
begin
  uDM_Cadastro.Tabela_Livros.Cancel;
  Frm_Incluir.Close;
end;

procedure TFrm_Incluir.SalvarClick(Sender: TObject);
begin
  uDM_Cadastro.Tabela_Livros.Post;
  Frm_Incluir.Close;
end;

end.
