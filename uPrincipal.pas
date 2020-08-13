unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, BancoDados, uDTM, uVenda;

type
  TfrmPrincipal = class(TForm)
    pnlData: TPanel;
    pnlComandos: TPanel;
    pnlInfo: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    pnlCaixaVLR: TPanel;
    pnlDinheiro: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    sbtNovaVenda: TSpeedButton;
    sbtAlterar: TSpeedButton;
    sbtExcluir: TSpeedButton;
    sbtOs: TSpeedButton;
    gpbData: TGroupBox;
    dtpPrincipal: TDateTimePicker;
    procedure sbtNovaVendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbtExcluirClick(Sender: TObject);
    procedure sbtAlterarClick(Sender: TObject);
    procedure sbtOsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uOS, uAtalhos;

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

end.
