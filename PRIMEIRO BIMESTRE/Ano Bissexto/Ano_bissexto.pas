unit Ano_bissexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    TEdit_Ano: TEdit;
    Label1: TLabel;
    Btn_Calcular: TButton;
    Result: TLabel;
    procedure Btn_CalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Btn_CalcularClick(Sender: TObject);
var
  ano : Integer;
begin
  ano := StrToInt(TEdit_Ano.Text);

  if (ano mod 4 = 0) and (ano mod 100 <> 0) or (ano mod 400 = 0) then
  begin
    Result.Caption := (IntToStr(ano) + ' é um ano bissexto!');
  end

  else
  begin
    Result.Caption := (IntToStr(ano) + ' não é um ano bissexto!');
  end;
end;

end.
