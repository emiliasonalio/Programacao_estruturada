unit uFrm_Principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrrm_Principal }

  TFrrm_Principal = class(TForm)
    Btn_Ola: TButton;
    Edt_Nome: TEdit;
    procedure Btn_OlaClick(Sender: TObject);
    procedure Edt_NomeChange(Sender: TObject);
  private

  public

  end;

var
  Frrm_Principal: TFrrm_Principal;

implementation

{$R *.lfm}

{ TFrrm_Principal }

procedure TFrrm_Principal.Btn_OlaClick(Sender: TObject);
          var nome : String;
begin
              nome := Edt_Nome.Text;
              ShowMessage('Olá, ' + nome);
end;

procedure TFrrm_Principal.Edt_NomeChange(Sender: TObject);
begin

end;

end.

