object Frn_Principal: TFrn_Principal
  Left = 0
  Top = 0
  Caption = 'Frn_Principal'
  ClientHeight = 467
  ClientWidth = 543
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 21
  object Label1: TLabel
    Left = 168
    Top = 86
    Width = 37
    Height = 17
    Caption = 'Altura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 142
    Width = 35
    Height = 17
    Caption = 'Peso: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_IMC: TLabel
    Left = 174
    Top = 256
    Width = 31
    Height = 21
    Caption = 'IMC:'
  end
  object Classificação: TLabel
    Left = 168
    Top = 299
    Width = 91
    Height = 21
    Caption = 'Classifica'#231#227'o:'
  end
  object Lbl_ResultIMC: TLabel
    Left = 224
    Top = 256
    Width = 105
    Height = 21
    AutoSize = False
  end
  object Lbl_ResultClass: TLabel
    Left = 265
    Top = 299
    Width = 105
    Height = 21
    AutoSize = False
  end
  object Edt_Altura: TEdit
    Left = 224
    Top = 136
    Width = 121
    Height = 29
    TabOrder = 0
  end
  object Edt_Peso: TEdit
    Left = 224
    Top = 80
    Width = 121
    Height = 29
    TabOrder = 1
  end
  object Calcular: TButton
    Left = 240
    Top = 191
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = CalcularClick
  end
end
