unit uAreas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Btn_calcular: TButton;
    Edt_1: TEdit;
    Edt_2: TEdit;
    Edt_3: TEdit;
    Lbl_1: TLabel;
    Lbl_2: TLabel;
    Lbl_3: TLabel;
    Rdg_areas: TRadioGroup;
    procedure Btn_calcularClick(Sender: TObject);
    procedure Rdg_areasClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Rdg_areasClick(Sender: TObject);
begin
     Lbl_1.Visible := False;
     Lbl_2.Visible := False;
     Lbl_3.Visible := False;
     Edt_1.Visible := False;
     Edt_2.Visible := False;
     Edt_3.Visible := False;

if  (Rdg_areas.itemIndex = 0) then // Quadrado
    begin
    Lbl_1.Visible := True;
    Edt_1.Visible := True;
    Lbl_1.Caption := 'Lado:';
    Lbl_2.Visible := False;
    Lbl_3.Visible := False;
    Edt_2.Visible := False;
    Edt_3.Visible := False;
    end;
if (Rdg_areas.itemIndex = 1) then // Triangulo
   begin
   Lbl_1.Visible := True;
   Edt_1.Visible := True;
   Lbl_1.Caption := 'Altura:';
   Lbl_2.Visible := True;
   Lbl_2.Caption := 'Base:';
   Edt_2.Visible := True;
   Lbl_3.Visible := False;
   Edt_3.Visible := False;
   end;
if (Rdg_areas.itemIndex = 2) then // Paralelogramo
   begin
   Lbl_1.Visible := True;
   Edt_1.Visible := True;
   Lbl_1.Caption := 'Altura:';
   Lbl_2.Visible := True;
   Edt_2.Visible := True;
   Lbl_2.Caption := 'Base:';
   Lbl_3.Visible := False;
   Edt_3.Visible := False;
  end;
if (Rdg_areas.itemIndex = 3) then // Retângulo
   begin
   Lbl_1.Visible := True;
   Edt_1.Visible := True;
   Lbl_1.Caption := 'Altura:';
   Lbl_2.Visible := True;
   Edt_2.Visible := True;
   Lbl_2.Caption := 'Base:';
   Lbl_3.Visible := False;
   Edt_3.Visible := False;
   end;
if (Rdg_areas.itemIndex = 4) then // Trapézio
   begin
   Lbl_1.Visible := True;
   Edt_1.Visible := True;
   Lbl_1.Caption := 'Altura:';
   Edt_2.Visible := True;
   Lbl_2.Visible := True;
   Lbl_2.Caption := 'Base maior:';
   Edt_3.Visible := True;
   Lbl_3.Visible := True;
   Lbl_3.Caption := 'Base menor';
   end;
if  (Rdg_areas.itemIndex = 5) then // Círculo
    begin
    Lbl_1.Visible := True;
    Edt_1.Visible := True;
    Lbl_1.Caption := 'Raio:';
    Lbl_2.Visible := False;
    Lbl_3.Visible := False;
    Edt_2.Visible := False;
    Edt_3.Visible := False;
    end;

end;

procedure TForm1.Btn_calcularClick(Sender: TObject);
var
  area : Double;
  lado : Double;
  altura, base, baseMenor : Double;
  raio : Double;

begin
  if  (Rdg_areas.itemIndex = 0) then // Quadrado
  begin
       lado := StrToFloat(Edt_1.Text);
       area := lado * lado;
  end;
  if (Rdg_areas.itemIndex = 1) or (Rdg_areas.itemIndex = 2) or (Rdg_areas.itemIndex = 3) then // Triangulo
  begin
       altura := StrToFloat(Edt_1.Text);
       base := StrToFloat(Edt_2.Text);
       area := (altura * base);

       if (Rdg_areas.itemIndex = 1) then
          area := (altura * base) / 2;

  end;
  if (Rdg_areas.itemIndex = 4) then // Trapézio
  begin
       altura := StrToFloat(Edt_1.Text);
       base := StrToFloat(Edt_2.Text); //Base maior
       baseMenor := StrToFloat(Edt_3.Text);
       area := ((base + baseMenor) * altura) / 2;
  end;
  if  (Rdg_areas.itemIndex = 5) then // Círculo
  begin
       raio := StrToFloat(Edt_1.Text);
       area := 3.14 * raio * raio;
  end;
  ShowMessage('A área é: ' + FloatToStr(area);
end;

end.

