object uDM_Cadastro: TuDM_Cadastro
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      
        'Database=C:\Users\aluno\Documents\GitHub\GitHub\Programacao_estr' +
        'uturada\SEGUNDO BIMESTRE\Cadastro livros\DB_CADASTRO.IB'
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
  end
  object Tabela_Editora: TFDTable
    Active = True
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'EDITORA'
    Left = 312
    Top = 184
  end
  object Tabela_Clientes: TFDTable
    Active = True
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CLIENTES'
    Left = 408
    Top = 184
  end
end
