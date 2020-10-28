object frmGerarComissao: TfrmGerarComissao
  Left = 0
  Top = 0
  Caption = 'Gerar Comiss'#227'o'
  ClientHeight = 290
  ClientWidth = 571
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
  object pnlComandos: TPanel
    Left = 0
    Top = 249
    Width = 571
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 252
    DesignSize = (
      571
      41)
    object btnSalvar: TButton
      Left = 14
      Top = 7
      Width = 75
      Height = 25
      Caption = 'SALVAR'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 483
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'CANCELAR'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object pnlPainel1: TPanel
    Left = 0
    Top = 0
    Width = 571
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 589
    object gpbDadosComissionado: TGroupBox
      Left = 1
      Top = 1
      Width = 288
      Height = 79
      Align = alLeft
      Caption = 'INFORMA'#199#213'ES'
      TabOrder = 0
      object lblDataPagamento: TLabel
        Left = 13
        Top = 21
        Width = 108
        Height = 13
        Caption = 'DATA DE PAGAMENTO'
      end
      object lblComissionado: TLabel
        Left = 149
        Top = 21
        Width = 80
        Height = 13
        Caption = 'COMISSIONADO'
      end
      object dtpDataComissao: TDateTimePicker
        Left = 13
        Top = 40
        Width = 117
        Height = 21
        Date = 44127.000000000000000000
        Time = 0.657954189817246500
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 149
        Top = 40
        Width = 108
        Height = 21
        DataField = 'id_comissionado'
        DataSource = dtmPrincipal.dtsComissao
        KeyField = 'id_usuario'
        ListField = 'nm_usuario'
        ListSource = dtmPrincipal.dtsUsuario
        TabOrder = 1
      end
    end
    object gpbDatasComissao: TGroupBox
      Left = 289
      Top = 1
      Width = 280
      Height = 79
      Align = alLeft
      Caption = 'DATAS COMISS'#195'O'
      TabOrder = 1
      ExplicitLeft = 295
      ExplicitTop = -3
      object lblAte: TLabel
        Left = 128
        Top = 44
        Width = 16
        Height = 13
        Caption = 'at'#233
      end
      object lblInicio: TLabel
        Left = 14
        Top = 21
        Width = 34
        Height = 13
        Caption = 'IN'#205'CIO'
      end
      object lblFinal: TLabel
        Left = 150
        Top = 21
        Width = 29
        Height = 13
        Caption = 'FINAL'
      end
      object dtpDataInicioComissao: TDateTimePicker
        Left = 14
        Top = 40
        Width = 108
        Height = 21
        Date = 44127.000000000000000000
        Time = 0.657954189817246500
        TabOrder = 0
        OnChange = dtpDataInicioComissaoChange
      end
      object dtpDataFinalComissao: TDateTimePicker
        Left = 150
        Top = 40
        Width = 108
        Height = 21
        Date = 44127.000000000000000000
        Time = 0.657954189817246500
        TabOrder = 1
      end
    end
  end
  object pnlPainel2: TPanel
    Left = 0
    Top = 81
    Width = 571
    Height = 80
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 589
    object gpbAddRed: TGroupBox
      Left = 1
      Top = 1
      Width = 288
      Height = 78
      Align = alLeft
      Caption = 'ADICIONAR / DEDUZIR'
      TabOrder = 0
      object lblAdicionar: TLabel
        Left = 13
        Top = 17
        Width = 58
        Height = 13
        Caption = 'ADICIONAR'
        FocusControl = DBEdit7
      end
      object lblDeduzir: TLabel
        Left = 149
        Top = 17
        Width = 44
        Height = 13
        Caption = 'DEDUZIR'
        FocusControl = DBEdit8
      end
      object DBEdit7: TDBEdit
        Left = 13
        Top = 36
        Width = 108
        Height = 21
        DataField = 'vlr_adicionar'
        DataSource = dtmPrincipal.dtsComissao
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 149
        Top = 36
        Width = 108
        Height = 21
        DataField = 'vlr_deduzir'
        DataSource = dtmPrincipal.dtsComissao
        TabOrder = 1
      end
    end
    object gpbDivisoes: TGroupBox
      Left = 289
      Top = 1
      Width = 280
      Height = 78
      Align = alLeft
      Caption = 'DIVIS'#213'ES'
      TabOrder = 1
      ExplicitLeft = 313
      ExplicitHeight = 110
      object lblPorcentagemComissao: TLabel
        Left = 14
        Top = 17
        Width = 75
        Height = 13
        Caption = 'PORCENTAGEM'
        FocusControl = DBEdit5
      end
      object lblDivisaoServico: TLabel
        Left = 150
        Top = 17
        Width = 44
        Height = 13
        Caption = 'SERVI'#199'O'
        FocusControl = DBEdit5
      end
      object DBEdit5: TDBEdit
        Left = 14
        Top = 36
        Width = 108
        Height = 21
        DataField = 'nr_porcentagem'
        DataSource = dtmPrincipal.dtsComissao
        TabOrder = 0
        OnExit = DBEdit5Exit
      end
      object DBEdit1: TDBEdit
        Left = 150
        Top = 36
        Width = 108
        Height = 21
        DataField = 'nr_divisao_servico'
        DataSource = dtmPrincipal.dtsComissao
        TabOrder = 1
        OnExit = DBEdit1Exit
      end
    end
  end
  object pnlPainel3: TPanel
    Left = 0
    Top = 161
    Width = 571
    Height = 88
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 589
    object gpbComissao: TGroupBox
      Left = 1
      Top = 1
      Width = 288
      Height = 86
      Align = alLeft
      Caption = 'COMISS'#195'O'
      TabOrder = 0
      object lblVlrComissãoBruta: TLabel
        Left = 14
        Top = 19
        Width = 90
        Height = 13
        Caption = 'COMISS'#195'O BRUTA'
        FocusControl = DBEdit6
      end
      object lbLComissaoLiquida: TLabel
        Left = 149
        Top = 19
        Width = 99
        Height = 13
        Caption = 'COMISS'#195'O L'#205'QUIDA'
        FocusControl = DBEdit9
      end
      object DBEdit6: TDBEdit
        Left = 13
        Top = 38
        Width = 108
        Height = 21
        DataField = 'vlr_comissao'
        DataSource = dtmPrincipal.dtsComissao
        Enabled = False
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 149
        Top = 38
        Width = 108
        Height = 21
        DataField = 'vlr_total'
        DataSource = dtmPrincipal.dtsComissao
        Enabled = False
        TabOrder = 1
      end
    end
    object gpbObervacoes: TGroupBox
      Left = 289
      Top = 1
      Width = 280
      Height = 86
      Align = alLeft
      Caption = 'OBSERVA'#199#213'ES'
      TabOrder = 1
      ExplicitLeft = 313
      ExplicitHeight = 120
      object memObservacoes: TMemo
        Left = 2
        Top = 15
        Width = 276
        Height = 69
        Align = alClient
        MaxLength = 239
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitLeft = -9
        ExplicitTop = 31
        ExplicitWidth = 289
        ExplicitHeight = 89
      end
    end
  end
end
