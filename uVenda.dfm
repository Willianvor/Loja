object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 358
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 317
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 1
    object lblUsuario: TLabel
      Left = 21
      Top = 8
      Width = 46
      Height = 13
      Caption = 'USU'#193'RIO'
    end
    object lblData: TLabel
      Left = 181
      Top = 11
      Width = 27
      Height = 13
      Caption = 'DATA'
    end
    object lblDescricao: TLabel
      Left = 21
      Top = 76
      Width = 59
      Height = 13
      Caption = 'DESCRI'#199#195'O'
      FocusControl = dbeDescricao
    end
    object lblServico: TLabel
      Left = 36
      Top = 103
      Width = 44
      Height = 13
      Caption = 'SERVI'#199'O'
      FocusControl = dbeServico
    end
    object lblDesconto: TLabel
      Left = 25
      Top = 130
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = dbeDesconto
    end
    object lblDinheiro: TLabel
      Left = 30
      Top = 157
      Width = 50
      Height = 13
      Caption = 'DINHEIRO'
      FocusControl = dbeDinheiro
    end
    object lblCartao: TLabel
      Left = 38
      Top = 184
      Width = 42
      Height = 13
      Caption = 'CART'#195'O'
      FocusControl = dbeCartao
    end
    object lblCusto: TLabel
      Left = 46
      Top = 211
      Width = 34
      Height = 13
      Caption = 'CUSTO'
      FocusControl = dbeCusto
    end
    object lblLucro: TLabel
      Left = 46
      Top = 238
      Width = 34
      Height = 13
      Caption = 'LUCRO'
      FocusControl = dbeLucro
    end
    object lblDebito: TLabel
      Left = 43
      Top = 265
      Width = 37
      Height = 13
      Caption = 'D'#201'BITO'
      FocusControl = dbeDebito
    end
    object lblNaoFaturar: TLabel
      Left = 8
      Top = 292
      Width = 72
      Height = 13
      Caption = 'N'#195'O FATURAR'
      FocusControl = dbeNaoFaturar
    end
    object dblUsuario: TDBLookupComboBox
      Left = 21
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
      Left = 181
      Top = 27
      Width = 97
      Height = 21
      Date = 44044.000000000000000000
      Time = 0.507645312500244500
      TabOrder = 1
      OnChange = dtpDataVendaChange
    end
    object dbeDescricao: TDBEdit
      Left = 86
      Top = 73
      Width = 282
      Height = 21
      DataField = 'nm_descricao'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 2
    end
    object dbeServico: TDBEdit
      Left = 86
      Top = 100
      Width = 90
      Height = 21
      DataField = 'vlr_servico'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 3
    end
    object dbeDesconto: TDBEdit
      Left = 86
      Top = 127
      Width = 90
      Height = 21
      DataField = 'vlr_desconto_usuario'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 4
    end
    object dbeDinheiro: TDBEdit
      Left = 86
      Top = 154
      Width = 90
      Height = 21
      DataField = 'vlr_dinheiro'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 5
    end
    object dbeCartao: TDBEdit
      Left = 86
      Top = 181
      Width = 90
      Height = 21
      DataField = 'vlr_cartao'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 6
    end
    object dbeCusto: TDBEdit
      Left = 86
      Top = 208
      Width = 90
      Height = 21
      DataField = 'vlr_custo'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 7
    end
    object dbeLucro: TDBEdit
      Left = 86
      Top = 235
      Width = 90
      Height = 21
      DataField = 'vlr_lucro'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 8
    end
    object dbeDebito: TDBEdit
      Left = 86
      Top = 262
      Width = 90
      Height = 21
      DataField = 'vlr_debito'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 9
    end
    object dbeNaoFaturar: TDBEdit
      Left = 86
      Top = 289
      Width = 90
      Height = 21
      DataField = 'vlr_nao_faturar'
      DataSource = dtmPrincipal.dtsPrincipal
      TabOrder = 10
    end
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 317
    Width = 447
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 316
    object btnSalvar: TButton
      Left = 8
      Top = 7
      Width = 75
      Height = 25
      Caption = 'SALVAR'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 363
      Top = 7
      Width = 75
      Height = 25
      Caption = 'CANCELAR'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
end
