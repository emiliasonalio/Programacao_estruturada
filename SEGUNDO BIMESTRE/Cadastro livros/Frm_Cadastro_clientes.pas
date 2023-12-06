unit Frm_Cadastro_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_Cli = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DS_Clientes: TDataSource;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DGrid_Livros: TDBGrid;
    Btn_incluir: TButton;
    Btn_Salvar: TButton;
    Btn_cancelar: TButton;
    Btn_Excluir: TButton;
    Btn_Editar: TButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
  Frm_Cli: TFrm_Cli;

implementation

{$R *.dfm}

uses uDM_cadastro_livros;

procedure TFrm_Cli.Btn_cancelarClick(Sender: TObject);
begin
 uDm_Cadastro.Tabela_Clientes.Cancel;
 HabilitarDesabilitar();
end;

procedure TFrm_Cli.Btn_EditarClick(Sender: TObject);
begin
  uDM_Cadastro.Tabela_Clientes.Edit;
  HabilitarDesabilitar();
end;

procedure TFrm_Cli.Btn_ExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir o registro?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  uDM_Cadastro.Tabela_Clientes.Delete;
end;

procedure TFrm_Cli.Btn_incluirClick(Sender: TObject);
begin
  uDM_Cadastro.Tabela_Clientes.Append;
  HabilitarDesabilitar();
end;

procedure TFrm_Cli.Btn_SalvarClick(Sender: TObject);
begin
  uDM_Cadastro.Tabela_Clientes.post;
  HabilitarDesabilitar();
end;

procedure TFrm_Cli.HabilitarDesabilitar;
begin
  Btn_salvar.Enabled := Not(Btn_salvar.Enabled);
  Btn_cancelar.Enabled := Not(Btn_cancelar.Enabled);
  DBEdit2.Enabled := Not(DBEdit2.Enabled);
  DBEdit1.Enabled := Not(DBEdit1.Enabled);
  DBEdit3.Enabled := Not(DBEdit3.Enabled);
end;

end.
