object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 315
  ClientWidth = 180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Edt_primos: TEdit
    Left = 32
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Lst_Decompor: TListBox
    Left = 32
    Top = 120
    Width = 121
    Height = 169
    ItemHeight = 15
    TabOrder = 1
  end
  object Btn_Decompor: TButton
    Left = 56
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Decompor!'
    TabOrder = 2
    OnClick = Btn_DecomporClick
  end
end
