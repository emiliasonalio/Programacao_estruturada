unit uconversorMoeda;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrm_conversor }

  TFrm_conversor = class(TForm)
    Tcb_moedas: TComboBox;
    Edt_valor: TEdit;
    Resultado: TLabel;
    Lbl_valor: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Lbl_valorClick(Sender: TObject);
    procedure Tcb_moedasChange(Sender: TObject);
  private

  public

  end;

var
  Frm_conversor: TFrm_conversor;

implementation

{$R *.lfm}

{ TFrm_conversor }

procedure TFrm_conversor.FormCreate(Sender: TObject);
begin

end;

procedure TFrm_conversor.Lbl_valorClick(Sender: TObject);
begin

end;

procedure TFrm_conversor.Tcb_moedasChange(Sender: TObject);
var
  real : Double;
  conversao : Double;
begin
  if (Tcb_moedas.itemIndex = 0) then //Conversão dólar
  begin
     real := StrToFloat(Edt_valor.text);
     conversao := real / 4.9;
  end;
  if (Tcb_moedas.itemIndex = 1) then //Conversão euro
  begin
     real := StrToFloat(Edt_valor.text);
     conversao := real / 5.37;
  end;
  if (Tcb_moedas.itemIndex = 2) then //Conversão ienes
  begin
     real := StrToFloat(Edt_valor.text);
     conversao := real / 0.034;
  end;

  Resultado.Caption := ('Valor convertido: ' + Format('%.2f',[conversao]));

end;

end.

