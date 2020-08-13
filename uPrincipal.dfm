object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Loja - Vendas'
  ClientHeight = 591
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlData: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 57
    Align = alTop
    TabOrder = 0
    object gpbData: TGroupBox
      Left = 5
      Top = 4
      Width = 119
      Height = 49
      Caption = 'DATA'
      TabOrder = 0
      object dtpPrincipal: TDateTimePicker
        Left = 11
        Top = 18
        Width = 93
        Height = 22
        Date = 44055.000000000000000000
        Time = 0.872512037036358400
        TabOrder = 0
      end
    end
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 528
    Width = 1184
    Height = 63
    Align = alBottom
    TabOrder = 1
    object sbtNovaVenda: TSpeedButton
      Left = 6
      Top = 6
      Width = 48
      Height = 48
      BiDiMode = bdLeftToRight
      Caption = 'V'
      ParentBiDiMode = False
      OnClick = sbtNovaVendaClick
    end
    object sbtAlterar: TSpeedButton
      Left = 60
      Top = 6
      Width = 48
      Height = 48
      Caption = 'A'
      OnClick = sbtAlterarClick
    end
    object sbtExcluir: TSpeedButton
      Left = 114
      Top = 6
      Width = 48
      Height = 48
      Caption = 'E'
      OnClick = sbtExcluirClick
    end
    object sbtOs: TSpeedButton
      Left = 168
      Top = 6
      Width = 48
      Height = 48
      Caption = 'OS'
      OnClick = sbtOsClick
    end
  end
  object pnlInfo: TPanel
    Left = 0
    Top = 57
    Width = 1184
    Height = 52
    Align = alTop
    TabOrder = 2
    object Panel1: TPanel
      Left = 521
      Top = 1
      Width = 96
      Height = 50
      Align = alLeft
      TabOrder = 0
      object pnlCaixaVLR: TPanel
        Left = 1
        Top = 26
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlDinheiro: TPanel
        Left = 1
        Top = 1
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'DINHEIRO'
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 136
      Height = 50
      Align = alLeft
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 26
        Width = 134
        Height = 25
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 134
        Height = 25
        Align = alTop
        Caption = 'CAIXA'
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 425
      Top = 1
      Width = 96
      Height = 50
      Align = alLeft
      TabOrder = 2
      object Panel6: TPanel
        Left = 1
        Top = 26
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'DINHEIRO'
        TabOrder = 1
      end
    end
    object Panel8: TPanel
      Left = 329
      Top = 1
      Width = 96
      Height = 50
      Align = alLeft
      TabOrder = 3
      object Panel9: TPanel
        Left = 1
        Top = 26
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'DINHEIRO'
        TabOrder = 1
      end
    end
    object Panel11: TPanel
      Left = 233
      Top = 1
      Width = 96
      Height = 50
      Align = alLeft
      TabOrder = 4
      object Panel12: TPanel
        Left = 1
        Top = 26
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object Panel13: TPanel
        Left = 1
        Top = 1
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'DINHEIRO'
        TabOrder = 1
      end
    end
    object Panel14: TPanel
      Left = 137
      Top = 1
      Width = 96
      Height = 50
      Align = alLeft
      TabOrder = 5
      object Panel15: TPanel
        Left = 1
        Top = 26
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object Panel16: TPanel
        Left = 1
        Top = 1
        Width = 94
        Height = 25
        Align = alTop
        Caption = 'DINHEIRO'
        TabOrder = 1
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 109
    Width = 1184
    Height = 419
    Align = alClient
    DataSource = dtmPrincipal.dtsPrincipal
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dt_data'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_usuario'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_descricao'
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_servico'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_desconto_usuario'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_dinheiro'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_cartao'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_custo'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_lucro'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_debito'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_nao_faturar'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_usuario'
        Width = 64
        Visible = True
      end>
  end
end
