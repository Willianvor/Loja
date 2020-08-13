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
    DateTimePicker1: TDateTimePicker;
    procedure sbtNovaVendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

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

end.
