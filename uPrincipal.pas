unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, uDTM, Vcl.ComCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Menus,
  BancoDados;

type
  TfrmPrincipal = class(TForm)
    pnlData: TPanel;
    pnlGrid: TPanel;
    pnlInfos: TPanel;
    pnlComandos: TPanel;
    lblDATA: TLabel;
    DateTimePicker1: TDateTimePicker;
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
    bitNovaVenda: TBitBtn;
    bitOS: TBitBtn;
    bitImpressão: TBitBtn;
    mnuPrincipal: TMainMenu;
    Arquivo: TMenuItem;
    BancodedadosRede: TMenuItem;
    procedure BancodedadosRedeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.BancodedadosRedeClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBancoDados, frmBancoDados);
    frmBancoDados.ShowModal;
  finally
    frmBancoDados.FreeOnRelease;
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  abrirTXT : TStringStream;
begin
  abrirTXT := TStringStream.Create();
  abrirTXT.LoadFromFile(ExtractFilePath(Application.ExeName)+'Conf\CaminhoBanco.txt');
  with dtmPrincipal do begin
    conPrincipal.Params.Database := abrirTXT.DataString;
    conPrincipal.Connected := True;
    qryPrincipal.Active := True;
  end;
end;

end.
