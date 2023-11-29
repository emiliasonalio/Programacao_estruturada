unit Frm_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Ds_livros: TDataSource;
    Btn_incluir: TButton;
    procedure Btn_incluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uDM_cadastro_livros, Frm_Inclusao;

procedure TForm1.Btn_incluirClick(Sender: TObject);
begin
  uDM_Cadastro.Tabela_Livros.Append;
  Frm_Incluir.Show;
end;

end.
