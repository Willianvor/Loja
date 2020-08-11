object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 470
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 429
    Align = alClient
    TabOrder = 0
    ExplicitTop = 1
    ExplicitHeight = 160
    object lblUsuario: TLabel
      Left = 8
      Top = 8
      Width = 46
      Height = 13
      Caption = 'USU'#193'RIO'
    end
    object lblData: TLabel
      Left = 168
      Top = 11
      Width = 27
      Height = 13
      Caption = 'DATA'
    end
    object Label1: TLabel
      Left = 16
      Top = 72
      Width = 65
      Height = 13
      Caption = 'nm_descricao'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 112
      Width = 52
      Height = 13
      Caption = 'vlr_servico'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 152
      Width = 103
      Height = 13
      Caption = 'vlr_desconto_usuario'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 192
      Width = 56
      Height = 13
      Caption = 'vlr_dinheiro'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 232
      Width = 49
      Height = 13
      Caption = 'vlr_cartao'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 16
      Top = 272
      Width = 44
      Height = 13
      Caption = 'vlr_custo'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 16
      Top = 312
      Width = 41
      Height = 13
      Caption = 'vlr_lucro'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 16
      Top = 352
      Width = 48
      Height = 13
      Caption = 'vlr_debito'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 16
      Top = 392
      Width = 76
      Height = 13
      Caption = 'vlr_nao_faturar'
      FocusControl = DBEdit9
    end
    object dblUsuario: TDBLookupComboBox
      Left = 8
      Top = 27
      Width = 145
      Height = 21
      DataField = 'fk_nm_usuario'
      DataSource = dtmPrincipal.dtsPrincipal
      KeyField = 'id_usuario'
      ListField = 'nm_usuario'
      ListSource = dtmPrincipal.dtsUsuario
      TabOrder = 0
    end
    object dtpDataVenda: TDateTimePicker
      Left = 168
      Top = 27
      Width = 97
      Height = 21
      Date = 44044.000000000000000000
      Time = 0.507645312500244500
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 88
      Width = 3319
      Height = 21
      DataField = 'nm_descricao'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 128
      Width = 134
      Height = 21
      DataField = 'vlr_servico'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 168
      Width = 134
      Height = 21
      DataField = 'vlr_desconto_usuario'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 208
      Width = 134
      Height = 21
      DataField = 'vlr_dinheiro'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 248
      Width = 134
      Height = 21
      DataField = 'vlr_cartao'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 288
      Width = 134
      Height = 21
      DataField = 'vlr_custo'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 16
      Top = 328
      Width = 134
      Height = 21
      DataField = 'vlr_lucro'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 8
    end
    object DBEdit8: TDBEdit
      Left = 16
      Top = 368
      Width = 134
      Height = 21
      DataField = 'vlr_debito'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 9
    end
    object DBEdit9: TDBEdit
      Left = 16
      Top = 408
      Width = 134
      Height = 21
      DataField = 'vlr_nao_faturar'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 10
    end
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 429
    Width = 447
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 8
    object btnSalvar: TButton
      Left = 8
      Top = 7
      Width = 75
      Height = 25
      Caption = 'SALVAR'
      TabOrder = 0
    end
    object btnCancelar: TButton
      Left = 363
      Top = 7
      Width = 75
      Height = 25
      Caption = 'CANCELAR'
      TabOrder = 1
    end
  end
end
