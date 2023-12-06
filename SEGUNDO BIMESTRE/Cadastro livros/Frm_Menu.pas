unit Frm_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus;

type
  TFrm_Men = class(TForm)
    MainMenu1: TMainMenu;
    Menu: TMenuItem;
    Cadastrarlivro1: TMenuItem;
    Castrareditora1: TMenuItem;
    Cadastrarcliente1: TMenuItem;
    procedure Cadastrarlivro1Click(Sender: TObject);
    procedure Castrareditora1Click(Sender: TObject);
    procedure Cadastrarcliente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Men: TFrm_Men;

implementation

{$R *.dfm}

uses uDM_cadastro_livros, Frm_Cadastro_livros, Frm_Cadastro_editora,
  Frm_Cadastro_clientes;

procedure TFrm_Men.Cadastrarcliente1Click(Sender: TObject);
begin
  Frm_Cli.show;
end;

procedure TFrm_Men.Cadastrarlivro1Click(Sender: TObject);
begin
  Frm_Cad.show;
end;

procedure TFrm_Men.Castrareditora1Click(Sender: TObject);
begin
  Frm_cadastro_edt.Show;
end;

end.
