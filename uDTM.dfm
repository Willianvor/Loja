object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  Height = 245
  Width = 215
  object conPrincipal: TFDConnection
    Params.Strings = (
      'Database=\\WILLIAN\Bancos\Loja.mdb'
      'User_Name=administrador'
      'Password=1407'
      'DriverID=MSAcc')
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
  end
  object dtsPrincipal: TDataSource
    DataSet = qryPrincipal
    Left = 24
    Top = 102
  end
end
