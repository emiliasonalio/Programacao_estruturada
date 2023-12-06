object Frm_cadastro_edt: TFrm_cadastro_edt
  Left = 0
  Top = 0
  Caption = 'Frm_cadastro_edt'
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
    Left = 88
    Top = 64
    Width = 79
    Height = 15
    Caption = 'C'#243'digo Editora'
    FocusControl = DB_ID
  end
  object Label2: TLabel
    Left = 88
    Top = 112
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = DB_nome
  end
  object Label3: TLabel
    Left = 88
    Top = 160
    Width = 37
    Height = 15
    Caption = 'Cidade'
    FocusControl = DB_cidade
  end
  object DB_ID: TDBEdit
    Left = 88
    Top = 80
    Width = 154
    Height = 23
    DataField = 'ID_EDITORA'
    DataSource = DS_Editora
    TabOrder = 0
  end
  object DB_nome: TDBEdit
    Left = 88
    Top = 131
    Width = 154
    Height = 23
    DataField = 'NOME'
    DataSource = DS_Editora
    TabOrder = 1
  end
  object DGrid_Livros: TDBGrid
    Left = 88
    Top = 232
    Width = 473
    Height = 113
    DataSource = DS_Editora
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Btn_incluir: TButton
    Left = 88
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 3
    OnClick = Btn_incluirClick
  end
  object Btn_Salvar: TButton
    Left = 184
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 4
    OnClick = Btn_SalvarClick
  end
  object Btn_cancelar: TButton
    Left = 392
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 5
    OnClick = Btn_cancelarClick
  end
  object Btn_Excluir: TButton
    Left = 486
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
    OnClick = Btn_ExcluirClick
  end
  object Btn_Editar: TButton
    Left = 288
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 7
    OnClick = Btn_EditarClick
  end
  object DB_cidade: TDBEdit
    Left = 88
    Top = 181
    Width = 154
    Height = 23
    DataField = 'CIDADE'
    DataSource = DS_Editora
    TabOrder = 8
  end
  object DS_Editora: TDataSource
    DataSet = uDM_Cadastro.Tabela_Editora
    Left = 312
    Top = 96
  end
end
