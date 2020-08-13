program LojaV3;

uses
  Vcl.Forms,
  uPrincipalOld in 'uPrincipalOld.pas' {frmPrincipalOld},
  uDTM in 'uDTM.pas' {dtmPrincipal: TDataModule},
  BancoDados in 'Menu\Arquivo\BancoDados.pas' {frmBancoDados},
  uVenda in 'uVenda.pas' {frmVenda},
  uOS in 'uOS.pas' {frmOS},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.CreateForm(TfrmBancoDados, frmBancoDados);
  Application.CreateForm(TfrmOS, frmOS);
  Application.Run;
end.
