object Frm_Dois: TFrm_Dois
  Left = 0
  Top = 0
  Caption = 'Frm_Dois'
  ClientHeight = 229
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Lst_um: TListBox
    Left = 32
    Top = 32
    Width = 225
    Height = 177
    ItemHeight = 15
    TabOrder = 0
  end
  object Adicionar: TButton
    Left = 280
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = AdicionarClick
  end
end
