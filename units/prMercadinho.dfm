object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 219
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 120
    Top = 56
    object N1: TMenuItem
      Caption = 'Cadastro'
      object Cadastr1: TMenuItem
        Caption = 'Fornecedor'
        OnClick = Cadastr1Click
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
        OnClick = Produto1Click
      end
      object Genero: TMenuItem
        Caption = 'Genero'
        OnClick = GeneroClick
      end
    end
  end
end
