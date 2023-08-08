unit Radio_button_exemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Rdb_Um: TRadioButton;
    Rdb_Dois: TRadioButton;
    Btn_Verificar: TButton;
    Rdg_Dias: TRadioGroup;
    Btn_Dia: TButton;
    procedure Btn_VerificarClick(Sender: TObject);
    procedure Btn_DiaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Btn_DiaClick(Sender: TObject);
begin
  if (Rdg_Dias.ItemIndex = 0) or (Rdg_Dias.ItemIndex = 6) then
    ShowMessage('É final de semana!')
  else
    ShowMessage('É dia de semana!');
end;

procedure TForm1.Btn_VerificarClick(Sender: TObject);
begin
  if (Rdb_Um.Checked) then
    ShowMessage ('Um');
  if (Rdb_Dois.Checked) then
    ShowMessage('Dois');
end;

end.
