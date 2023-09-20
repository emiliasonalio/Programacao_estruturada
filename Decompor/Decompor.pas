unit Decompor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edt_primos: TEdit;
    Lst_Decompor: TListBox;
    Btn_Decompor: TButton;
    procedure Btn_DecomporClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Btn_DecomporClick(Sender: TObject);

var num : integer;
result : integer;
  I: Integer;

begin
  Lst_Decompor.Clear;
 num := StrToInt(Edt_primos.text);
for I := num downto 1 do
  if (num mod I) = 0 then
  Lst_Decompor.Items.Add(IntToStr(I));


end;

end.
