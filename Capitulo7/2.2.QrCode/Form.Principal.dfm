object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'QrCode'
  ClientHeight = 367
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 185
    Height = 361
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 57
    ExplicitTop = 128
    ExplicitHeight = 41
    object Label1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 179
      Height = 13
      Align = alTop
      Caption = 'Dados'
      ExplicitWidth = 30
    end
    object memoDados: TMemo
      AlignWithMargins = True
      Left = 3
      Top = 22
      Width = 179
      Height = 89
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 199
      ExplicitWidth = 185
    end
    object buttonGerar: TButton
      AlignWithMargins = True
      Left = 3
      Top = 117
      Width = 179
      Height = 44
      Align = alTop
      Caption = 'Gerar'
      TabOrder = 1
      OnClick = buttonGerarClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 194
    Top = 3
    Width = 381
    Height = 361
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 248
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
    object imageQrCode: TImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 375
      Height = 355
      Align = alClient
      ExplicitLeft = 136
      ExplicitTop = 128
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
  end
end