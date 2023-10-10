unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrm_Dois = class(TForm)
    Lst_um: TListBox;
    Adicionar: TButton;
    procedure AdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
  procedure AdicionarImposto (imposto : String);

  end;



var
  Frm_Dois: TFrm_Dois;

implementation

{$R *.dfm}

uses Imposto_Renda;

procedure TFrm_Dois.AdicionarClick(Sender: TObject);
begin
  if not assigned (Frm_Um) then
    application.CreateForm(TFrm_Dois, Frm_Dois);

      Frm_Um.Show;
end;

procedure TFrm_Dois.AdicionarImposto(imposto: String);
begin
  Lst_um.Items.Add(imposto);
end;

end.
