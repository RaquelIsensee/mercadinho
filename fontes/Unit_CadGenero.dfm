object frm_CadGenero: Tfrm_CadGenero
  Left = 0
  Top = 0
  Caption = 'Cadastro de G'#234'nero'
  ClientHeight = 177
  ClientWidth = 228
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
    Left = 0
    Top = 8
    Width = 633
    Height = 81
    TabOrder = 0
    object bEnviar: TSpeedButton
      Left = 32
      Top = 24
      Width = 65
      Height = 22
      Caption = 'Enviar'
      OnClick = bEnviarClick
    end
    object bSair: TSpeedButton
      Left = 144
      Top = 24
      Width = 65
      Height = 22
      Caption = 'Sair'
      OnClick = bSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 71
    Width = 633
    Height = 196
    TabOrder = 1
    object edGenero: TLabeledEdit
      Left = 24
      Top = 40
      Width = 121
      Height = 21
      EditLabel.Width = 80
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Genero'
      TabOrder = 0
    end
  end
end
