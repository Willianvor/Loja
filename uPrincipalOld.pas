unit uPrincipalOld;

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
  TfrmPrincipalOld = class(TForm)
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
  private
    { Private declarations }
  public
    procedure CarregaDescricao(combo: TDBComboBox; campo, tabela : string);
    { Public declarations }
  end;

var
  frmPrincipalOld: TfrmPrincipalOld;

implementation

{$R *.dfm}

uses BancoDados;



procedure TfrmPrincipalOld.CarregaDescricao(combo : TDBComboBox; campo, tabela : string);
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

procedure TfrmPrincipalOld.BancodeDadosRede1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBancoDados, frmBancoDados);
    frmBancoDados.ShowModal;
  finally
    frmBancoDados.FreeOnRelease;
  end;
end;

end.
