unit BancoDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ExtCtrls,
  uDTM;

type
  TfrmBancoDados = class(TForm)
    pnlDados: TPanel;
    pnlComandos: TPanel;
    edtCaminhoBanco: TEdit;
    OpenTextFileDialog1: TOpenTextFileDialog;
    btnLocalizar: TButton;
    btnSalvar: TButton;
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  if OpenTextFileDialog1.Execute then
    edtCaminhoBanco.Text := OpenTextFileDialog1.FileName;
end;

procedure TfrmBancoDados.btnSalvarClick(Sender: TObject);
var
  salvar : TStringList;
begin
  salvar := TStringList.Create();
  try
    salvar.Add(edtCaminhoBanco.Text);
    salvar.SaveToFile(ExtractFilePath(Application.ExeName)+'Conf\CaminhoBanco.txt');
  finally
    salvar.Free;
  end;
  try
    with dtmPrincipal do begin
      conPrincipal.Params.Database := edtCaminhoBanco.Text;
      conPrincipal.Connected := True;
      qryPrincipal.Active := True;
    end;
  finally
    ModalResult := mrOk;
  end;
end;

procedure TfrmBancoDados.FormShow(Sender: TObject);
var
  abrirTXT : TStringStream;
begin
  abrirTXT := TStringStream.Create();
  abrirTXT.LoadFromFile(ExtractFilePath(Application.ExeName)+'Conf\CaminhoBanco.txt');
  edtCaminhoBanco.Text := abrirTXT.DataString;
end;

end.
