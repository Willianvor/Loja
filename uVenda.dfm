object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 266
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblDebito: TLabel
    Left = 245
    Top = 160
    Width = 37
    Height = 13
    Caption = 'D'#201'BITO'
    FocusControl = dbeDebito
  end
  object lblDesconto: TLabel
    Left = 125
    Top = 160
    Width = 55
    Height = 13
    Caption = 'DESCONTO'
    FocusControl = dbeDesconto
  end
  object lblNaoFaturar: TLabel
    Left = 341
    Top = 160
    Width = 72
    Height = 13
    Caption = 'N'#195'O FATURAR'
    FocusControl = dbeNaoFaturar
  end
  object lblServico: TLabel
    Left = 29
    Top = 160
    Width = 44
    Height = 13
    Caption = 'SERVI'#199'O'
    FocusControl = dbeServico
  end
  object lblCusto: TLabel
    Left = 221
    Top = 115
    Width = 34
    Height = 13
    Caption = 'CUSTO'
    FocusControl = dbeCusto
  end
  object lblLucro: TLabel
    Left = 341
    Top = 115
    Width = 34
    Height = 13
    Caption = 'LUCRO'
    FocusControl = dbeLucro
  end
  object lblUsuario: TLabel
    Left = 29
    Top = 23
    Width = 46
    Height = 13
    Caption = 'USU'#193'RIO'
  end
  object lblData: TLabel
    Left = 203
    Top = 23
    Width = 27
    Height = 13
    Caption = 'DATA'
  end
  object lblDescricao: TLabel
    Left = 29
    Top = 69
    Width = 59
    Height = 13
    Caption = 'DESCRI'#199#195'O'
  end
  object lblCartao: TLabel
    Left = 125
    Top = 114
    Width = 42
    Height = 13
    Caption = 'CART'#195'O'
    FocusControl = dbeCartao
  end
  object lblDinheiro: TLabel
    Left = 29
    Top = 114
    Width = 50
    Height = 13
    Caption = 'DINHEIRO'
    FocusControl = dbeDinheiro
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 225
    Width = 458
    Height = 41
    Align = alBottom
    TabOrder = 11
    object btnSalvar: TButton
      Left = 13
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
  object dbeDebito: TDBEdit
    Left = 245
    Top = 179
    Width = 90
    Height = 21
    DataField = 'vlr_debito'
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 9
  end
  object dbeDesconto: TDBEdit
    Left = 125
    Top = 179
    Width = 90
    Height = 21
    DataField = 'vlr_desconto_usuario'
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 8
  end
  object dbeNaoFaturar: TDBEdit
    Left = 341
    Top = 179
    Width = 90
    Height = 21
    DataField = 'vlr_nao_faturar'
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 10
  end
  object dbeServico: TDBEdit
    Left = 29
    Top = 179
    Width = 90
    Height = 21
    DataField = 'vlr_servico'
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 7
  end
  object dbeCusto: TDBEdit
    Left = 221
    Top = 134
    Width = 90
    Height = 21
    DataField = 'vlr_custo'
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 5
    OnChange = dbeCustoChange
  end
  object dbeLucro: TDBEdit
    Left = 341
    Top = 134
    Width = 90
    Height = 21
    DataField = 'vlr_lucro'
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 6
  end
  object dblUsuario: TDBLookupComboBox
    Left = 29
    Top = 42
    Width = 168
    Height = 21
    DataField = 'fk_nm_usuario'
    DataSource = dtmPrincipal.dtsPrincipal
    KeyField = 'id_usuario'
    ListField = 'nm_usuario'
    ListSource = dtmPrincipal.dtsUsuario
    TabOrder = 0
  end
  object dtpDataVenda: TDateTimePicker
    Left = 203
    Top = 42
    Width = 107
    Height = 21
    Date = 44044.000000000000000000
    Time = 0.507645312500244500
    TabOrder = 1
    OnChange = dtpDataVendaChange
  end
  object dbcDescricao: TDBComboBox
    Left = 29
    Top = 88
    Width = 402
    Height = 22
    Style = csSimple
    CharCase = ecUpperCase
    DataField = 'nm_descricao'
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 2
  end
  object dbeCartao: TDBEdit
    Left = 125
    Top = 133
    Width = 90
    Height = 21
    DataField = 'vlr_cartao'
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 4
    OnChange = dbeCartaoChange
  end
  object dbeDinheiro: TDBEdit
    Left = 29
    Top = 133
    Width = 90
    Height = 21
    DataField = 'vlr_dinheiro'
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 3
    OnChange = dbeDinheiroChange
  end
end
