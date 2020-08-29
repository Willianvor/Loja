unit uDTM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdtmPrincipal = class(TDataModule)
    conPrincipal: TFDConnection;
    qryPrincipal: TFDQuery;
    dtsPrincipal: TDataSource;
    qryUsuario: TFDQuery;
    dtsUsuario: TDataSource;
    qryPrincipalid_venda: TFDAutoIncField;
    qryPrincipaldt_data: TSQLTimeStampField;
    qryPrincipalfk_nm_usuario: TIntegerField;
    qryPrincipalnm_descricao: TWideStringField;
    qryPrincipalvlr_servico: TCurrencyField;
    qryPrincipalvlr_desconto_usuario: TCurrencyField;
    qryPrincipalvlr_dinheiro: TCurrencyField;
    qryPrincipalvlr_cartao: TCurrencyField;
    qryPrincipalvlr_custo: TCurrencyField;
    qryPrincipalvlr_lucro: TCurrencyField;
    qryPrincipalvlr_debito: TCurrencyField;
    qryPrincipalvlr_nao_faturar: TCurrencyField;
    qryPrincipalid_usuario: TIntegerField;
    qryPrincipalnm_usuario: TWideStringField;
    qryConf: TFDQuery;
    dtsConf: TDataSource;
    FDQuery1: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    IntegerField2: TIntegerField;
    WideStringField2: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
