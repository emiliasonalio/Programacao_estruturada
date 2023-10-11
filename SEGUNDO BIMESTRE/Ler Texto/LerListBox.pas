unit LerListBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrm_List = class(TForm)
    Ltb_LerList: TListBox;
    Btn_Ler: TButton;
    procedure Btn_LerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_List: TFrm_List;

implementation

{$R *.dfm}

procedure TFrm_List.Btn_LerClick(Sender: TObject);
var
  arquivo : TextFile;
  conteudo : String;

begin

  AssignFile(arquivo, 'Ler.txt');
  Reset(arquivo);

  while not EOF(arquivo) do
  begin
    Readln(arquivo, conteudo);
    Frm_List.Ltb_LerList.Items.Add(conteudo);
  end;

  CloseFile(arquivo);

end;

end.
