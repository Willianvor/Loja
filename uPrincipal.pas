unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, uDTM, Vcl.ComCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Menus, uVenda,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, uOS;

type
  TfrmPrincipal = class(TForm)
    pnlData: TPanel;
    pnlGrid: TPanel;
    pnlInfos: TPanel;
    pnlComandos: TPanel;
    lblDATA: TLabel;
    dtpPrincipal: TDateTimePicker;
    pnlVendasDinheiroP: TPanel;
    pnlVendasDinheiroVLR: TPanel;
    pnlSangria: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlDiferenca: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    pnlCartao: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    pnlDinheiro: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    pnlLucro: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    pnlCustos: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    pnlFaturado: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    pnlCaixa: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel4: TPanel;
    pnlDespesas: TPanel;
    menuPrincipal: TMainMenu;
    Arquivo1: TMenuItem;
    BancodeDadosRede1: TMenuItem;
    btnVenda: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnOS: TButton;
    procedure BancodeDadosRede1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVendaClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnOSClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CarregaDescricao(combo: TDBComboBox; campo, tabela : string);
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses BancoDados;

procedure TfrmPrincipal.CarregaDescricao(combo : TDBComboBox; campo, tabela : string);
var
  qryItems : TFDQuery;
begin
  qryItems := TFDQuery.Create(nil);
  qryItems.Connection := dtmPrincipal.conPrincipal;
  try
    with qryItems do begin
      Close;
      SQL.Clear;
      SQL.Add('select ' + campo + ' from ' + tabela);
      Open();
    end;

    while not qryItems.Eof do begin
      combo.Items.Add(qryItems.Fields[0].AsString);
      qryItems.Next;
    end;
  finally
    qryItems.Free;
  end;
end;

procedure TfrmPrincipal.BancodeDadosRede1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBancoDados, frmBancoDados);
    frmBancoDados.ShowModal;
  finally
    frmBancoDados.FreeOnRelease;
  end;
end;

procedure TfrmPrincipal.btnAlterarClick(Sender: TObject);
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
    end;
  end;
end;

procedure TfrmPrincipal.btnExcluirClick(Sender: TObject);
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

//Função que retorna um valor da tabela
function PegaQry(tabela, campo, id : string): real;
var
  query : tfdquery;
begin
  query := tfdquery.create(nil);
  query.connection := dtmPrincipal.conPrincipal;
  try
    with query do begin
      close;
      SQL.clear;
      sql.add('select ' + campo + ' from ' + tabela + ' where id_conf = ' + id);
      open;
      Result := fieldbyname(campo).value;
    end;
  finally
    query.free;
  end;
end;

procedure TfrmPrincipal.btnOSClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmOS, frmOS);
    if frmOS.ShowModal = mrOK then begin
      with dtmPrincipal.qryPrincipal do begin
        Append;
        FieldByName('nm_descricao').value := 'OS ' + frmOS.edtNROs.text;
        FieldByName('vlr_servico').value  := PegaQry('tb_conf', 'vlr_servico', '1');
        FieldByName('fk_nm_usuario').value := 1;
        FieldByName('dt_data').value := dtpPrincipal.Date;
        Post;
        Refresh;
      end;
    end;
  finally
    frmOS.FreeOnRelease;
  end;
end;

procedure TfrmPrincipal.btnVendaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmVenda, frmVenda);
    dtmPrincipal.qryPrincipal.Append;
    if frmVenda.ShowModal = mrok then
      dtmPrincipal.qryPrincipal.Refresh;
  finally
    frmVenda.FreeOnRelease;
  end;
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
    end;
  except
    Application.MessageBox('Banco de dados não encontrado.', 'Erro', mb_ok+MB_ICONERROR );
  end;
end;

end.
