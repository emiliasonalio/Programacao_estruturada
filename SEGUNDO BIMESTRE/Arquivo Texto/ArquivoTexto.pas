unit ArquivoTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrm_Arquivo = class(TForm)
    Btn_gravar: TButton;
    procedure Btn_gravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Arquivo: TFrm_Arquivo;

implementation

{$R *.dfm}

procedure TFrm_Arquivo.Btn_gravarClick(Sender: TObject);
var
  arquivo_exemplo : TextFile;
begin

  AssignFile(arquivo_exemplo, 'Exemplo.txt');
  append(arquivo_exemplo);
  write(arquivo_exemplo, 'Cruel');
  writeln(arquivo_exemplo, ', mas nem tanto!');
  writeln(arquivo_exemplo, 'pulou');
  CloseFile(arquivo_exemplo);

end;

end.
