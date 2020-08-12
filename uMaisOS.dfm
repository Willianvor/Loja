object frmMaisOS: TfrmMaisOS
  Left = 0
  Top = 0
  Caption = 'Nova OS'
  ClientHeight = 108
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNrOS: TLabel
    Left = 20
    Top = 27
    Width = 77
    Height = 21
    Caption = 'N'#218'MERO DA OS'
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 67
    Width = 259
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 120
    ExplicitWidth = 185
    DesignSize = (
      259
      41)
    object btnSalvar: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SALVAR'
      TabOrder = 0
    end
    object btnCancelar: TButton
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'CANCELAR'
      TabOrder = 1
      ExplicitLeft = 360
    end
  end
  object DBEdit1: TDBEdit
    Left = 103
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
end
