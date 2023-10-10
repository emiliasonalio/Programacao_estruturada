unit TabuadaText;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrm_Tabuada = class(TForm)
    Edt_Tabuada: TEdit;
    Lbl_Tabuada: TLabel;
    Btn_Tabuada: TButton;
    procedure Btn_TabuadaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tabuada: TFrm_Tabuada;

implementation

{$R *.dfm}

procedure TFrm_Tabuada.Btn_TabuadaClick(Sender: TObject);
var
  tabuada : TextFile;
  i : integer;
  result : integer;
  mult : integer;



begin
  mult := StrToInt(Edt_Tabuada.Text);

  AssignFile(tabuada, 'Tabuada.txt');
  Rewrite(tabuada);




  for i := 1 to 10 do
  begin
    result := mult * i;
    writeln(tabuada, IntToStr(mult) + ' x ' + IntToStr(i) + ' = ' + IntToStr(result));

  end;

  CloseFile(tabuada);

end;

end.
