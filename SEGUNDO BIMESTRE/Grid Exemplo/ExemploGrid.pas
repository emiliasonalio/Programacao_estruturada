unit ExemploGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  StringGrid1.Cells[1, 0] := 'Nome';
  StringGrid1.Cells[2, 0] := 'ID';
  StringGrid1.Cells[3, 0] := 'Telefone';
  StringGrid1.Cells[0, 1] := 'Registro 1';
  StringGrid1.Cells[1, 1] := '1';
  StringGrid1.Cells[2, 1] := 'José da Silva Santos';
  StringGrid1.Cells[3, 1] := '42 99999-1111';
  StringGrid1.Cells[0, 2] := 'Resgistro 2';
  StringGrid1.Cells[1, 2] := '2';
  StringGrid1.Cells[2, 2] := 'Maria da Silva Santos';
  StringGrid1.Cells[3, 2] := '42 9999-1111';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(StringGrid1.Rows[StringGrid1.Row][StringGrid1.Col]); //StringGrid1.Row é a linha que está selecionada, esse comando usa-se linha primeiro;
  //StringGrid.Rows aponta que vamos usar as linhas;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  arquivo : TextFile;
  linha : String;
begin

  AssignFile(arquivo, 'Alunos.txt');
  Reset(arquivo);

  while not EOF(arquivo) do
  begin
    readln(arquivo, linha);
    ShowMessage(linha);
  end;
  CloseFile(arquivo);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  lista : TStringList;
  arquivo : TextFile;
  linha : String;
begin
  AssignFile(arquivo, 'Alunos.txt');
  Reset(arquivo);

  while not Eof(arquivo) do
  begin
    readln(arquivo, linha);
    lista := TStringList.Create;
    lista.Delimiter := '|';
    lista.DelimitedText := linha;
    ShowMessage(lista[0]);
    ShowMessage(lista[1]);
    ShowMessage(lista[2]);
    lista.Free;
  end;
  CloseFile(arquivo);

end;


end.
