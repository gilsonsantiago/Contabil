object dModulo: TdModulo
  OldCreateOrder = False
  Height = 445
  Width = 516
  object Conexao: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 40
  end
  object QUsuarios: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nusuario'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'nsenha'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT * FROM USUARIOS')
    Left = 32
    Top = 104
    object QUsuariosidusuario: TAutoIncField
      FieldName = 'idusuario'
      ReadOnly = True
    end
    object QUsuariosnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object QUsuariosusuario: TWideStringField
      FieldName = 'usuario'
      Size = 40
    end
    object QUsuariosstatus: TWideStringField
      FieldName = 'status'
      Size = 1
    end
    object QUsuariossenha: TWideStringField
      FieldName = 'senha'
      Size = 40
    end
    object QUsuariosdataCadastro: TDateTimeField
      FieldName = 'dataCadastro'
    end
    object QUsuariosnivel: TWideStringField
      FieldName = 'nivel'
      Size = 1
    end
    object QUsuariosano: TIntegerField
      FieldName = 'ano'
    end
    object QUsuariosmes: TIntegerField
      FieldName = 'mes'
    end
  end
  object DSUsuario: TDataSource
    DataSet = QUsuarios
    Left = 32
    Top = 168
  end
  object qUsuario: TADOQuery
    Connection = Conexao
    Parameters = <>
    Left = 632
    Top = 16
  end
  object qCadUsuario: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 112
    Top = 104
    object qCadUsuarioidusuario: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'idusuario'
      ReadOnly = True
    end
    object qCadUsuarionome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 100
    end
    object qCadUsuariousuario: TWideStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'usuario'
      Size = 40
    end
    object qCadUsuariodataCadastro: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'dataCadastro'
    end
  end
  object DSCadUsuario: TDataSource
    DataSet = qCadUsuario
    Left = 112
    Top = 168
  end
  object ConexaoDesenvolve: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Aplicacao\Contab' +
      'il\DB\Contabil.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 368
    Top = 16
  end
  object ExecutaSQLc: TADOCommand
    Connection = Conexao
    Parameters = <>
    Left = 120
    Top = 40
  end
  object DSCadEmpresa: TDataSource
    DataSet = qCadEmpresa
    Left = 192
    Top = 168
  end
  object qCadEmpresa: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 192
    Top = 104
    object qCadEmpresaidempresa: TAutoIncField
      FieldName = 'idempresa'
      ReadOnly = True
    end
    object qCadEmpresanome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object qCadEmpresaendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object qCadEmpresacidade: TWideStringField
      FieldName = 'cidade'
      Size = 100
    end
    object qCadEmpresacnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 18
    end
    object qCadEmpresaidusuario: TIntegerField
      FieldName = 'idusuario'
    end
  end
  object qCadCompetencia: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Exercicios')
    Left = 280
    Top = 104
    object qCadCompetenciaano: TIntegerField
      FieldName = 'ano'
    end
    object qCadCompetenciames: TIntegerField
      FieldName = 'mes'
    end
  end
  object DSCadCompetencia: TDataSource
    DataSet = qCadCompetencia
    Left = 280
    Top = 168
  end
end
