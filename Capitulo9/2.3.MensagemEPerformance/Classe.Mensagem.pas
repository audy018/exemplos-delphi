unit Classe.Mensagem;

interface

type
  TMensagem = class
    class procedure Aviso(pTexto: string);
    class procedure Erro(pTexto: string; pAbort: Boolean);
    class function Confirmacao(pTexto: string): Boolean;
  end;

implementation

uses Vcl.Forms, WinAPI.Windows, Vcl.Dialogs, System.SysUtils;

{ TMensagem }

class procedure TMensagem.Aviso(pTexto: string);
begin
  Application.MessageBox(PChar(pTexto), 'Aten��o', MB_OK + MB_ICONINFORMATION + MB_DEFBUTTON1);
//  MessageDlg(pTexto, TMsgDlgType.mtInformation, [mbOK], 0);
//  MessageBox(0, 'Aten��o: Informa��o Y', 'Aten��o', MB_OK + MB_ICONINFORMATION + MB_DEFBUTTON1);
end;

class function TMensagem.Confirmacao(pTexto: string): Boolean;
begin
  Result := Application.MessageBox(PChar(pTexto), 'Confirma��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES;
end;

class procedure TMensagem.Erro(pTexto: string; pAbort: Boolean);
begin
  Application.MessageBox(PChar(pTexto), 'Aten��o', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1);

  if pAbort then
    Abort;

end;

end.
