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
  object StringGrid1: TStringGrid
    Left = 40
    Top = 88
    Width = 320
    Height = 120
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect, goFixedRowDefAlign]
    TabOrder = 0
  end
  object Carregar: TButton
    Left = 40
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 1
    OnClick = CarregarClick
  end
end
