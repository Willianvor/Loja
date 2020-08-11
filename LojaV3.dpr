program LojaV3;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uDTM in 'uDTM.pas' {dtmPrincipal: TDataModule},
  BancoDados in 'Menu\Arquivo\BancoDados.pas' {frmBancoDados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.CreateForm(TfrmBancoDados, frmBancoDados);
  Application.Run;
end.
