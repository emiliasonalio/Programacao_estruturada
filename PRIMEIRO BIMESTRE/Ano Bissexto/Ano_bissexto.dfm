object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Frm_Ano_Bissexto'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 64
    Top = 51
    Width = 67
    Height = 15
    Caption = 'Digite o ano:'
  end
  object Result: TLabel
    Left = 50
    Top = 160
    Width = 111
    Height = 15
  end
  object TEdit_Ano: TEdit
    Left = 40
    Top = 72
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Btn_Calcular: TButton
    Left = 64
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = Btn_CalcularClick
  end
end
