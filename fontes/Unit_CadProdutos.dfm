object frm_CadProdutos: Tfrm_CadProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 377
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 0
    Width = 633
    Height = 97
    TabOrder = 0
    object Enviar: TSpeedButton
      Left = 72
      Top = 48
      Width = 65
      Height = 22
      Caption = 'Enviar'
      OnClick = EnviarClick
    end
    object Sair: TSpeedButton
      Left = 256
      Top = 48
      Width = 57
      Height = 22
      Caption = 'Sair'
      OnClick = SairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 103
    Width = 657
    Height = 280
    TabOrder = 1
    object Fornecedor: TLabel
      Left = 64
      Top = 157
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object edQuantidade: TLabeledEdit
      Left = 64
      Top = 72
      Width = 121
      Height = 21
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade'
      TabOrder = 0
    end
    object edPreco: TLabeledEdit
      Left = 64
      Top = 120
      Width = 121
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Preco'
      TabOrder = 1
    end
    object ComboFornecedor: TComboBox
      Left = 64
      Top = 176
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 2
    end
    object edNome: TLabeledEdit
      Left = 64
      Top = 16
      Width = 121
      Height = 25
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 3
    end
  end
end
