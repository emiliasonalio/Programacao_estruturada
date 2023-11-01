unit Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Carregar: TButton;
    procedure CarregarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CarregarClick(Sender: TObject);
var
  arquivo : TextFile;
  linha : String;
  lista : TStringList;
  i : integer;

begin
  AssignFile(arquivo, 'Dados.txt'); //vincula a variável ao arquivo
  Reset(arquivo); //lê o arquivo
  i := 0;

  while not EOF(arquivo) do
  begin
    readln(arquivo, linha); // linha armazena o que está escrito
    lista := TStringList.Create; //lista é uma classe que vai ser o vetor separado com o separador |
    lista.Delimiter := '|';
    lista.DelimitedText := linha;

    i := i + 1;

    with StringGrid1 do
    begin
    Cells[1, i] := lista[0];
    Cells[2, i] := lista[1];
    Cells[3, i] := lista[2];
  end;

  end;
  lista.Free;
  CloseFile(arquivo);

end;

end.
