unit uForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCalculadora }

  TCalculadora = class(TForm)
    Resultado: TLabel;
    Multiplicacao: TButton;
    Subtracao: TButton;
    Soma: TButton;
    Divisao: TButton;
    Edt_1Num: TEdit;
    Edt_2Num: TEdit;
    SegNum: TLabel;
    PrimNum: TLabel;
    procedure DivisaoClick(Sender: TObject);
    procedure Edt_2NumChange(Sender: TObject);
    procedure Edt_1NumChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MultiplicacaoClick(Sender: TObject);
    procedure PrimNumClick(Sender: TObject);
    procedure ResultadoClick(Sender: TObject);
    procedure SegNumClick(Sender: TObject);
    procedure SomaClick(Sender: TObject);
    procedure SubtracaoClick(Sender: TObject);
  private

  public

  end;

var
  Calculadora: TCalculadora;

implementation

{$R *.lfm}

{ TCalculadora }

procedure TCalculadora.Edt_1NumChange(Sender: TObject);
begin

end;

procedure TCalculadora.FormCreate(Sender: TObject);
begin

end;

procedure TCalculadora.MultiplicacaoClick(Sender: TObject);
          var result : Double ;
begin
  result := StrToFloat(Edt_1Num.Text) * StrToFloat(Edt_2Num.Text) ;
         ShowMessage(FloatToStr(result));
            Resultado.Caption := FloatToStr(result);
end;

procedure TCalculadora.PrimNumClick(Sender: TObject);
begin

end;

procedure TCalculadora.ResultadoClick(Sender: TObject);
begin

end;

procedure TCalculadora.SegNumClick(Sender: TObject);
begin

end;

procedure TCalculadora.SomaClick(Sender: TObject);
          var result : Double ;
begin
    result := StrToFloat(Edt_1Num.Text) + StrToFloat(Edt_2Num.Text) ;
           ShowMessage(FloatToStr(result));
               Resultado.Caption := FloatToStr(result) ;
end;

procedure TCalculadora.SubtracaoClick(Sender: TObject);
          var result : Double ;
begin
     result := StrToFloat(Edt_1Num.Text) - StrToFloat(Edt_2Num.Text) ;
            ShowMessage(FloatToStr(result));
               Resultado.Caption := FloatToStr(result);
end;

procedure TCalculadora.Edt_2NumChange(Sender: TObject);
begin

end;

procedure TCalculadora.DivisaoClick(Sender: TObject);
          var result : Double ;
begin
  result := StrToFloat(Edt_1Num.Text) / StrToFloat(Edt_2Num.Text) ;
         ShowMessage(FloatToStr(result));
            Resultado.Caption := FloatToStr(result);
end;

end.

