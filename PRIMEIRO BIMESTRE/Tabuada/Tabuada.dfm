object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 217
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Lbl_Mostrar: TLabel
    Left = 64
    Top = 27
    Width = 91
    Height = 15
    Caption = 'Mostrar Tabuada:'
  end
  object Lst_Tabuada: TListBox
    Left = 32
    Top = 144
    Width = 145
    Height = 249
    ItemHeight = 15
    TabOrder = 0
  end
  object Edt_tabuada: TEdit
    Left = 48
    Top = 48
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Btn_Calcular: TButton
    Left = 64
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Btn_CalcularClick
  end
end
