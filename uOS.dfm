object frmOS: TfrmOS
  Left = 0
  Top = 0
  Caption = 'OS'
  ClientHeight = 125
  ClientWidth = 183
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblNrOS: TLabel
    Left = 31
    Top = 25
    Width = 77
    Height = 13
    Caption = 'N'#218'MERO DA OS'
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 84
    Width = 183
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 264
    ExplicitTop = 96
    ExplicitWidth = 185
    DesignSize = (
      183
      41)
    object btnSalvar: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 23
      Caption = 'SALVAR'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 96
      Top = 8
      Width = 75
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = 'CANCELAR'
      TabOrder = 1
      OnClick = btnCancelarClick
      ExplicitLeft = 360
    end
  end
  object edtNrOS: TEdit
    Left = 31
    Top = 44
    Width = 121
    Height = 21
    TabOrder = 0
  end
end
