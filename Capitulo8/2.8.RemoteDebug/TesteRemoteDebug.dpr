program TesteRemoteDebug;

uses
  Vcl.Forms,
  Form.Principal in 'Form.Principal.pas' {frmPrincipal},
  Classe.Remote.Debug in 'Classe.Remote.Debug.pas',
  Classe.Helper.ZipFile in 'Classe.Helper.ZipFile.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
