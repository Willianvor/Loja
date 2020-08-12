object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Loja - Vendas'
  ClientHeight = 571
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menuPrincipal
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlData: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 41
    Align = alTop
    TabOrder = 0
    object lblDATA: TLabel
      Left = 8
      Top = 13
      Width = 36
      Height = 14
      Caption = 'DATA:'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 51
      Top = 9
      Width = 110
      Height = 22
      Date = 44052.000000000000000000
      Time = 0.764210219909728000
      TabOrder = 0
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 122
    Width = 1184
    Height = 390
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1182
      Height = 388
      Align = alClient
      DataSource = dtmPrincipal.dtsPrincipal
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'dt_data'
          Title.Caption = 'DATA'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_usuario'
          Title.Caption = 'USU'#193'RIO'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_descricao'
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 342
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_servico'
          Title.Caption = 'SERVI'#199'O'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_desconto_usuario'
          Title.Caption = 'DESCONTO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_dinheiro'
          Title.Caption = 'DINHEIRO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_cartao'
          Title.Caption = 'CART'#195'O'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_custo'
          Title.Caption = 'CUSTO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_lucro'
          Title.Caption = 'LUCRO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_debito'
          Title.Caption = 'D'#201'BITO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_nao_faturar'
          Title.Caption = 'N'#195'O FATURAR'
          Width = 64
          Visible = True
        end>
    end
  end
  object pnlInfos: TPanel
    Left = 0
    Top = 41
    Width = 1184
    Height = 81
    Align = alTop
    TabOrder = 2
    object pnlVendasDinheiroP: TPanel
      Left = 881
      Top = 1
      Width = 110
      Height = 79
      Align = alLeft
      TabOrder = 0
      object pnlVendasDinheiroVLR: TPanel
        Left = 1
        Top = 41
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlSangria: TPanel
        Left = 1
        Top = 1
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'SANGRIA'
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 661
      Top = 1
      Width = 110
      Height = 79
      Align = alLeft
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 41
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlDiferenca: TPanel
        Left = 1
        Top = 1
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'DIFEREN'#199'A'
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 551
      Top = 1
      Width = 110
      Height = 79
      Align = alLeft
      TabOrder = 2
      object Panel6: TPanel
        Left = 1
        Top = 41
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlCartao: TPanel
        Left = 1
        Top = 1
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'CART'#195'O'
        TabOrder = 1
      end
    end
    object Panel8: TPanel
      Left = 441
      Top = 1
      Width = 110
      Height = 79
      Align = alLeft
      TabOrder = 3
      object Panel9: TPanel
        Left = 1
        Top = 41
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlDinheiro: TPanel
        Left = 1
        Top = 1
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'DINHEIRO'
        TabOrder = 1
      end
    end
    object Panel11: TPanel
      Left = 331
      Top = 1
      Width = 110
      Height = 79
      Align = alLeft
      TabOrder = 4
      object Panel12: TPanel
        Left = 1
        Top = 41
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlLucro: TPanel
        Left = 1
        Top = 1
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'LUCRO'
        TabOrder = 1
      end
    end
    object Panel14: TPanel
      Left = 221
      Top = 1
      Width = 110
      Height = 79
      Align = alLeft
      TabOrder = 5
      object Panel15: TPanel
        Left = 1
        Top = 41
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlCustos: TPanel
        Left = 1
        Top = 1
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'CUSTOS'
        TabOrder = 1
      end
    end
    object Panel17: TPanel
      Left = 111
      Top = 1
      Width = 110
      Height = 79
      Align = alLeft
      TabOrder = 6
      object Panel18: TPanel
        Left = 1
        Top = 41
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlFaturado: TPanel
        Left = 1
        Top = 1
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'FATURADO'
        TabOrder = 1
      end
    end
    object Panel20: TPanel
      Left = 1
      Top = 1
      Width = 110
      Height = 79
      Align = alLeft
      TabOrder = 7
      object Panel21: TPanel
        Left = 1
        Top = 41
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlCaixa: TPanel
        Left = 1
        Top = 1
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'CAIXA'
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Left = 771
      Top = 1
      Width = 110
      Height = 79
      Align = alLeft
      TabOrder = 8
      object Panel4: TPanel
        Left = 1
        Top = 41
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'R$ 0,00'
        TabOrder = 0
      end
      object pnlDespesas: TPanel
        Left = 1
        Top = 1
        Width = 108
        Height = 40
        Align = alTop
        Caption = 'DESPESAS'
        TabOrder = 1
      end
    end
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 512
    Width = 1184
    Height = 59
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = -1
    ExplicitTop = 517
    object btnVenda: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = 'VENDA'
      TabOrder = 0
      OnClick = btnVendaClick
    end
    object btnAlterar: TButton
      Left = 89
      Top = 6
      Width = 75
      Height = 25
      Caption = 'ALTERAR'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TButton
      Left = 170
      Top = 6
      Width = 75
      Height = 25
      Caption = 'EXCLUIR'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
  end
  object menuPrincipal: TMainMenu
    Left = 1000
    Top = 352
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object BancodeDadosRede1: TMenuItem
        Caption = 'Banco de Dados (Rede)'
        OnClick = BancodeDadosRede1Click
      end
    end
  end
end
