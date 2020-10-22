unit uVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDTM,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmVenda = class(TForm)
    pnlComandos: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    dbeDebito: TDBEdit;
    dbeDesconto: TDBEdit;
    dbeNaoFaturar: TDBEdit;
    dbeServico: TDBEdit;
    lblDebito: TLabel;
    lblDesconto: TLabel;
    lblNaoFaturar: TLabel;
    lblServico: TLabel;
    lblCusto: TLabel;
    dbeCusto: TDBEdit;
    lblLucro: TLabel;
    dbeLucro: TDBEdit;
    lblUsuario: TLabel;
    dblUsuario: TDBLookupComboBox;
    lblData: TLabel;
    dtpDataVenda: TDateTimePicker;
    lblDescricao: TLabel;
    dbcDescricao: TDBComboBox;
    dbeCartao: TDBEdit;
    dbeDinheiro: TDBEdit;
    lblCartao: TLabel;
    lblDinheiro: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtpDataVendaChange(Sender: TObject);
    procedure dbeDinheiroChange(Sender: TObject);
    procedure dbeCartaoChange(Sender: TObject);
    procedure dbeCustoChange(Sender: TObject);
  private
    procedure CalculaLucro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

uses uPrincipalOld, uAtalhos, uPrincipal;

procedure TfrmVenda.CalculaLucro();
begin
  with dtmPrincipal.qryPrincipal do begin
    if (State = dsInsert) or (State = dsEdit) then begin
      FieldByName('vlr_lucro').AsFloat := FieldByName('vlr_dinheiro').AsFloat
      + FieldByName('vlr_cartao').AsFloat - FieldByName('vlr_custo').AsFloat;
    end;
  end;
end;

procedure TfrmVenda.btnCancelarClick(Sender: TObject);
begin
  dtmPrincipal.qryPrincipal.Cancel;
  ModalResult := mrCancel;
end;

procedure TfrmVenda.btnSalvarClick(Sender: TObject);
begin
  dtmPrincipal.qryPrincipal.FieldByName('dt_data').Value := dtpDataVenda.Date;
  dtmPrincipal.qryPrincipal.Post;
  ModalResult := mrOk;
end;

procedure TfrmVenda.dbeCartaoChange(Sender: TObject);
begin
  CalculaLucro;
end;

procedure TfrmVenda.dbeCustoChange(Sender: TObject);
begin
  CalculaLucro;
end;

procedure TfrmVenda.dbeDinheiroChange(Sender: TObject);
begin
  CalculaLucro;
end;

procedure TfrmVenda.dtpDataVendaChange(Sender: TObject);
begin
  dtmPrincipal.qryPrincipal.FieldByName('dt_data').Value := dtpDataVenda.Date;
end;

procedure TfrmVenda.FormActivate(Sender: TObject);
begin
  dtmPrincipal.qryPrincipal.FieldByName('dt_data').Value := dtpDataVenda.Date;
  dtmPrincipal.qryPrincipal.FieldByName('fk_nm_usuario').Value := 1;
  CarregaDescricao(dtmPrincipal.conPrincipal, dbcDescricao, 'nm_descricao', 'tb_vendas');
end;

procedure TfrmVenda.FormShow(Sender: TObject);
begin
  dtpDataVenda.Date := frmPrincipal.dtpPrincipal.Date;
end;

end.
