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
    object SpeedButton1: TSpeedButton
      Left = 216
      Top = 16
      Width = 23
      Height = 22
      OnClick = SpeedButton1Click
    end
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
        OnCloseUp = dtpPrincipalCloseUp
        OnChange = dtpPrincipalChange
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
      Hint = 'Nova venda'
      BiDiMode = bdLeftToRight
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000EC000000EC0000000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE8E090D9CF53DCCD66E6D7AAF9F6EBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F2D5DED567D9CC55E1
        CF88EFE4C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD4CB29D2D200D2D200D2D200CDBE0EC7A237F2EAD2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE5A6D1CF03D2D200D2D200D1
        CE03C6A720D7BE75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE8E090D2D200E1DC70EFE5CDE1DC6FD2D200C7AA1DD1B25AFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CA14D6D41EECE4B9EBE3B8D6
        D51ECEC509C39B28EFE4C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDCD257D2D200EFE5CDF0E6D7EFE5CCD2D200CAB416C6A033FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CF03DFDB61F0E6D7F0E6D7DF
        DB60D1CF02C39B28E4D29EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE6DF8ED2D200E2DD71EFE5CEE1DC70D2D200C7AA1DD1B25AFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CA14D6D41EECE3B9ECE3B9D6
        D41ECEC509C39B28EFE4C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD4CB29D2D200D2D200D2D200CDBE0EC7A237F2EAD2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE4A4D1CF03D2D200D2D200D1
        CE03C6A720D7BE75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD3C977C7BA3EC0AE4DB8A272B3A5989B8E8D897B
        7A867776867776867776867776867776867776867776938464B3A435B5A631A8
        904B998463B2A8A6F5F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA296926E5A556E5A556E5A556E5A556E5A556E5A556E5A
        556E5A556E5A556E5A556E5A556E5A556E5A556E5A556E5A556E5A556E5A556E
        5A556E5A556E5A55BFB6B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8D2D16E5A55786661B5AAA8BBB2B0A196955B4A4D6352558A7D
        7D8F82838F82838F82838F82838F82838F82838F82838F82838F82838F82838F
        82838F8283B6ACABF5F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBEB5B26E5A55AFA4A1FFFFFFFFFFFFAEA7AC4B3C469B9399FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD7D2D06E5A55796662B0A5A2B2A7A4A59672AE9F20B5A91CC1B6
        2AC3B82CC3B82CC3B82CC4B82DD4CC3FD8CE42D8CE42D9CE4BDECB7DDFCA8CDF
        CA8CDFCA8CE3D09AF8F4E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA295926E5A556E5A55705B53CEC708D2D200D2D200D2D2
        00D2D200D2D200D2D200D2D200D2D200D2D200D2D200D2D200D0C907C39C28C3
        9B28C39B28C39B28CDAC4DFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD7D2D0BDB4B2C2B667D2D200D2D200D2D200D2D2
        00D2D200D2D200D2D200D2D200D2D200D2D200D2D200D2D200D2D200C7A91EC3
        9B28C39B28C39B28C39B28EFE5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C725D2D200D2D008EADDBFF0E6
        D7F0E6D7D9CD51D2D200D9CD51F0E6D7F0E6D7EADCBED2D008D2D200CDBE0EC3
        9B28C39B28C39B28C39B28D9BF76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F3E1D1D002D2D200D9CC54F0E6D7F0E6
        D7F0E6D7D9CD51D2D200D9CD51F0E6D7F0E6D7F0E6D7D9CC53D2D200D2D001C4
        9E25C39B28C39B28C39B28C59E30FBF9F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC350D2D200D2D200D6CD31D9CD51D9CD
        51D9CD51D3CF1CD2D200D3CF1CD9CD51D9CD51D9CD51D6CD31D2D200C7C12CB3
        9773AC868CB0897CBA944CC39B28E7D7A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC70DD2D200D2D200D2D200D2D200D2D2
        00D2D200D2D200D2D200D2D200D2D200D2D200D2D200C3BA3B9F83CA916EFF91
        6EFF916EFF916EFF916EFF9B78D1C2A37CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE5DDACD2D200D2D200D6CD33D9CD51D9CD51D9CD
        51D9CD51D3CF1CD2D200D3CF1CD9CD51D9CD51BEAA929270FC916EFF916EFF91
        6EFF916EFF916EFF916EFF916EFF926FFBD0BEE6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC9BD2ED2D200D2D201EADCBEF0E6D7F0E6D7F0E6
        D7F0E6D7D9CD51D2D200D9CD51F0E6D7DACAE09371FE916EFF916EFF916EFFAD
        92F3EBDFD9AD91F3916EFF916EFF916EFF9270FCE6DFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCFCF7D0CC04D2D200D4CE1DEFE4D4F0E6D7F0E6D7F0E6
        D7F0E6D7D9CD51D2D200D9CD51F0E6D7A487F7916EFF916EFF916EFF916EFFC0
        AAEBF0E6D7C0AAEB916EFF916EFF916EFF916EFFA88DFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD5CA71D2D200D2D200D2D200D2D200D2D200D2D200D2D2
        00D2D200D2D200D2D200D2D200C7C02D916EFF916EFF916EFF916EFF916EFFC0
        AAEBF0E6D7C0AAEB916EFF916EFF916EFF916EFF916EFFEDE7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC1B33ED2D200D2D200D2D200D2D200D2D200D2D200D2D2
        00D2D200D2D200D2D200D2D200B8AA66916EFF916EFFAD91F3C4AEEAC4AEEADA
        CAE0F0E6D7DACAE0C4AEEAC4AEEAAC91F4916EFF916EFFD4C6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFAF9F97C6A5DAC9B27D4C84ADCD153DACF51AB9D23A8991ED2C8
        49DCD153DCD153DCD153DCD153B8A1A4916EFF916EFFEBDFD9F0E6D7F0E6D7F0
        E6D7F0E6D7F0E6D7F0E6D7F0E6D7EBDED9916EFF916EFFCBBAFFFFFFFFFFFFFF
        FFFFFFFFFFFFCBC3C26E5A558D7E7AFFFFFFFFFFFFBEB9BC4B3C4672666EFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD3C5FF916EFF916EFFAE92F3BDA6ECBDA6ECD7
        C6E2F0E6D7D7C6E2BDA6ECBDA6ECAD92F3916EFF916EFFD3C6FFE9E6E78A7E7D
        8677768677767664626E5A558B7E7F9F979C9F979C695D654B3C46B6B0B4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEBE5FF916EFF916EFF916EFF916EFF916EFFC0
        AAEBF0E6D7C0AAEB916EFF916EFF916EFF916EFF916EFFECE7FF9285856E5A55
        6E5A556E5A556E5A556A56534D3E464B3C464B3C464B3C465E515AF6F5F6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA78BFF916EFF916EFF916EFF916EFFC0
        AAEBF0E6D7C0AAEB916EFF916EFF916EFF916EFFA88CFFFFFFFFE8E5E5918484
        8F82838F8283908484A59DA1ABA4A9ABA4A9ABA4A9AFA9ADECEAEBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5DCFF9370FF916EFF916EFF916EFFAE
        92F3EBDFD9AD92F3916EFF916EFF916EFF9371FFE6DDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6C8FF9370FF916EFF916EFF91
        6EFF916EFF916EFF916EFF916EFF9371FFD6C9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5DCFFA78BFF916EFF91
        6EFF916EFF916EFF916EFFA68CFFE6DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE5FFD3
        C5FFCCBBFFD3C5FFECE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      OnClick = sbtNovaVendaClick
    end
    object sbtAlterar: TSpeedButton
      Left = 60
      Top = 6
      Width = 48
      Height = 48
      Hint = 'Alterar venda'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000EC000000EC0000000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCED5D6798080524E497F8788FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFDFEFFE0F3FA84969B494039494039463E374C4844FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
        FBFED2EFF8AEE2F3A6DFF2A4DBEE657172494039433B34727878FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FAFDC5E9F6A8
        DFF2A6DFF2A6DFF2A6DFF2A6DFF2A4DBEE636F6F423933CAD1D2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFE55DCF783E2F6A8
        DFF2A6DFF2A6DFF2A6DFF2A6DFF2A6DFF299CDDE7A8B8FFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFE55DCF73ED8F63ED8F683
        DEF2A8DFF2A6DFF2A6DFF2A6DFF2A4DDF095C9DAD8EAF0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFE55DCF73ED8F63ED8F63CD2EF3B
        CDE981DCEFA8DFF2A6DFF2A6DFF29ED4E69ECCDDFDFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFE55DCF73ED8F63ED8F63CD2EF3BCDE93B
        CDE93BCDE982DBF1A8DFF2A5DEF197CADCC8E3ECFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE7FAFE55DCF73ED8F63ED8F63CD2EF3BCDE93BCDE93B
        CDE93BCDE93BCDE984DFF29FD4E498CAD9F4FAFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE7FAFE55DCF73ED8F63ED8F63CD2EF3BCDE93BCDE93BCDE93B
        CDE93BCDE93CD2EF3CD3F079CBDDB8DBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE7FAFE55DCF73ED8F63ED8F63CD2EF3BCDE93BCDE93BCDE93BCDE93B
        CDE93CD2EF3DD6F438C5E04BC8E0E4F6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE7FAFE55DCF73ED8F63ED8F63CD2EF3BCDE93BCDE93BCDE93BCDE93BCDE93C
        D2EF3DD6F439C5E14BC8E0E2F6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FA
        FE55DCF73ED8F63ED8F63CD2EF3BCDE93BCDE93BCDE93BCDE93BCDE93CD2EF3D
        D6F439C5E14BC8E0E2F6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFE55DC
        F73ED8F63ED8F63CD2EF3BCDE93BCDE93BCDE93BCDE93BCDE93CD2EF3DD6F439
        C5E14BC8E0E2F6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFE55DCF73ED8
        F63ED8F63CD2EF3BCDE93BCDE93BCDE93BCDE93BCDE93CD2EF3DD6F439C5E14C
        C8DFE2F6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFE55DCF73ED8F63ED8
        F63CD2EF3BCDE93BCDE93BCDE93BCDE93BCDE93CD2EF3DD6F439C5E14CC8DFE2
        F7FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFE55DCF73ED8F63ED8F63CD2
        EF3BCDE93BCDE93BCDE93BCDE93BCDE93CD2EF3DD6F439C5E14CC8DFE2F7FAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FAFE55DCF73ED8F63ED8F63CD2EF3BCD
        E93BCDE93BCDE93BCDE93BCDE93CD2EF3DD6F439C5E14CC8DFE2F7FAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD2F0FC53D9F73ED8F63ED8F63CD2EF3BCDE93BCD
        E93BCDE93BCDE93BCDE93CD2EF3DD6F439C5E14CC8DFE2F7FAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD0EFFB3EB2F53CB4F43ED5F63CD2EF3BCDE93BCDE93BCD
        E93BCDE93BCDE93CD2EF3DD6F439C5E14DC9DFE3F6FBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD1F0FD3AA7E538A2E63BACF43BB3F33BCBEA3BCDE93BCDE93BCD
        E93BCDE93CD2EF3DD6F439C5E14DC9DFE3F6FBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEEEFFD43B5F53BABF3369FE138A2E63BACF43BB2F23BCBEA3BCDE93BCD
        E93CD2EF3DD6F439C5E14DC9E0E3F6FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F0EFFD968FEE849AF03CAFF43BABF3369FE138A2E63BACF43BB2F23BCBEA3CD2
        EF3DD6F439C5E14DC9E0E3F6FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EFFD
        968FEE8780EC8780EC849AF03CAEF33BABF3369FE138A2E63BACF43BB3F33DD3
        F439C5E14DC8E0E3F6FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EFFD968FEE
        8780EC8780EC8780EC8780EC849AF03CAEF33BABF3369FE138A2E63AAAF237A5
        DF4CC6DFE4F7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA19BF0867FEB
        857EE88780EC827CE4867FEA8780EC849AF03CAEF33BABF3359DDF3394D239A2
        DECFEDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA19BF08680EB
        857EE98780EC8780EC8780EC8780EC8780EC849AF03BADF2369CDE3698D0CEEC
        F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EFFD968FEE
        8780EC8780EC8780EC8780EC8780EC8780EC867FEA788CDB3EA5DFCFEDF9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EFFD
        968FEE8780EC847DE6857EE88780EC867FEA7B75D88882D7EBECFAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F0EFFD968FEE8780EC8780EC867FEA7B75D88882D7EDECFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF0EFFD968FEE847DE77B75D88882D7EDECFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEDECFA958FDD958FDDEDECFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbtAlterarClick
    end
    object sbtExcluir: TSpeedButton
      Left = 114
      Top = 6
      Width = 48
      Height = 48
      Hint = 'Excluir venda'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C00009D0000009D0000000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFCFEA4B2F2667DE9546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE766
        7DE9A4B2F2FBFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA4B2F2546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7A4B2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF667DE9546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7667DEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE790A1
        EF8A9BEF546EE7546EE7546EE7546EE7627AE9A6B4F3657DE9546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE75670E7FCFC
        FFFEFEFF9BAAF1546EE7546EE7637BE9E1E6FBFFFFFFA6B4F3546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE79AAA
        F1FEFEFFFEFEFF9BAAF1637BE9E1E6FBFFFFFFE1E6FB627AE9546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E79BAAF1FEFEFFFEFEFFECEFFCFFFFFFE1E6FB637BE9546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7A5B3F2FFFFFFFFFFFFECEFFC637BE9546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7627AE9E1E5FBFFFFFFFFFFFFFEFEFF9CABF1546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7637B
        E9E1E6FBFFFFFFE1E6FBA6B3F2FEFEFFFEFEFF9BAAF1546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7556FE7DFE4
        FAFFFFFFE1E6FB637BE9546EE79BAAF1FEFEFFFEFEFF8A9BEF546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7556FE7E5E9
        FBDFE4FA637BE9546EE7546EE7546EE79AAAF1FCFCFF90A1EF546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7556F
        E7546EE7546EE7546EE7546EE7546EE7546EE7556FE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF546EE7546EE7546EE7546EE7546EE7546EE7546E
        E7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE7546EE754
        6EE7546EE7546EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9E95779E95779E95779E95779E95779E95779E95779E95779E95
        779E95779E95779E95779E95779E95779E95779E95779E95779E95779E95779E
        95779E95779E95779E95779E9577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9E95779E95779E95779E95779E95779E95779E95779E95779E95
        779E95779E95779E95779E95779E95779E95779E95779E95779E95779E95779E
        95779E95779E95779E95779E9577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9E95779E95779E95779E95779E95779E95779E95779E95779E95
        779E95779E95779E95779E95779E95779E95779E95779E95779E95779E95779E
        95779E95779E95779E95779E9577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9E95779E95779E95779E95779E95779E95779E95779E95779E95
        779E95779E95779E95779E95779E95779E95779E95779E95779E95779E95779E
        95779E95779E95779E95779E9577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA8A1869E95779E95779E95779E95779E95779E95779E95779E95
        779E95779E95779E95779E95779E95779E95779E95779E95779E95779E95779E
        95779E95779E95779E9577A9A186FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE1E0D7A8A0859E95779E95779E95779E95779E95779E95779E95
        779E95779E95779E95779E95779E95779E95779E95779E95779E95779E95779E
        95779E95779E9577A8A186E3E1D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C80
        628C8062FFFFFFFFFFFFFFFFFFFFFFFF8C80628C8062FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C80
        628C8062FFFFFFFFFFFFFFFFFFFFFFFF8C80628C8062FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C80
        628C80628C80628C80628C80628C80628C80628C8062FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C80
        628C80628C80628C80628C80628C80628C80628C8062FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbtExcluirClick
    end
    object sbtOs: TSpeedButton
      Left = 168
      Top = 6
      Width = 48
      Height = 48
      Hint = 'Adicionar O.S.'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000130B0000130B00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCBCCCB8EA097899D938A9E948A9E948A9E948A9E948A9E948A9E
        948A9E948A9E948A9E948A9E948A9E948A9E948A9E948A9E948A9E948A9E948A
        9E948A9E948A9E948DA097C4C5C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
        FFFFFFE2E3E253A67D54C78E52C38B52C38C52C38C52C38C52C38C52C38C52C3
        8C52C38C52C38C52C38C52C38C52C38C52C38C52C38C52C38C52C38C52C38C52
        C38C52C38C52C28B54C78E4FA77BD8DAD9FFFFFFFEFEFEFFFFFFFFFFFFFEFEFE
        FFFFFFB7C4BE50C38B4FB4834EB4824DB5824EB5834EB5834EB5834EB5834EB5
        834EB5834EB5834EB5834EB5834EB5834EB5834EB5834EB5834EB5834EB5834E
        B5834DB5824EB48250B38350C28AADBDB5FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6C04EBE8750B6844EB5824DB6824DB6824DB6824DB6824DB6824DB6
        824DB6824DB6824DB6824DB6824DB6824DB6824DB6824DB6824DB6824DB6824D
        B6824DB6824DB5824FB6844EBE87AFC0B7FFFFFFFDFDFDFFFFFFFFFFFFFEFEFE
        FFFFFFB9C6C04EBE874FB6834EB6824DB7834DB7834DB7834DB7834DB7834DB7
        834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834D
        B7834DB7834DB6824FB6844EBE87AFBFB7FFFFFFFEFEFEFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844EB6824DB7834DB7834CB6824DB7834DB7834CB6
        824DB7834DB7834DB7834DB7834CB6824DB7834DB7834CB6824DB7834DB7834D
        B7834DB7834DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844DB6824DB7834CB6824DB7834FB7844FB7844EB7
        834CB6824EB7834EB7844CB6824EB7834FB7844FB7844EB7834DB7834EB7844E
        B7834CB6824DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844EB5814CB6824EB78348B58040B17A3FB17945B3
        7D4FB78445B47D42B27B4DB78347B47E40B1793FB17946B47E4DB78341B27B46
        B47E4DB7834CB5814FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844DB6824DB78345B37D5BBC8C97D5B7A0D8BC6EC4
        9A3FB17972C59C84CCA946B47E64C0939CD6BA9FD7BC6BC29748B57F85CDAA6D
        C39948B47F4EB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844EB68348B47F5ABC8CEAF6F0FFFFFFFFFFFFFEFE
        FE6DC399C6E6D7FFFFFF72C59CF4FAF7FFFFFFFFFFFFFCFDFC85CCAAFFFFFFC5
        E6D63EB07850B8844FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB68450B7843FB1798ED0B0FFFFFFCEEADCAFDDC7FFFF
        FFB9E1CE6FC49A82CCA8A6DAC0FFFFFFAFDDC7A2D8BEFFFFFFAEDDC683CCA877
        C8A048B47F4EB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB68450B68340B27A94D3B5FEFEFEC9E8D9A8DAC1FEFE
        FEC3E6D53CB07738AE748ED0B0C8E8D991D1B2C0E4D3FEFEFEA5D9C031AB6F47
        B57E4DB7834CB5814FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844FB78440B17A95D3B5FFFFFFCBE9DAAADBC3FFFF
        FFC2E5D443B37C51B88640B17A65C093D3ECE0FFFFFFFFFFFF76C69F45B37D4F
        B7844CB6824DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844FB78440B17A96D3B5FFFFFFCBE9DAAADBC3FFFF
        FFC2E5D444B37C47B47E6FC39AF9FBFAFFFFFFE5F3ED77C7A041B27A4EB7834C
        B6824DB7834DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB68450B6843FB17A94D3B4FDFEFEC9E8D8A6D9C0FEFE
        FEC3E5D445B37D41B17AACDCC5FFFFFFCBE9DA85CDAA86CDAA63BF9247B47E4D
        B6834DB7834DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844FB78440B1798BCFAEFFFFFFD3EBDFB5E0CBFFFF
        FFBCE3D042B27B41B27BAEDDC6FFFFFFA5D9C0C7E7D7FFFFFF85CCA940B1794E
        B7844DB7834DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844EB68349B58055B988DFF1E8FFFFFFFFFFFFF5FA
        F873C59D46B47E45B47E77C7A0F9FCFBFFFFFFFFFFFFE6F4ED5BBC8C48B47F4D
        B6834DB7834DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844DB5824EB78346B47E52B88685CDAA8DD0AF60BE
        9043B37C4DB7834DB78344B37D65C0938ED1B087CEAB56BA8947B47E4DB7834C
        B6824DB7834DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844EB6814CB6824EB7834AB68141B27B41B27A47B4
        7F4EB7844CB6824CB6824EB78346B47E40B27A41B27B49B5804EB7834CB6824D
        B7834DB7834DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4EBF884FB6844DB6824DB7834CB6824DB7834EB7844EB7844DB7
        834CB6824DB7834DB7834CB6824DB7834EB7844EB7844DB7834CB6824DB7834C
        B6824DB7834DB6824FB6844EBF88AFBFB7FFFFFFFDFDFDFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6C04DBE874FB6844EB6824DB7834DB7834DB7834DB7834DB7834DB7
        834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834D
        B7834DB7834DB6824FB6844EBF88B0C0B8FFFFFFFDFDFDFFFFFFFFFFFFFEFEFE
        FFFFFFB9C6C04EBF884EB5844EB6824DB7834DB7834DB7834DB7834DB7834DB7
        834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834D
        B7834DB7834DB6824FB6844DBE87B0C0B8FFFFFFFEFEFEFFFFFFFFFFFFFDFDFD
        FFFFFFB9C6BF4FBE8850B6844EB5824EB6834DB7834DB7834DB7834DB7834DB7
        834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834DB7834D
        B7834EB6824DB5824FB6844FBF88ADBEB5FFFFFFFEFEFEFFFFFFFFFFFFFEFEFE
        FFFFFFC3CFC94DBF8752B68451B68450B78450B68450B68450B68450B68450B6
        8450B68450B68450B68450B68450B68450B68450B68450B68450B68450B68450
        B68450B78451B68452B5854DBF87B5C5BDFFFFFFFDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFF2F3F35FAD874CC0874ABB844BBB844BBC844BBC844BBC844BBC844BBC
        844BBC844BBC844BBC844BBC844BBC844BBC844BBC844BBC844BBC844BBC844B
        BC844BBB844ABB834BBE8659AD84EDEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4F5F5C6D2CCC1CEC7C1CEC8C1CEC7C1CEC7C1CEC7C1CEC7C1CE
        C7C1CEC7C1CEC7C1CEC7C1CEC7C1CEC7C1CEC7C1CEC7C1CEC7C1CEC7C1CEC7C1
        CEC7C1CEC8C1CDC7C5D1CBF1F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbtOsClick
    end
  end
  object pnlInfo: TPanel
    Left = 0
    Top = 57
    Width = 1184
    Height = 46
    Align = alTop
    TabOrder = 2
    object Panel1: TPanel
      Left = 673
      Top = 1
      Width = 96
      Height = 44
      Align = alLeft
      TabOrder = 0
      object labelas: TLabel
        Left = 1
        Top = 1
        Width = 94
        Height = 17
        Align = alClient
        Caption = 'SERVI'#199'O'
        Color = clCream
        ParentColor = False
        Transparent = False
        ExplicitWidth = 49
        ExplicitHeight = 14
      end
      object Panel4: TPanel
        Left = 1
        Top = 18
        Width = 94
        Height = 25
        Align = alBottom
        Caption = 'R$ 10000,00'
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 289
      Top = 1
      Width = 96
      Height = 44
      Align = alLeft
      TabOrder = 1
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 94
        Height = 17
        Align = alClient
        Caption = 'CART'#195'O'
        Color = clCream
        ParentColor = False
        Transparent = False
        ExplicitWidth = 47
        ExplicitHeight = 14
      end
      object Panel3: TPanel
        Left = 1
        Top = 18
        Width = 94
        Height = 25
        Align = alBottom
        Caption = 'R$ 10000,00'
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 193
      Top = 1
      Width = 96
      Height = 44
      Align = alLeft
      TabOrder = 2
      object Label2: TLabel
        Left = 1
        Top = 1
        Width = 94
        Height = 17
        Align = alClient
        Caption = 'DINHEIRO'
        Color = clCream
        ParentColor = False
        Transparent = False
        ExplicitWidth = 55
        ExplicitHeight = 14
      end
      object Panel6: TPanel
        Left = 1
        Top = 18
        Width = 94
        Height = 25
        Align = alBottom
        Caption = 'R$ 10000,00'
        TabOrder = 0
      end
    end
    object Panel7: TPanel
      Left = 97
      Top = 1
      Width = 96
      Height = 44
      Align = alLeft
      TabOrder = 3
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 94
        Height = 17
        Align = alClient
        Caption = 'CAIXA'
        Color = clCream
        ParentColor = False
        Transparent = False
        ExplicitWidth = 34
        ExplicitHeight = 14
      end
      object Panel8: TPanel
        Left = 1
        Top = 18
        Width = 94
        Height = 25
        Align = alBottom
        Caption = 'R$ 10000,00'
        TabOrder = 0
      end
    end
    object Panel11: TPanel
      Left = 769
      Top = 1
      Width = 96
      Height = 44
      Align = alLeft
      TabOrder = 4
      object Label5: TLabel
        Left = 1
        Top = 1
        Width = 94
        Height = 17
        Align = alClient
        Caption = 'DESPESAS'
        Color = clCream
        ParentColor = False
        Transparent = False
        ExplicitWidth = 58
        ExplicitHeight = 14
      end
      object Panel12: TPanel
        Left = 1
        Top = 18
        Width = 94
        Height = 25
        Align = alBottom
        Caption = 'R$ 10000,00'
        TabOrder = 0
      end
    end
    object Panel19: TPanel
      Left = 577
      Top = 1
      Width = 96
      Height = 44
      Align = alLeft
      TabOrder = 5
      object Label9: TLabel
        Left = 1
        Top = 1
        Width = 94
        Height = 17
        Align = alClient
        Caption = 'N'#195'O FATURADO'
        Color = clCream
        ParentColor = False
        Transparent = False
        ExplicitWidth = 91
        ExplicitHeight = 14
      end
      object Panel20: TPanel
        Left = 1
        Top = 18
        Width = 94
        Height = 25
        Align = alBottom
        Caption = 'R$ 10000,00'
        TabOrder = 0
      end
    end
    object Panel21: TPanel
      Left = 481
      Top = 1
      Width = 96
      Height = 44
      Align = alLeft
      TabOrder = 6
      object Label10: TLabel
        Left = 1
        Top = 1
        Width = 94
        Height = 17
        Align = alClient
        Caption = 'FATURADO'
        Color = clCream
        ParentColor = False
        Transparent = False
        ExplicitWidth = 62
        ExplicitHeight = 14
      end
      object Panel22: TPanel
        Left = 1
        Top = 18
        Width = 94
        Height = 25
        Align = alBottom
        Caption = 'R$ 10000,00'
        TabOrder = 0
      end
    end
    object Panel23: TPanel
      Left = 385
      Top = 1
      Width = 96
      Height = 44
      Align = alLeft
      TabOrder = 7
      object Label11: TLabel
        Left = 1
        Top = 1
        Width = 77
        Height = 17
        Align = alClient
        Caption = 'LUCRO'
        Color = clCream
        ParentColor = False
        Transparent = False
        ExplicitWidth = 37
        ExplicitHeight = 14
      end
      object Panel24: TPanel
        Left = 1
        Top = 18
        Width = 94
        Height = 25
        Align = alBottom
        Caption = 'R$ 10000,00'
        TabOrder = 0
      end
      object Button1: TButton
        Left = 78
        Top = 1
        Width = 17
        Height = 17
        Align = alRight
        Caption = '+'
        TabOrder = 1
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 96
      Height = 44
      Align = alLeft
      TabOrder = 8
      object Label4: TLabel
        Left = 1
        Top = 1
        Width = 94
        Height = 17
        Align = alClient
        Caption = 'DESPESAS'
        Color = clCream
        ParentColor = False
        Transparent = False
        ExplicitWidth = 58
        ExplicitHeight = 14
      end
      object Panel10: TPanel
        Left = 1
        Top = 18
        Width = 94
        Height = 25
        Align = alBottom
        Caption = 'R$ 10000,00'
        TabOrder = 0
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 103
    Width = 1184
    Height = 425
    Align = alClient
    DataSource = dtmPrincipal.dtsPrincipal
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_dinheiro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_cartao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_custo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_lucro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_debito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_nao_faturar'
        Visible = True
      end>
  end
end
