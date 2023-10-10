unit Tabuada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Lst_Tabuada: TListBox;
    Lbl_Mostrar: TLabel;
    Btn_Calcular: TButton;
    Edt_tabuada: TEdit;
    procedure Btn_CalcularClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Btn_CalcularClick(Sender: TObject);

var i : integer;
num : integer;
result : integer;
texto : String;

begin
  num := StrToInt(Edt_tabuada.Text);
  Lst_Tabuada.Clear;
for i := 1 to 10 do
begin
  result := num * i;
  texto := IntToStr(num) + ' x ' + IntToStr(i) + ' = ' + IntToStr(result);

  Lst_Tabuada.Items.Add(texto);

end;


end;

end.
