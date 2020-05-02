object frmPesquisa: TfrmPesquisa
  Left = 0
  Top = 0
  Margins.Top = 8
  Margins.Bottom = 8
  Caption = 'Pesquisar'
  ClientHeight = 380
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFiltros: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 563
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 16
    ExplicitWidth = 185
    object EditPesquisa: TButtonedEdit
      AlignWithMargins = True
      Left = 4
      Top = 9
      Width = 555
      Height = 23
      Margins.Top = 8
      Margins.Bottom = 8
      Align = alClient
      Images = dmdImagens.ImageList1
      RightButton.ImageIndex = 0
      RightButton.Visible = True
      TabOrder = 0
      TextHint = 'Pesquisar...'
      OnRightButtonClick = EditPesquisaRightButtonClick
      ExplicitLeft = 224
      ExplicitTop = 8
      ExplicitWidth = 121
      ExplicitHeight = 21
    end
  end
  object PanelDados: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 563
    Height = 272
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 168
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 561
      Height = 251
      Align = alClient
      DataSource = dtsPesquisa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
    object StatusBarQtd: TStatusBar
      Left = 1
      Top = 252
      Width = 561
      Height = 19
      Panels = <
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 200
        end>
      ExplicitLeft = 280
      ExplicitTop = 128
      ExplicitWidth = 0
    end
  end
  object PanelControles: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 328
    Width = 563
    Height = 49
    Align = alBottom
    TabOrder = 2
    object ButtonCancelar: TBitBtn
      AlignWithMargins = True
      Left = 472
      Top = 4
      Width = 87
      Height = 41
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 0
    end
    object buttonSelecionar: TBitBtn
      AlignWithMargins = True
      Left = 380
      Top = 4
      Width = 86
      Height = 41
      Align = alRight
      Caption = '&Selecionar'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = buttonSelecionarClick
      ExplicitLeft = 392
    end
  end
  object dtsPesquisa: TDataSource
    OnStateChange = dtsPesquisaStateChange
    Left = 432
    Top = 104
  end
end
