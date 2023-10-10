object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Frm_Tres_numeros'
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
    Top = 115
    Width = 31
    Height = 15
    Caption = 'Maior'
  end
  object Label2: TLabel
    Left = 232
    Top = 115
    Width = 27
    Height = 15
    Caption = 'Meio'
  end
  object Label3: TLabel
    Left = 376
    Top = 115
    Width = 35
    Height = 15
    Caption = 'Menor'
  end
  object Num_1: TEdit
    Left = 40
    Top = 136
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Num_2: TEdit
    Left = 184
    Top = 136
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Num_3: TEdit
    Left = 328
    Top = 136
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Button1: TButton
    Left = 208
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Ordenar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
