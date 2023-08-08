unit Jokenpo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrm_Jokenpo = class(TForm)
    Rdg_Jogador1: TRadioGroup;
    Rdg_Jogador2: TRadioGroup;
    Vencedor: TButton;
    procedure VencedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Jokenpo: TFrm_Jokenpo;

implementation

{$R *.dfm}

procedure TFrm_Jokenpo.VencedorClick(Sender: TObject);
begin
  if (Rdg_Jogador1.ItemIndex = 0) then
    begin
      if (Rdg_Jogador2.ItemIndex = 0) then
      begin
        ShowMessage('Empate!');
      end;
      if (Rdg_Jogador2.ItemIndex = 1) then
      begin
        ShowMessage('Jogador 2 ganhou!');
      end;
      if (Rdg_Jogador2.ItemIndex = 2) then
      begin
        ShowMessage('Jogador 1 ganhou!');
      end;
    end;
    if (Rdg_Jogador1.ItemIndex = 1) then
    begin
      if (Rdg_Jogador2.ItemIndex = 0) then
      begin
        ShowMessage('Jogador 1 ganhou!');
      end;
      if (Rdg_Jogador2.ItemIndex = 1) then
      begin
        ShowMessage('Empate!');
      end;
      if (Rdg_Jogador2.ItemIndex = 2) then
      begin
        ShowMessage('Jogador 2 ganhou!');
      end;
    end;
     if (Rdg_Jogador1.ItemIndex = 2) then
    begin
      if (Rdg_Jogador2.ItemIndex = 0) then
      begin
        ShowMessage('Jogador 2 ganhou!');
      end;
      if (Rdg_Jogador2.ItemIndex = 1) then
      begin
        ShowMessage('Jogador 1 ganhou!');
      end;
      if (Rdg_Jogador2.ItemIndex = 2) then
      begin
        ShowMessage('Empate!');
      end;
    end;



end;

end.
