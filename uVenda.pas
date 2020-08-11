unit uVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDTM,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls;

type
  TfrmVenda = class(TForm)
    pnlDados: TPanel;
    pnlComandos: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    lblUsuario: TLabel;
    dblUsuario: TDBLookupComboBox;
    lblData: TLabel;
    dtpDataVenda: TDateTimePicker;
    lblDescricao: TLabel;
    dbeDescricao: TDBEdit;
    lblServico: TLabel;
    dbeServico: TDBEdit;
    lblDesconto: TLabel;
    dbeDesconto: TDBEdit;
    lblDinheiro: TLabel;
    dbeDinheiro: TDBEdit;
    lblCartao: TLabel;
    dbeCartao: TDBEdit;
    lblCusto: TLabel;
    dbeCusto: TDBEdit;
    lblLucro: TLabel;
    dbeLucro: TDBEdit;
    lblDebito: TLabel;
    dbeDebito: TDBEdit;
    lblNaoFaturar: TLabel;
    dbeNaoFaturar: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtpDataVendaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

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

procedure TfrmVenda.dtpDataVendaChange(Sender: TObject);
begin
  dtmPrincipal.qryPrincipal.FieldByName('dt_data').Value := dtpDataVenda.Date;
end;

procedure TfrmVenda.FormActivate(Sender: TObject);
begin
  dtmPrincipal.qryPrincipal.FieldByName('dt_data').Value := dtpDataVenda.Date;
end;

procedure TfrmVenda.FormShow(Sender: TObject);
begin
  dtpDataVenda.Date := Now;
end;

end.
