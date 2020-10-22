unit uPrincipal;

interface

uses
    System.Classes, Vcl.Graphics, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBGrids, Vcl.ExtCtrls,
    Vcl.ComCtrls, System.Variants, uDTM, uVenda, Data.DB, Vcl.Grids, Vcl.Buttons,
    System.SysUtils, Vcl.Forms, Winapi.Windows, Winapi.Messages, uOS, uAtalhos, BancoDados,
    Vcl.Controls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uComissao;

type
  TfrmPrincipal = class(TForm)
    pnlData: TPanel;
    pnlComandos: TPanel;
    pnlInfo: TPanel;
    DBGrid1: TDBGrid;
    sbtNovaVenda: TSpeedButton;
    sbtAlterar: TSpeedButton;
    sbtExcluir: TSpeedButton;
    sbtOs: TSpeedButton;
    gpbData: TGroupBox;
    dtpPrincipal: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    labelas: TLabel;
    pnlVlrServico: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    pnlVlrCartao: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    pnlVlrDinheiro: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    pnlVlrCaixa: TPanel;
    Panel11: TPanel;
    Label5: TLabel;
    pnlVlrDespesas: TPanel;
    Panel21: TPanel;
    Label10: TLabel;
    pnlVlrFaturado: TPanel;
    Panel23: TPanel;
    Label11: TLabel;
    pnlVlrLucro: TPanel;
    Button1: TButton;
    sbtComissoes: TSpeedButton;
    procedure sbtNovaVendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbtExcluirClick(Sender: TObject);
    procedure sbtAlterarClick(Sender: TObject);
    procedure sbtOsClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dtpPrincipalChange(Sender: TObject);
    procedure dtpPrincipalCloseUp(Sender: TObject);
    procedure sbtComissoesClick(Sender: TObject);
  private
    procedure Calculos;
    //procedure VerificaRepetido;
    { Private declarations }
  public
    procedure GridPorData(dtp: TDateTimePicker);
    function SeNulo(query: TFDQuery; campo: string): real;
    procedure ValorRS(painel: TPanel; valor: Real);overload;
    procedure ValorRS(painel: TPanel; str : string; valor: Real);overload;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{TODO: arrumar a procedure VerificaRepetido()}

//formata para os paineis
procedure TfrmPrincipal.ValorRS(painel: TPanel; valor: Real);
begin
  painel.Caption := 'R$ ' + FormatFloat('0.00', valor);
end;

procedure TfrmPrincipal.ValorRS(painel: TPanel; str : string; valor: Real);
begin
  painel.Caption := str + 'R$ ' + FormatFloat('0.00', valor);
end;
//----------------------

procedure TfrmPrincipal.Calculos();
var
  qryCalc, qryOntem : TFDQuery;
  vlr_dinheiro, vlr_cartao, vlr_lucro, vlr_servico, vlr_debito, nao_faturado,
  dinheiroAnterior, debitoAnterior, sangriaAnterior, caixa, faturado : real;
begin
  qryCalc := TFDQuery.Create(nil);
  qryCalc.Connection := dtmPrincipal.conPrincipal;
  qryOntem := TFDQuery.Create(nil);
  qryOntem.Connection := dtmPrincipal.conPrincipal;

  try
    with qryCalc do begin
      Close;
      SQL.Clear;
      SQL.Add('select SUM(vlr_dinheiro) as DINHEIRO, sum(vlr_cartao) as CARTAO,');
      SQL.Add('sum(vlr_lucro) as LUCRO, sum(vlr_servico) as SERVICO,');
      SQL.Add('sum(vlr_debito) as DEBITO from tb_vendas where dt_data=:data');
      ParamByName('data').AsString := FormatDateTime('yyyy-mm-dd', dtpPrincipal.Date);
      Open();
    end;

    //previne de ser nulo o valor
    vlr_dinheiro := SeNulo(qryCalc, 'DINHEIRO');
    vlr_cartao   := SeNulo(qryCalc, 'CARTAO');
    vlr_lucro    := SeNulo(qryCalc, 'LUCRO');
    vlr_servico  := SeNulo(qryCalc, 'SERVICO');
    vlr_debito   := SeNulo(qryCalc, 'DEBITO');


    faturado := vlr_dinheiro + vlr_cartao;

    //Saldo anterior//
    with qryOntem do begin
      Close;
      SQL.Clear;
      SQL.Add('select sum(vlr_dinheiro) as DINHEIRO, sum(vlr_debito) as DEBITO,');
      SQL.Add('sum(vlr_sangria) as SANGRIA, sum(vlr_nao_faturar) as N_FATURADO from tb_vendas');
      SQL.Add('where dt_data between #2000-01-01# and :data');
      ParamByName('data').AsString := FormatDateTime('yyyy-mm-dd', dtpPrincipal.Date);
      Open();
    end;

    dinheiroAnterior:= SeNulo(qryOntem, 'dinheiro');
    debitoAnterior  := SeNulo(qryOntem, 'debito');
    sangriaAnterior := SeNulo(qryOntem, 'sangria');
    nao_faturado    := SeNulo(qryOntem, 'N_FATURADO');
    //--------------//

    caixa := dinheiroAnterior + nao_faturado - debitoAnterior - sangriaAnterior;

    //formata o valor para o painel
    ValorRS(pnlVlrCaixa, caixa);
    ValorRS(pnlVlrDinheiro, vlr_dinheiro);
    ValorRS(pnlVlrCartao, vlr_cartao);
    ValorRS(pnlVlrFaturado, faturado);
    ValorRS(pnlVlrLucro, vlr_lucro);
    ValorRS(pnlVlrServico, vlr_servico);
    ValorRS(pnlVlrDespesas, vlr_debito);
  finally
    qryCalc.Free;
    qryOntem.Free;
  end;
  //ComissaoSemanal;
