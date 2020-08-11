object frmBancoDados: TfrmBancoDados
  Left = 0
  Top = 0
  Caption = 'Banco de Dados'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 160
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 64
    ExplicitTop = 8
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Edit1: TEdit
      Left = 16
      Top = 14
      Width = 273
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
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
    Top = 160
    Width = 447
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 8
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Filter = 'Access|*.MDB'
    Title = 'Teste'
    Left = 328
    Top = 64
  end
end
