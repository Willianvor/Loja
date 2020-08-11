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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

procedure TfrmVenda.FormShow(Sender: TObject);
begin
  dtpDataVenda.Date := Now;
end;

end.
