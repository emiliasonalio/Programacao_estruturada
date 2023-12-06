object uDM_Cadastro: TuDM_Cadastro
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      
        'Database=C:\Users\aluno\Documents\GitHub\pro\Programacao_estrutu' +
        'rada\SEGUNDO BIMESTRE\Cadastro livros\DB_CADASTRO.IB'
      'DriverID=IB')
    Connected = True
    Left = 144
    Top = 184
  end
  object Tabela_Livros: TFDTable
    Active = True
    IndexFieldNames = 'ID_LIVROS'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'LIVROS'
    Left = 224
    Top = 184
    object Tabela_LivrosID_LIVROS: TSmallintField
      FieldName = 'ID_LIVROS'
      Origin = 'ID_LIVROS'
      Required = True
    end
    object Tabela_LivrosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      FixedChar = True
      Size = 50
    end
    object Tabela_LivrosAUTOR: TStringField
      FieldName = 'AUTOR'
      Origin = 'AUTOR'
      Required = True
      FixedChar = True
      Size = 50
    end
  end
  object Tabela_Editora: TFDTable
    Active = True
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'EDITORA'
    Left = 312
    Top = 184
    object Tabela_EditoraID_EDITORA: TSmallintField
      FieldName = 'ID_EDITORA'
      Origin = 'ID_EDITORA'
    end
    object Tabela_EditoraNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      FixedChar = True
      Size = 50
    end
    object Tabela_EditoraCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      FixedChar = True
      Size = 50
    end
  end
  object Tabela_Clientes: TFDTable
    Active = True
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CLIENTES'
    Left = 408
    Top = 184
    object Tabela_ClientesID_CLIENTE: TSmallintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object Tabela_ClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      FixedChar = True
      Size = 50
    end
    object Tabela_ClientesTELEFONE: TSmallintField
      FieldName = 'TELEFONE'
      Origin = 'Telefone'
      Required = True
    end
  end
end
