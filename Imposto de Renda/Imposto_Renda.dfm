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
  object Lbl_Salario: TLabel
    Left = 116
    Top = 75
    Width = 38
    Height = 15
    Caption = 'Sal'#225'rio:'
  end
  object Lbl_Imposto: TLabel
    Left = 328
    Top = 130
    Width = 87
    Height = 15
    Caption = 'Imposto Devido:'
  end
  object TEdit_Salario: TEdit
    Left = 160
    Top = 72
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Rg_Dependentes: TRadioGroup
    Left = 328
    Top = 64
    Width = 225
    Height = 49
    Caption = 'Dependentes'
    Columns = 5
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4+')
    TabOrder = 1
    OnClick = Rg_DependentesClick
  end
  object Btn_Calcular: TButton
    Left = 160
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Calcular Imposto'
    TabOrder = 2
    OnClick = Btn_CalcularClick
  end
end
