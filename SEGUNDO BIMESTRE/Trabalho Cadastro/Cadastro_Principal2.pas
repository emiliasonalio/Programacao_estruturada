unit Cadastro_Principal2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TCadastro_Principal = class(TForm)
    LbL_nome_livro: TLabel;
    Lbl_autor: TLabel;
    Edt_autor: TEdit;
    Edt_nome_livro: TEdit;
    Lbl_editora: TLabel;
    Edt_editora: TEdit;
    StringGrid1: TStringGrid;
    Btn_Salvar: TButton;
    Btn_Editar: TButton;
    Btn_excluir: TButton;
    Btn_incluir: TButton;
    Btn_cancelar: TButton;
    Label1: TLabel;
    Edt_ano: TEdit;
    Label2: TLabel;
    Edt_edicao: TEdit;
    procedure HabilitarDesabilitar();
    procedure LimparCampos();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Principal: TCadastro_Principal;

implementation

{$R *.dfm}



{ TCadastro_Principal }

procedure TCadastro_Principal.HabilitarDesabilitar;
begin
  Btn_Salvar.Enabled := Not(Btn_Salvar.Enabled);
  Btn_Editar.Enabled := Not(Btn_Editar.Enabled);
  Btn_excluir.Enabled := Not(Btn_excluir.Enabled);
  Btn_incluir.Enabled := Not(Btn_incluir.Enabled);
  Btn_cancelar.Enabled := Not(Btn_cancelar.Enabled);

  Edt_autor.Enabled := Not(Edt_autor.Enabled);
  Edt_nome_livro.Enabled := Not(Edt_nome_livro.Enabled);
  Edt_editora.Enabled := Not(Edt_editora.Enabled);
  Edt_ano.Enabled := Not(Edt_ano.Enabled);
  Edt_edicao.Enabled := Not(Edt_edicao.Enabled);

end;

procedure TCadastro_Principal.LimparCampos;
begin
  Edt_autor.Text := '';
  Edt_nome_livro.Text := '';
  Edt_editora.Text := '';
  Edt_ano.Text := '';
  Edt_edicao.Text := '';

end;

end.
