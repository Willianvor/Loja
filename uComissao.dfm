object frmComissoes: TfrmComissoes
  Left = 0
  Top = 0
  Caption = 'COMISS'#213'ES'
  ClientHeight = 394
  ClientWidth = 850
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
    Top = 0
    Width = 850
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 777
    object sbtAdicionar: TSpeedButton
      Left = 1
      Top = 1
      Width = 88
      Height = 39
      Align = alLeft
      Caption = 'Add Comiss'#227'o'
      OnClick = sbtAdicionarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 850
    Height = 353
    Align = alClient
    DataSource = dtmPrincipal.dtsComissao
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
