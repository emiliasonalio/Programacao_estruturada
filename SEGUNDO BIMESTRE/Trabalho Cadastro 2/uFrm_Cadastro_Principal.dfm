object Frm_Cadastro_Principal: TFrm_Cadastro_Principal
  Left = 0
  Top = 0
  Caption = 'Frm_Cadastro_Principal'
  ClientHeight = 348
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LbL_nome_livro: TLabel
    Left = 16
    Top = 16
    Width = 85
    Height = 15
    Caption = 'Nome do Livro: '
  end
  object Lbl_autor: TLabel
    Left = 15
    Top = 45
    Width = 86
    Height = 15
    Caption = 'Nome do Autor:'
  end
  object Lbl_editora: TLabel
    Left = 16
    Top = 77
    Width = 40
    Height = 15
    Caption = 'Editora:'
  end
  object Label1: TLabel
    Left = 448
    Top = 11
    Width = 25
    Height = 15
    Caption = 'Ano:'
  end
  object Label2: TLabel
    Left = 448
    Top = 40
    Width = 41
    Height = 15
    Caption = 'Edi'#231#227'o: '
  end
  object Edt_nome_livro: TEdit
    Left = 107
    Top = 8
    Width = 326
    Height = 23
    Enabled = False
    TabOrder = 0
  end
  object Edt_autor: TEdit
    Left = 107
    Top = 37
    Width = 326
    Height = 23
    Enabled = False
    TabOrder = 1
  end
  object Edt_editora: TEdit
    Left = 107
    Top = 66
    Width = 326
    Height = 23
    Enabled = False
    TabOrder = 2
  end
  object Grd_Produtos: TStringGrid
    Left = 16
    Top = 144
    Width = 625
    Height = 153
    TabOrder = 3
  end
  object Btn_Salvar: TButton
    Left = 290
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 4
    OnClick = Btn_SalvarClick
  end
  object Btn_Editar: TButton
    Left = 153
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 5
  end
  object Btn_excluir: TButton
    Left = 558
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
    OnClick = Btn_excluirClick
  end
  object Btn_incluir: TButton
    Left = 26
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 7
    OnClick = Btn_incluirClick
  end
  object Btn_cancelar: TButton
    Left = 421
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 8
    OnClick = Btn_cancelarClick
  end
  object Edt_ano: TEdit
    Left = 512
    Top = 8
    Width = 121
    Height = 23
    Enabled = False
    TabOrder = 9
  end
  object Edt_edicao: TEdit
    Left = 512
    Top = 37
    Width = 121
    Height = 23
    Enabled = False
    TabOrder = 10
  end
end
