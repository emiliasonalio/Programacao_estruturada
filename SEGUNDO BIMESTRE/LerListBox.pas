unit LerListBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrm_List = class(TForm)
    Ltb_LerList: TListBox;
    Btn_Ler: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_List: TFrm_List;

implementation

{$R *.dfm}

end.
