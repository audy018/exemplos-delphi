unit Form.Get.Dados;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.ListBox, FMX.Layouts, Data.Dados, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, FMX.Grid.Style, Fmx.Bind.Grid, Data.Bind.Grid,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, Data.Bind.Components, Data.Bind.DBScope, FMX.StdCtrls, FMX.Edit,
  System.Actions, FMX.ActnList, FMX.StdActns, FMX.MediaLibrary.Actions;

type
  TfrmGetDados = class(TForm)
    LayoutTabelas: TLayout;
    ComboTabelas: TComboBox;
    ListViewDados: TListView;
    TimerGetTabelas: TTimer;
    BindSourceDB: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    GridDebug: TGrid;
    LinkGridToDataSourceBindSourceDB: TLinkGridToDataSource;
    labelStatus: TLabel;
    AniIndicator: TAniIndicator;
    LayoutCountry: TLayout;
    VertScrollBox: TVertScrollBox;
    buttonCadastraCountry: TButton;
    buttonAlteraCountry: TButton;
    buttonDeletaCountry: TButton;
    editCurrency: TEdit;
    editCountry: TEdit;
    ActionList: TActionList;
    buttonUploadImg: TButton;
    TakePhotoFromLibraryAction1: TTakePhotoFromLibraryAction;
    ToolBar1: TToolBar;
    Button1: TButton;
    ButtonUpload: TButton;
    procedure TimerGetTabelasTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboTabelasChange(Sender: TObject);
    procedure buttonCadastraCountryClick(Sender: TObject);
    procedure buttonAlteraCountryClick(Sender: TObject);
    procedure buttonDeletaCountryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
    procedure ButtonUploadClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  private
    class var
      FInstance: TfrmGetDados;
  public
    class function GetInstance: TfrmGetDados;
  end;


implementation

{$R *.fmx}

uses Form.Upload.Image;

{ TfrmGetClientes }

procedure TfrmGetDados.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmGetDados.buttonAlteraCountryClick(Sender: TObject);
begin
  TdmdDados.GetInstance.AlteraCountry(editCountry.Text, editCurrency.Text);
end;

procedure TfrmGetDados.buttonCadastraCountryClick(Sender: TObject);
begin
  TdmdDados.GetInstance.CadastraCountry(editCountry.Text, editCurrency.Text);
end;

procedure TfrmGetDados.buttonDeletaCountryClick(Sender: TObject);
begin
  TdmdDados.GetInstance.DeletaCountry(editCountry.Text);
end;

procedure TfrmGetDados.ButtonUploadClick(Sender: TObject);
begin
  frmUploadImage.Show;
end;

procedure TfrmGetDados.ComboTabelasChange(Sender: TObject);
begin
  if ComboTabelas.ItemIndex > -1 then
  begin
    ComboTabelas.Enabled := False;
    labelStatus.Text := 'Executando Consulta no servidor...';
    AniIndicator.Visible := True;
    AniIndicator.Enabled := True;
    LinkListControlToField1.FillHeaderFieldName := '';
    LinkListControlToField1.FieldName := '';


    TdmdDados.GetInstance.CarregaTabela(ComboTabelas.Items[ComboTabelas.ItemIndex],
      procedure // Ok
      begin
        if not TdmdDados.GetInstance.memDados.IsEmpty then
        begin
          LinkListControlToField1.FillHeaderFieldName := TdmdDados.GetInstance.memDados.Fields[0].FieldName;
          LinkListControlToField1.FieldName := TdmdDados.GetInstance.memDados.Fields[1].FieldName;

          BindSourceDB.DataSet := TdmdDados.GetInstance.memDados;
          LinkListControlToField1.Active := True;
          LayoutCountry.Visible := ComboTabelas.Items[ComboTabelas.ItemIndex] = 'country';
        end;

        ComboTabelas.Enabled := True;
        AniIndicator.Enabled := False;
        AniIndicator.Visible := False;
        labelStatus.Text := '';
      end,

      procedure // Erro
      begin
        ShowMessage('Algo deu errado');
        ComboTabelas.Enabled := True;
        AniIndicator.Enabled := False;
        AniIndicator.Visible := False;
        labelStatus.Text := '';
        LayoutCountry.Visible := False;
      end);
  end;
end;

procedure TfrmGetDados.FormCreate(Sender: TObject);
begin
  LayoutCountry.Visible := False;
end;

procedure TfrmGetDados.FormShow(Sender: TObject);
begin
  TimerGetTabelas.Enabled := True;
end;

class function TfrmGetDados.GetInstance: TfrmGetDados;
begin
  if not Assigned(FInstance) then
  begin
    FInstance := TfrmGetDados.Create(Application);
  end;

  Result := FInstance;
end;

procedure TfrmGetDados.TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
begin
  TdmdDados.GetInstance.UpLoadImagem(Image);
end;

procedure TfrmGetDados.TimerGetTabelasTimer(Sender: TObject);
begin
  TimerGetTabelas.Enabled := False;
  ComboTabelas.Items.Text := TdmdDados.GetInstance.GetTabelas;
  ComboTabelas.Enabled := ComboTabelas.Items.Count > 0;
end;

end.
