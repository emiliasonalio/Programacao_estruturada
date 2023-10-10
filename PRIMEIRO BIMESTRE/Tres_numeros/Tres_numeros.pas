unit Tres_numeros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Num_1: TEdit;
    Num_2: TEdit;
    Num_3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
maior, menor, meio : Double;

begin
  maior := StrToFloat(Num_1.Text);
  menor := StrToFloat(Num_3.Text);
  meio := StrToFloat(Num_2.Text);

    if (maior >= meio) and (maior >= menor) then
    begin
      Num_1.Text := FloatToStr(maior);
        if (meio >= menor) then
          begin
            Num_2.Text := FloatToStr(meio);
            Num_3.Text := FloatToStr(menor);
          end;
        if (menor >= meio) then
          begin
            Num_2.Text := FloatToStr(menor);
            Num_3.Text := FloatToStr(meio);
          end;
    end;
    if (meio >= maior) and (meio >= menor) then
    begin
      Num_1.Text := FloatToStr(meio);
          if (menor >= maior) then
          begin
            Num_2.Text := FloatToStr(menor);
            Num_3.Text := FloatToStr(maior);
          end;
        if (maior >= menor) then
          begin
            Num_2.Text := FloatToStr(maior);
            Num_3.Text := FloatToStr(menor);
          end;
    end;
    if (menor >= maior) and (menor >= meio) then
      begin
        Num_1.Text := FloatToStr(menor);
          if (maior >= meio) then
            begin
              Num_2.Text := FloatToStr(maior);
              Num_3.Text := FloatToStr(meio);
            end;
          if (meio >= maior) then
            begin
              Num_2.Text := FloatToStr(meio);
              Num_3.Text := FloatToStr(maior);
            end;
      end;


end;

end.