end;

//função que previne o valor de ser nulo
function TfrmPrincipal.SeNulo(query : TFDQuery; campo : string) : real;
begin
  if query[campo] = null then
    Result := 0
  else
    Result := query[campo];
end;

//mostra os registros no grid por data
procedure TfrmPrincipal.GridPorData(dtp: TDateTimePicker);
begin
  with dtmPrincipal.qryPrincipal do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from tb_vendas');
    SQL.Add('inner join tb_usuario');
    SQL.Add('ON tb_usuario.id_usuario = tb_vendas.fk_nm_usuario');
    SQL.Add('where tb_vendas.dt_data = CDate(:data)');
    ParamByName('data').Value := FormatDateTime('yyyy-mm-dd', dtp.Date); //.value também, funciona sem o formatdatetime
    Open();
  end;
end;

procedure TfrmPrincipal.dtpPrincipalChange(Sender: TObject);
begin
  GridPorData(dtpPrincipal);
  Calculos();
end;

procedure TfrmPrincipal.dtpPrincipalCloseUp(Sender: TObject);
begin
  GridPorData(dtpPrincipal);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  abrirTXT : TStringStream;
begin
  dtpPrincipal.date := Now;
  abrirTXT := TStringStream.Create();
  abrirTXT.LoadFromFile(ExtractFilePath(Application.ExeName)+'Conf\CaminhoBanco.txt');
  try
    with dtmPrincipal do begin
      conPrincipal.Params.Database := abrirTXT.DataString;
      conPrincipal.Connected := True;
      qryPrincipal.Active := True;
      qryUsuario.Active   := True;
      //mostra grid por data
      GridPorData(dtpPrincipal);
    end;
  except
    Application.MessageBox('Banco de dados não encontrado.', 'Erro', mb_ok + MB_ICONERROR );
  end;
  dtpPrincipal.Date := Now;
  Calculos();
end;

procedure TfrmPrincipal.sbtAlterarClick(Sender: TObject);
begin
  if dtmPrincipal.qryPrincipal.RowsAffected < 1 then begin
    Application.MessageBox('Sem registros para alterar.', 'Atenção', mb_ok+MB_ICONINFORMATION);
  end else begin
    try
      Application.CreateForm(TFrmVenda, frmVenda);
      dtmPrincipal.qryPrincipal.Edit;
      if frmVenda.ShowModal = mrok then begin
        dtmPrincipal.qryPrincipal.Refresh;
      end;
    finally
      frmVenda.FreeOnRelease;
      Calculos();
    end;
  end;
end;

procedure TfrmPrincipal.sbtComissoesClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmComissoes, frmComissoes);
    frmComissoes.ShowModal;
  finally
    frmComissoes.FreeOnRelease;
    Calculos();
  end;
end;

procedure TfrmPrincipal.sbtExcluirClick(Sender: TObject);
var desc : string;
begin
  if dtmPrincipal.qryPrincipal.RowsAffected < 1 then begin
    Application.MessageBox('Sem registros para excluir.', 'Atenção', mb_ok+MB_ICONINFORMATION);
  end
  else begin
    desc := dtmPrincipal.qryPrincipal.fieldbyname('nm_descricao').value;
    if Application.MessageBox(Pchar('Deseja excluir o registro selecionado?'
    + slinebreak + desc), 'Atenção', mb_yesno+mb_iconexclamation) = mrYes then begin
      dtmPrincipal.qryPrincipal.Delete;
      dtmPrincipal.qryPrincipal.Refresh;
    end;
  end;
end;

procedure TfrmPrincipal.sbtNovaVendaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmVenda, frmVenda);
    dtmPrincipal.qryPrincipal.Append;
    if frmVenda.ShowModal = mrok then
      dtmPrincipal.qryPrincipal.Refresh;
  finally
    frmVenda.FreeOnRelease;
    Calculos();
  end;
end;

procedure TfrmPrincipal.sbtOsClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmOS, frmOS);
    if frmOS.ShowModal = mrOK then begin
      with dtmPrincipal.qryPrincipal do begin
        Append;
        FieldByName('nm_descricao').value := 'OS ' + frmOS.edtNROs.text;

        //pega o valor da comissão por OS
        FieldByName('vlr_servico').value  := PegaQry(dtmPrincipal.conPrincipal,
        'tb_conf', 'vlr_servico', '1');
        //-----------------------------//
        FieldByName('fk_nm_usuario').value := 1;
        FieldByName('dt_data').value := dtpPrincipal.Date;
        Post;
        Refresh;
        Calculos();
      end;
    end;
  finally
    frmOS.FreeOnRelease;
  end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBancoDados, frmBancoDados);
    frmBancoDados.ShowModal;
  finally
    frmBancoDados.FreeOnRelease;
  end;
end;

end.
