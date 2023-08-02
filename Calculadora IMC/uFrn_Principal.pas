unit uFrn_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrn_Principal = class(TForm)
    Edt_Altura: TEdit;
    Label1: TLabel;
    Edt_Peso: TEdit;
    Label2: TLabel;
    Calcular: TButton;
    Lbl_IMC: TLabel;
    Classificação: TLabel;
    Lbl_ResultIMC: TLabel;
    Lbl_ResultClass: TLabel;
    procedure CalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frn_Principal: TFrn_Principal;

implementation

{$R *.dfm}

procedure TFrn_Principal.CalcularClick(Sender: TObject);
  var
  altura : Double;
  peso : Double;
  IMC : Double;
  classificacao : String;
begin
  altura := StrToFloat(Edt_Peso.Text);
  peso := StrToFloat(Edt_Altura.Text);
  IMC := peso / (altura * altura);
    if (IMC<18.5) then
      begin
        Lbl_ResultIMC.Caption := FloatToStr(IMC);
        Lbl_ResultClass.Caption := ('Magreza');
      end;
    if (IMC>18.5) AND (IMC<24.9) then
      begin
        Lbl_ResultIMC.Caption := FloatToStr(IMC);
        Lbl_ResultClass.Caption := ('Normal');
      end;
    if (IMC>24.9) AND (IMC<29.9) then
      begin
        Lbl_ResultIMC.Caption := FloatToStr(IMC);
        Lbl_ResultClass.Caption := ('Sobrepeso');
      end;
    if (IMC>30) AND (IMC<39.9) then
      begin
        Lbl_ResultIMC.Caption := FloatToStr(IMC);
        Lbl_ResultClass.Caption := ('Obesidade');
      end;
    if (IMC>39.9) then
      begin
        Lbl_ResultIMC.Caption := FloatToStr(IMC);
        Lbl_ResultClass.Caption := ('Obesidade grave');
      end;
end;

end.
