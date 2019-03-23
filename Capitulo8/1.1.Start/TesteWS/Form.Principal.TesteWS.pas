unit Form.Principal.TesteWS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FachadaWSSGS1, Soap.XSBuiltIns;

type
  TfrmPrincipalTesteWS = class(TForm)
    MemoLog: TMemo;
    Panel1: TPanel;
    ButtonGetWS: TButton;
    procedure ButtonGetWSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipalTesteWS: TfrmPrincipalTesteWS;

implementation

{$R *.dfm}

{
10813	D�lar (compra)
21619	Euro (venda)
21620	Euro (compra)
21621	Iene (venda)
21622	Iene (compra)
21623	Libra esterlina (venda)
21624	Libra esterlina (compra)
21625	Franco Su��o (venda)
21626	Franco Su��o (compra)
21627	Coroa Dinamarquesa (venda)
21628	Coroa Dinamarquesa (compra)
21629	Coroa Norueguesa (venda)
21630	Coroa Norueguesa (compra)
21631	Coroa Sueca (venda)
21632	Coroa Sueca (compra)
21633	D�lar Australiano (venda)
21634	D�lar Australiano (compra)
21635	D�lar Canadense (venda)
21636	D�lar Canadense (compra)
}

procedure TfrmPrincipalTesteWS.ButtonGetWSClick(Sender: TObject);
var
  lWS: FachadaWSSGS;
  lResultado: TXSDecimal; // Soap.XSBuiltIns
begin
  lWS := GetFachadaWSSGS;
  lResultado := lWS.getValor(10813, FormatDateTime('dd/mm/yyyy', Now -1 ));
  MemoLog.Lines.Add('Resultado WS: ' + lResultado.DecimalString);
end;

end.
