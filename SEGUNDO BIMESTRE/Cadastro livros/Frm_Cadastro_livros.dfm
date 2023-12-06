object Frm_Cad: TFrm_Cad
  Left = 0
  Top = 0
  Caption = 'Frm_cadastro'
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
    Top = 92
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 74
    Top = 52
    Width = 42
    Height = 15
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 80
    Top = 132
    Width = 33
    Height = 15
    Caption = 'Autor:'
  end
  object DGrid_Livros: TDBGrid
    Left = 64
    Top = 168
    Width = 473
    Height = 113
    DataSource = Ds_livros
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Btn_incluir: TButton
    Left = 64
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 1
    OnClick = Btn_incluirClick
  end
  object DB_codigo: TDBEdit
    Left = 136
    Top = 49
    Width = 121
    Height = 23
    DataField = 'ID_LIVROS'
    DataSource = Ds_livros
    Enabled = False
    TabOrder = 2
  end
  object DB_nome: TDBEdit
    Left = 136
    Top = 89
    Width = 121
    Height = 23
    DataField = 'NOME'
    DataSource = Ds_livros
    Enabled = False
    TabOrder = 3
  end
  object DB_autor: TDBEdit
    Left = 136
    Top = 129
    Width = 121
    Height = 23
    DataField = 'AUTOR'
    DataSource = Ds_livros
    Enabled = False
    TabOrder = 4
  end
  object Btn_Salvar: TButton
    Left = 160
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 5
    OnClick = Btn_SalvarClick
  end
  object Btn_cancelar: TButton
    Left = 368
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 6
    OnClick = Btn_cancelarClick
  end
  object Btn_Excluir: TButton
    Left = 462
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 7
    OnClick = Btn_ExcluirClick
  end
  object Btn_Editar: TButton
    Left = 264
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 8
    OnClick = Btn_EditarClick
  end
  object Ds_livros: TDataSource
    DataSet = uDM_Cadastro.Tabela_Livros
    Left = 448
    Top = 48
  end
end
