object Frm_Incluir: TFrm_Incluir
  Left = 0
  Top = 0
  Caption = 'Frm_Incluir'
  ClientHeight = 330
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 120
    Top = 131
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 120
    Top = 91
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 120
    Top = 171
    Width = 33
    Height = 15
    Caption = 'Autor:'
  end
  object DBEdit1: TDBEdit
    Left = 200
    Top = 88
    Width = 121
    Height = 23
    DataField = 'ID_LIVROS'
    DataSource = Form1.Ds_livros
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 128
    Width = 121
    Height = 23
    DataField = 'NOME'
    DataSource = Form1.Ds_livros
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 200
    Top = 168
    Width = 121
    Height = 23
    DataField = 'AUTOR'
    DataSource = Form1.Ds_livros
    TabOrder = 2
  end
  object Salvar: TButton
    Left = 112
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = SalvarClick
  end
  object Cancelar: TButton
    Left = 224
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = CancelarClick
  end
end
