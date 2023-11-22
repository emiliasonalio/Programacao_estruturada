unit Bloco_de_notas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtDlgs;

type
  TFrm_Bloco_de_notas = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    Sair1: TMenuItem;
    TMemo: TMemo;
    OpenTextFileDialog1: TOpenTextFileDialog;
    SaveTextFileDialog1: TSaveTextFileDialog;
    procedure Novo1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Bloco_de_notas: TFrm_Bloco_de_notas;

implementation

{$R *.dfm}

procedure TFrm_Bloco_de_notas.Abrir1Click(Sender: TObject);

//OpenDialog1 : TOpenDialog;

begin
try
  OpenTextFileDialog1.Execute;
      TMemo.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
finally
  OpenTextFileDialog1.Free;
end;
end;

procedure TFrm_Bloco_de_notas.Novo1Click(Sender: TObject);
begin
  TMemo.Text := '';
end;

procedure TFrm_Bloco_de_notas.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Bloco_de_notas.Salvar1Click(Sender: TObject);
begin
    if SaveTextFileDialog1.Execute Then
    Begin
    TMemo.Lines.SaveToFile(SaveTextFileDialog1.FileName);
    End;
end;

end.
