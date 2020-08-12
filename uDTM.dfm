object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  Height = 245
  Width = 215
  object conPrincipal: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\windows\Documents\Embarcadero\Studio\Projects\' +
        '- Github\Loja\Loja.mdb'
      'User_Name=administrador'
      'Password=1407'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 6
  end
  object qryPrincipal: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tb_vendas inner join tb_usuario'
      'ON tb_usuario.id_usuario = tb_vendas.fk_nm_usuario')
    Left = 24
    Top = 54
    object qryPrincipalid_venda: TFDAutoIncField
      FieldName = 'id_venda'
      Origin = 'id_venda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPrincipaldt_data: TSQLTimeStampField
      FieldName = 'dt_data'
      Origin = 'dt_data'
    end
    object qryPrincipalfk_nm_usuario: TIntegerField
      FieldName = 'fk_nm_usuario'
      Origin = 'fk_nm_usuario'
    end
    object qryPrincipalnm_descricao: TWideStringField
      FieldName = 'nm_descricao'
      Origin = 'nm_descricao'
      Size = 255
    end
    object qryPrincipalvlr_servico: TCurrencyField
      FieldName = 'vlr_servico'
      Origin = 'vlr_servico'
    end
    object qryPrincipalvlr_desconto_usuario: TCurrencyField
      FieldName = 'vlr_desconto_usuario'
      Origin = 'vlr_desconto_usuario'
    end
    object qryPrincipalvlr_dinheiro: TCurrencyField
      FieldName = 'vlr_dinheiro'
      Origin = 'vlr_dinheiro'
    end
    object qryPrincipalvlr_cartao: TCurrencyField
      FieldName = 'vlr_cartao'
      Origin = 'vlr_cartao'
    end
    object qryPrincipalvlr_custo: TCurrencyField
      FieldName = 'vlr_custo'
      Origin = 'vlr_custo'
    end
    object qryPrincipalvlr_lucro: TCurrencyField
      FieldName = 'vlr_lucro'
      Origin = 'vlr_lucro'
    end
    object qryPrincipalvlr_debito: TCurrencyField
      FieldName = 'vlr_debito'
      Origin = 'vlr_debito'
    end
    object qryPrincipalvlr_nao_faturar: TCurrencyField
      FieldName = 'vlr_nao_faturar'
      Origin = 'vlr_nao_faturar'
    end
    object qryPrincipalid_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPrincipalnm_usuario: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_usuario'
      Origin = 'nm_usuario'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object dtsPrincipal: TDataSource
    DataSet = qryPrincipal
    Left = 24
    Top = 102
  end
  object qryUsuario: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tb_usuario')
    Left = 88
    Top = 56
  end
  object dtsUsuario: TDataSource
    DataSet = qryUsuario
    Left = 88
    Top = 102
  end
end
