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
      '')
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
end
