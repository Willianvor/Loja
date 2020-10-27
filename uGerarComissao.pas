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
    lblDataPagamento: TLabel;
    lblComissionado: TLabel;
    lblDataInicioComissao: TLabel;
    lblDataFinalComissao: TLabel;
    lblPorcentagemComissao: TLabel;
    DBEdit5: TDBEdit;
    lblVlrComissão: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    lblTotalComissao: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    dtpDataComissao: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    dtpDataInicioComissao: TDateTimePicker;
    dtpDataFinalComissao: TDateTimePicker;
    memObservacoes: TMemo;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtpDataInicioComissaoChange(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
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
  porcentagem, lucro, servico, comissao, comissaoTotal : Real;
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
    porcentagem := dtmPrincipal.qryComissao.FieldByName('nr_porcentagem').Value / 100;

    lucro   := frmPrincipal.SeNulo(qryCalcular, 'LUCRO');
    servico := frmPrincipal.SeNulo(qryCalcular, 'SERVICO');
    //colocar no programa a opção de dividir por quantos quiser
    comissao := (lucro * porcentagem) + (servico / 2);

    dtmPrincipal.qryComissao.FieldByName('vlr_comissao').AsFloat := comissao;

  finally
    qryCalcular.Free;
  end;
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
  dtmPrincipal.qryPrincipal.Post;
  ModalResult := mrOk;
end;

procedure TfrmGerarComissao.FormShow(Sender: TObject);
begin
  dtpDataComissao.Date := Now;
  dtpDataInicioComissao.Date := Now;
  dtpDataFinalComissao.Date  := Now;
end;

end.
