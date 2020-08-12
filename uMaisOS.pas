unit uMaisOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmMaisOS = class(TForm)
    pnlComandos: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    DBEdit1: TDBEdit;
    lblNrOS: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMaisOS: TfrmMaisOS;

implementation

{$R *.dfm}

end.
