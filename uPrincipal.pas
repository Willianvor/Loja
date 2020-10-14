unit uPrincipal;

interface

uses
    System.Classes, Vcl.Graphics, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBGrids, Vcl.ExtCtrls,
    Vcl.ComCtrls, System.Variants, uDTM, uVenda, Data.DB, Vcl.Grids, Vcl.Buttons,
    System.SysUtils, Vcl.Forms, Winapi.Windows, Winapi.Messages, uOS, uAtalhos, BancoDados,
    Vcl.Controls;

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
    Panel4: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel8: TPanel;
    Panel11: TPanel;
    Label5: TLabel;
    Panel12: TPanel;
    Panel19: TPanel;
    Label9: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label10: TLabel;
    Panel22: TPanel;
    Panel23: TPanel;
    Label11: TLabel;
    Panel24: TPanel;
    Button1: TButton;
    Panel9: TPanel;
    Label4: TLabel;
    Panel10: TPanel;
    procedure sbtNovaVendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbtExcluirClick(Sender: TObject);
    procedure sbtAlterarClick(Sender: TObject);
    procedure sbtOsClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dtpPrincipalChange(Sender: TObject);
    procedure dtpPrincipalCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GridPorData(dtp: TDateTimePicker);
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{TODO:}

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
    end;
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
        FieldByName('vlr_servico').value  := PegaQry(dtmPrincipal.conPrincipal,
        'tb_conf', 'vlr_servico', '1');
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
