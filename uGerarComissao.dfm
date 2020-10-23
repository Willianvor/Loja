object frmGerarComissao: TfrmGerarComissao
  Left = 0
  Top = 0
  Caption = 'Gerar Comiss'#227'o'
  ClientHeight = 463
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblDataPagamento: TLabel
    Left = 22
    Top = 16
    Width = 108
    Height = 13
    Caption = 'DATA DE PAGAMENTO'
  end
  object lblComissionado: TLabel
    Left = 178
    Top = 16
    Width = 80
    Height = 13
    Caption = 'COMISSIONADO'
  end
  object lblDataInicioComissao: TLabel
    Left = 22
    Top = 72
    Width = 138
    Height = 13
    Caption = 'DATA INICIO DA COMISS'#195'O'
  end
  object lblDataFinalComissao: TLabel
    Left = 178
    Top = 72
    Width = 133
    Height = 13
    Caption = 'DATA FINAL DA COMISS'#195'O'
  end
  object lblPorcentagemComissao: TLabel
    Left = 22
    Top = 128
    Width = 132
    Height = 13
    Caption = 'PORCENTAGEM COMISS'#195'O'
    FocusControl = DBEdit5
  end
  object lblVlrComissão: TLabel
    Left = 178
    Top = 131
    Width = 107
    Height = 13
    Caption = 'VALOR DA COMISS'#195'O'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 22
    Top = 176
    Width = 61
    Height = 13
    Caption = 'vlr_adicionar'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 178
    Top = 176
    Width = 53
    Height = 13
    Caption = 'vlr_deduzir'
    FocusControl = DBEdit8
  end
  object lblTotalComissao: TLabel
    Left = 120
    Top = 230
    Width = 89
    Height = 13
    Caption = 'COMISS'#195'O TOTAL'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 22
    Top = 280
    Width = 81
    Height = 13
    Caption = 'nm_observacoes'
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 422
    Width = 342
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -2
    ExplicitTop = 184
    ExplicitWidth = 458
    DesignSize = (
      342
      41)
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
      Left = 259
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'CANCELAR'
      TabOrder = 1
      OnClick = btnCancelarClick
      ExplicitLeft = 363
    end
  end
  object DBEdit5: TDBEdit
    Left = 22
    Top = 147
    Width = 138
    Height = 21
    DataField = 'nr_porcentagem'
    DataSource = dtmPrincipal.dtsComissao
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 178
    Top = 150
    Width = 138
    Height = 21
    DataField = 'vlr_comissao'
    DataSource = dtmPrincipal.dtsComissao
    Enabled = False
    TabOrder = 2
  end
  object DBEdit7: TDBEdit
    Left = 22
    Top = 192
    Width = 138
    Height = 21
    DataField = 'vlr_adicionar'
    DataSource = dtmPrincipal.dtsComissao
    TabOrder = 3
  end
  object DBEdit8: TDBEdit
    Left = 178
    Top = 192
    Width = 134
    Height = 21
    DataField = 'vlr_deduzir'
    DataSource = dtmPrincipal.dtsComissao
    TabOrder = 4
  end
  object DBEdit9: TDBEdit
    Left = 97
    Top = 249
    Width = 134
    Height = 21
    DataField = 'vlr_total'
    DataSource = dtmPrincipal.dtsComissao
    Enabled = False
    TabOrder = 5
  end
  object dtpDataComissao: TDateTimePicker
    Left = 22
    Top = 35
    Width = 138
    Height = 21
    Date = 44127.000000000000000000
    Time = 0.657954189817246500
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 178
    Top = 35
    Width = 138
    Height = 21
    DataField = 'id_comissionado'
    DataSource = dtmPrincipal.dtsComissao
    KeyField = 'id_usuario'
    ListField = 'nm_usuario'
    ListSource = dtmPrincipal.dtsUsuario
    TabOrder = 7
  end
  object dtpDataInicioComissao: TDateTimePicker
    Left = 22
    Top = 91
    Width = 138
    Height = 21
    Date = 44127.000000000000000000
    Time = 0.657954189817246500
    TabOrder = 8
    OnChange = dtpDataInicioComissaoChange
  end
  object dtpDataFinalComissao: TDateTimePicker
    Left = 178
    Top = 91
    Width = 138
    Height = 21
    Date = 44127.000000000000000000
    Time = 0.657954189817246500
    TabOrder = 9
  end
  object memObservacoes: TMemo
    Left = 22
    Top = 299
    Width = 289
    Height = 89
    MaxLength = 239
    ScrollBars = ssVertical
    TabOrder = 10
  end
end
