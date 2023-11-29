unit uDM_cadastro_livros;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IB, FireDAC.Phys.IBDef;

type
  TuDM_Cadastro = class(TDataModule)
    Conexao: TFDConnection;
    Tabela_Livros: TFDTable;
    Tabela_Editora: TFDTable;
    Tabela_Clientes: TFDTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uDM_Cadastro: TuDM_Cadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Frm_Cadastro;

{$R *.dfm}

end.
