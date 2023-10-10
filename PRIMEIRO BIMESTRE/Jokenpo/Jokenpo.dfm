object Frm_Jokenpo: TFrm_Jokenpo
  Left = 0
  Top = 0
  Caption = 'Frm_Jokenpo'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Rdg_Jogador1: TRadioGroup
    Left = 72
    Top = 80
    Width = 185
    Height = 105
    Caption = 'Jogador 1'
    Items.Strings = (
      'Pedra'
      'Papel'
      'Tesoura')
    TabOrder = 0
  end
  object Rdg_Jogador2: TRadioGroup
    Left = 312
    Top = 80
    Width = 185
    Height = 105
    Caption = 'Jogador 2'
    Items.Strings = (
      'Pedra'
      'Papel '
      'Tesoura')
    TabOrder = 1
  end
  object Vencedor: TButton
    Left = 208
    Top = 216
    Width = 161
    Height = 25
    Caption = 'Determinar Vencedor!'
    TabOrder = 2
    OnClick = VencedorClick
  end
end
