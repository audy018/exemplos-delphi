unit Form.Exemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmExemplo = class(TForm)
    buttonTest: TButton;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    Edit1: TEdit;
    procedure buttonTestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

procedure TfrmExemplo.buttonTestClick(Sender: TObject);
begin
  Caption := TimeToStr(Now);
  Image1.Picture.LoadFromFile(Edit1.Text);
end;

end.
