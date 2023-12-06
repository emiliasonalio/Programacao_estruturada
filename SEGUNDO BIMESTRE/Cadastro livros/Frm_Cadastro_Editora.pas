unit Frm_Cadastro_editora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_cadastro_edt = class(TForm)
    Label1: TLabel;
    DB_ID: TDBEdit;
    DS_Editora: TDataSource;
    Label2: TLabel;
    DB_nome: TDBEdit;
    DGrid_Livros: TDBGrid;
    Btn_incluir: TButton;
    Btn_Salvar: TButton;
    Btn_cancelar: TButton;
    Btn_Excluir: TButton;
    Btn_Editar: TButton;
    Label3: TLabel;
    DB_cidade: TDBEdit;
    procedure Btn_incluirClick(Sender: TObject);
    procedure HabilitarDesabilitar();
    procedure Btn_SalvarClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_cancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cadastro_edt: TFrm_cadastro_edt;

implementation

{$R *.dfm}

uses uDM_cadastro_livros, Frm_Cadastro_livros, Frm_Menu;

procedure TFrm_cadastro_edt.Btn_cancelarClick(Sender: TObject);
begin
 uDm_Cadastro.Tabela_Editora.Cancel;
 HabilitarDesabilitar();
end;

procedure TFrm_cadastro_edt.Btn_EditarClick(Sender: TObject);
begin
  uDM_Cadastro.Tabela_Editora.Edit;
  HabilitarDesabilitar();
end;

procedure TFrm_cadastro_edt.Btn_ExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir o registro?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  uDM_Cadastro.Tabela_Editora.Delete;
end;

procedure TFrm_cadastro_edt.Btn_incluirClick(Sender: TObject);
begin
  uDM_Cadastro.Tabela_Editora.Append;
  HabilitarDesabilitar();
end;

procedure TFrm_cadastro_edt.Btn_SalvarClick(Sender: TObject);
begin
  uDM_Cadastro.Tabela_Editora.post;
  HabilitarDesabilitar();
end;

procedure TFrm_cadastro_edt.HabilitarDesabilitar;
begin
  Btn_salvar.Enabled := Not(Btn_salvar.Enabled);
  Btn_cancelar.Enabled := Not(Btn_cancelar.Enabled);
  DB_nome.Enabled := Not(DB_nome.Enabled);
  DB_cidade.Enabled := Not(DB_cidade.Enabled);
  DB_ID.Enabled := Not(DB_ID.Enabled);
end;

end.
