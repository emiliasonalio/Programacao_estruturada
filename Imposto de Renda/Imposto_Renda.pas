unit Imposto_Renda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    TEdit_Salario: TEdit;
    Lbl_Salario: TLabel;
    Rg_Dependentes: TRadioGroup;
    Btn_Calcular: TButton;
    Lbl_Imposto: TLabel;
    procedure Btn_CalcularClick(Sender: TObject);
    procedure Rg_DependentesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure impostoRenda (salario : double);
var
  imposto : double;
  impostoFinal : double;

     begin

      imposto := salario;

      if (Form1.Rg_Dependentes.ItemIndex = 0) then
        begin
           imposto := salario;
        end;

      if (Form1.Rg_Dependentes.ItemIndex = 1) then
        begin
          imposto := salario - 100;
        end;

      if (Form1.Rg_Dependentes.ItemIndex = 2) then
        begin
          imposto := salario - 150;
        end;

      if (Form1.Rg_Dependentes.ItemIndex = 3) then
        begin
          imposto := salario - 180;
        end;

      if (Form1.Rg_Dependentes.ItemIndex = 4) then
        begin
          imposto := salario - 200;
        end;


      if (salario < 2000 ) then
        begin
          Form1.Lbl_Imposto.Caption := 'Insento';
          impostoFinal:=0;
        end;

      if (salario < 2999.99) and (salario >= 2000) then
        begin
          impostoFinal := imposto * 0.15;
        end;

      if (salario >= 3000) and (salario < 3999.99) then
        begin
          impostoFinal := imposto * 0.2;
        end;

        if (salario > 4000) then
        begin
          impostoFinal := imposto * 0.25;
        end;

     Form1.Lbl_Imposto.Caption := 'Imposto Devido ' + FloatToStr(impostoFinal);

     end;

procedure TForm1.Btn_CalcularClick(Sender: TObject);
var
 salario : double;
begin
  salario := StrToFloat(TEdit_Salario.Text);
  impostoRenda(salario);
end;

procedure TForm1.Rg_DependentesClick(Sender: TObject);
var
 salario : double;
begin
  salario := StrToFloat(TEdit_Salario.Text);
  impostoRenda(salario);
end;

end.
