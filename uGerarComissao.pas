unit uGerarComissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDTM,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmGerarComissao = class(TForm)
    pnlComandos: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    pnlPainel1: TPanel;
    gpbDadosComissionado: TGroupBox;
    lblDataPagamento: TLabel;
    lblComissionado: TLabel;
    dtpDataComissao: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    gpbDatasComissao: TGroupBox;
    lblAte: TLabel;
    dtpDataInicioComissao: TDateTimePicker;
    dtpDataFinalComissao: TDateTimePicker;
    pnlPainel2: TPanel;
    gpbAddRed: TGroupBox;
    lblAdicionar: TLabel;
    lblDeduzir: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    gpbDivisoes: TGroupBox;
    lblPorcentagemComissao: TLabel;
    lblDivisaoServico: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    pnlPainel3: TPanel;
    gpbComissao: TGroupBox;
    lblVlrComissãoBruta: TLabel;
    lbLComissaoLiquida: TLabel;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    gpbObervacoes: TGroupBox;
    memObservacoes: TMemo;
    lblInicio: TLabel;
    lblFinal: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtpDataInicioComissaoChange(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    procedure CalcularComissao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerarComissao: TfrmGerarComissao;

implementation

{$R *.dfm}

uses uPrincipal;

//Calcula as comissões
procedure TfrmGerarComissao.CalcularComissao();
var
  porcentagem, lucro, servico, comissaoBruta, comissaoLiquida, divisao_servico : Real;
  qryCalcular : TFDQuery;
begin
  try
    qryCalcular := TFDQuery.Create(nil);
    qryCalcular.Connection := dtmPrincipal.conPrincipal;
    with qryCalcular do begin
      Close;
      SQL.Clear;
      SQL.Add('select sum(vlr_lucro) as LUCRO, sum(vlr_servico) as SERVICO');
      SQL.Add('from tb_vendas where dt_data=:data');
      ParamByName('data').AsString := FormatDateTime('yyyy-mm-dd', dtpDataInicioComissao.Date);
      Open();
    end;
    porcentagem := frmPrincipal.SeNulo(dtmPrincipal.qryComissao, 'nr_porcentagem');
    porcentagem := porcentagem / 100;
    divisao_servico := frmPrincipal.SeNulo(dtmPrincipal.qryComissao, 'nr_divisao_servico');

    lucro   := frmPrincipal.SeNulo(qryCalcular, 'LUCRO');
    servico := frmPrincipal.SeNulo(qryCalcular, 'SERVICO');

    if divisao_servico = 0 then
      comissaoBruta := (lucro * porcentagem) + (servico)
    else
      comissaoBruta := (lucro * porcentagem) + (servico / divisao_servico);

    //comissão bruta
    dtmPrincipal.qryComissao.FieldByName('vlr_comissao').AsFloat := comissaoBruta;

    //comissao liquida
    with dtmPrincipal.qryComissao do begin
      comissaoLiquida := FieldByName('vlr_comissao').AsFloat + FieldByName('vlr_adicionar').AsFloat -
      FieldByName('vlr_deduzir').AsFloat;
    end;

    dtmPrincipal.qryComissao.FieldByName('vlr_total').AsFloat := comissaoLiquida;
  finally
    qryCalcular.Free;
  end;
end;

procedure TfrmGerarComissao.DBEdit1Exit(Sender: TObject);
begin
  CalcularComissao;
end;

procedure TfrmGerarComissao.DBEdit5Exit(Sender: TObject);
begin
  CalcularComissao;
end;

procedure TfrmGerarComissao.dtpDataInicioComissaoChange(Sender: TObject);
begin
  CalcularComissao();
end;

procedure TfrmGerarComissao.btnCancelarClick(Sender: TObject);
begin
  dtmPrincipal.qryComissao.Cancel;
  ModalResult := mrCancel;
end;

procedure TfrmGerarComissao.btnSalvarClick(Sender: TObject);
begin
  dtmPrincipal.qryComissao.FieldByName('dt_pagamento').Value := dtpDataComissao.Date;
  dtmPrincipal.qryComissao.FieldByName('dt_inicio_comissao').Value := dtpDataInicioComissao.Date;
  dtmPrincipal.qryComissao.FieldByName('dt_final_comissao').Value := dtpDataFinalComissao.Date;
  dtmPrincipal.qryComissao.FieldByName('nm_observacoes').Value := memObservacoes.Text;
  dtmPrincipal.qryComissao.Post;
  ModalResult := mrOk;
end;

procedure TfrmGerarComissao.FormShow(Sender: TObject);
begin
  dtpDataComissao.Date := Now;
  dtpDataInicioComissao.Date := Now;
  dtpDataFinalComissao.Date  := Now;
end;

end.
