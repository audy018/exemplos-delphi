program Server;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Form.Principal.Server in 'Form.Principal.Server.pas' {frmPrincipalServer},
  ServerMethodsUnit1 in 'ServerMethodsUnit1.pas' {ServerMethods1: TDSServerModule},
  ServerContainerUnit1 in 'ServerContainerUnit1.pas' {ServerContainer1: TDataModule},
  WebModuleUnit1 in 'WebModuleUnit1.pas' {WebModule1: TWebModule},
  Classes.Transporte.Pessoa in '..\shared\Classes.Transporte.Pessoa.pas',
  Classe.Transporte in '..\shared\Classe.Transporte.pas',
  Server.Methods.Geral in 'Server.Methods.Geral.pas' {SMGeral: TDSServerModule},
  Server.Methods.Cliente in 'Server.Methods.Cliente.pas' {SMCliente: TDSServerModule},
  Classe.Produtos.Statistica in 'Classe.Produtos.Statistica.pas',
  Classe.Transaction.Blockchain in 'Classe.Transaction.Blockchain.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TfrmPrincipalServer, frmPrincipalServer);
  Application.Run;
end.
