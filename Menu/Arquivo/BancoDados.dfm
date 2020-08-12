object frmBancoDados: TfrmBancoDados
  Left = 0
  Top = 0
  Caption = 'Banco de Dados'
  ClientHeight = 90
  ClientWidth = 389
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
    Width = 389
    Height = 49
    Align = alClient
    TabOrder = 0
    object edtCaminhoBanco: TEdit
      Left = 16
      Top = 14
      Width = 273
      Height = 21
      TabOrder = 0
    end
    object btnLocalizar: TButton
      Left = 295
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Localizar'
      TabOrder = 1
      OnClick = btnLocalizarClick
    end
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 49
    Width = 389
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnSalvar: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SALVAR'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Filter = 'Access|*.MDB'
    Title = 'Teste'
    Left = 336
    Top = 48
  end
end
