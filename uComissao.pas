unit uComissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, uDTM, Vcl.Buttons, uGerarComissao;

type
  TfrmComissoes = class(TForm)
    pnlComandos: TPanel;
    DBGrid1: TDBGrid;
    sbtAdicionar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure sbtAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComissoes: TfrmComissoes;

implementation

{$R *.dfm}

procedure TfrmComissoes.FormShow(Sender: TObject);
begin
  with dtmPrincipal.qryComissao do begin
    Close;
    SQL.Clear;
    SQL.Add('select dt_pagamento, id_comissionado, nm_usuario, dt_inicio_comissao, dt_final_comissao,');
    SQL.Add('nr_porcentagem, vlr_comissao, vlr_adicionar, vlr_deduzir, vlr_total, nm_observacoes from tb_comissao');
    SQL.Add('inner join tb_usuario');
    SQL.Add('ON tb_usuario.id_usuario = tb_comissao.id_comissionado');
    Open();
  end;
end;

procedure TfrmComissoes.sbtAdicionarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmGerarComissao, frmGerarComissao);
    dtmPrincipal.qryComissao.Append;
    if frmGerarComissao.ShowModal = mrok then
      dtmPrincipal.qryComissao.Refresh;
  finally
    frmGerarComissao.FreeOnRelease;
  end;
end;

end.
