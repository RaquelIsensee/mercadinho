unit prMercadinho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Menus, Unit_Controle;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Cadastr1: TMenuItem;
    procedure Cadastr1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Controle : TControle
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses Unit_Dados, Unit_CadFornecedor;

procedure TForm1.Cadastr1Click(Sender: TObject);
begin
  Controle.getFornecedor
end;

end.
