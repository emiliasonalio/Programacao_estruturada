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
  object Rdb_Um: TRadioButton
    Left = 170
    Top = 95
    Width = 113
    Height = 17
    Caption = 'Um'
    TabOrder = 0
  end
  object Rdb_Dois: TRadioButton
    Left = 170
    Top = 118
    Width = 113
    Height = 17
    Caption = 'Dois'
    TabOrder = 1
  end
  object Btn_Verificar: TButton
    Left = 192
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 2
    OnClick = Btn_VerificarClick
  end
  object Rdg_Dias: TRadioGroup
    Left = 313
    Top = 71
    Width = 185
    Height = 146
    Caption = 'Rdg_Dias'
    Items.Strings = (
      'Domingo'
      'Segunda'
      'Ter'#231'a'
      'Quarta'
      'Quinta'
      'Sexta'
      'S'#225'bado')
    TabOrder = 3
  end
  object Btn_Dia: TButton
    Left = 336
    Top = 223
    Width = 130
    Height = 25
    Caption = 'Final de Semana?'
    TabOrder = 4
    OnClick = Btn_DiaClick
  end
end
