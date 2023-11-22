unit Exercicio_Grid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    SGrid_Menu: TStringGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  arquivo : TextFile;
  lista : TStringList;
  linha : String;
  c : Integer;
  l : Integer;

begin
  AssignFile(arquivo, 'Exercicio1.txt');
  Reset(arquivo);  //Lê o arquivo

  lista := TStringList.Create; //criando a variavel lista TStringList
  lista.Delimiter := ';'; //delimitador da lista

  l := 0;
  while not(EOF(arquivo)) do
  begin
    readln(arquivo, linha); //Lê o arquivo e salva na 'linha'
    lista.DelimitedText := linha;


    for c := 0 to 9 do
      SGrid_Menu.Cells [c, l] := lista[c];

      l := l + 1;
  end;

    CloseFile(arquivo);
    lista.Free;



end;

end.
