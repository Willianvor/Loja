unit BancoDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ExtCtrls;

type
  TfrmBancoDados = class(TForm)
    pnlDados: TPanel;
    pnlComandos: TPanel;
    Edit1: TEdit;
    OpenTextFileDialog1: TOpenTextFileDialog;
    btnLocalizar: TButton;
    procedure btnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancoDados: TfrmBancoDados;

implementation

{$R *.dfm}

procedure TfrmBancoDados.btnLocalizarClick(Sender: TObject);
begin
  OpenTextFileDialog1.Execute();
end;

end.
