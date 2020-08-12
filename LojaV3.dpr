program LojaV3;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDTM in 'uDTM.pas' {dtmPrincipal: TDataModule},
  BancoDados in 'Menu\Arquivo\BancoDados.pas' {frmBancoDados},
  uVenda in 'uVenda.pas' {frmVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.CreateForm(TfrmBancoDados, frmBancoDados);
  Application.Run;
end.
