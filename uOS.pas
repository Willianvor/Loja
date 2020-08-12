unit uOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmOS = class(TForm)
    pnlComandos: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    lblNrOS: TLabel;
    edtNrOS: TEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOS: TfrmOS;

implementation

{$R *.dfm}

procedure TfrmOS.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmOS.btnSalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
