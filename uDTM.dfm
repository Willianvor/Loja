object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  Height = 245
  Width = 510
  object conPrincipal: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Windows\Documents\Embarcadero\Studio\Projects\' +
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
    Left = 88
    Top = 6
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
    Left = 88
    Top = 54
  end
  object qryUsuario: TFDQuery
    Active = True
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tb_usuario')
    Left = 152
    Top = 8
  end
  object dtsUsuario: TDataSource
    DataSet = qryUsuario
    Left = 152
    Top = 54
  end
  object qryConf: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tb_conf')
    Left = 216
    Top = 8
  end
  object dtsConf: TDataSource
    DataSet = qryConf
    Left = 216
    Top = 54
  end
  object FDQuery1: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'select * from tb_vendas'
      'inner join tb_usuario'
      'ON tb_usuario.id_usuario = tb_vendas.fk_nm_usuario'
      'where tb_vendas.dt_data = CDate('#39'12/08/2020'#39')')
    Left = 88
    Top = 150
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'id_venda'
      Origin = 'id_venda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'dt_data'
      Origin = 'dt_data'
    end
    object IntegerField1: TIntegerField
      FieldName = 'fk_nm_usuario'
      Origin = 'fk_nm_usuario'
    end
    object WideStringField1: TWideStringField
      FieldName = 'nm_descricao'
      Origin = 'nm_descricao'
      Size = 255
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'vlr_servico'
      Origin = 'vlr_servico'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'vlr_desconto_usuario'
      Origin = 'vlr_desconto_usuario'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'vlr_dinheiro'
      Origin = 'vlr_dinheiro'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'vlr_cartao'
      Origin = 'vlr_cartao'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'vlr_custo'
      Origin = 'vlr_custo'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'vlr_lucro'
      Origin = 'vlr_lucro'
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'vlr_debito'
      Origin = 'vlr_debito'
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'vlr_nao_faturar'
      Origin = 'vlr_nao_faturar'
    end
    object IntegerField2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = []
      ReadOnly = True
    end
    object WideStringField2: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_usuario'
      Origin = 'nm_usuario'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object qryComissao: TFDQuery
    Active = True
    Connection = conPrincipal
    SQL.Strings = (
      
        'select dt_pagamento, id_comissionado, nm_usuario, dt_inicio_comi' +
        'ssao, dt_final_comissao, nr_porcentagem, vlr_comissao, vlr_adici' +
        'onar, vlr_deduzir, vlr_total, nm_observacoes'
      'from tb_comissao'
      'inner join tb_usuario'
      'ON tb_usuario.id_usuario = tb_comissao.id_comissionado')
    Left = 312
    Top = 8
  end
  object dtsComissao: TDataSource
    DataSet = qryComissao
    Left = 312
    Top = 54
  end
end
