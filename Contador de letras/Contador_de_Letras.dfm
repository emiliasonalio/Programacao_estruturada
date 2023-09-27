object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    Left = 80
    Top = 35
    Width = 74
    Height = 15
    Caption = 'Digite o texto:'
  end
  object Label2: TLabel
    Left = 232
    Top = 184
    Width = 142
    Height = 15
    Caption = 'Digite a letra a ser contada:'
  end
  object Edt_Texto: TEdit
    Left = 80
    Top = 56
    Width = 457
    Height = 105
    TabOrder = 0
  end
  object Button1: TButton
    Left = 264
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Analisar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edt_Letra: TEdit
    Left = 240
    Top = 208
    Width = 121
    Height = 23
    TabOrder = 2
  end
end
