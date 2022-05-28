program prMercado;

uses
  Vcl.Forms,
  prMercadinho in '..\units\prMercadinho.pas' {Form1},
  Unit_Dados in '..\dados\Unit_Dados.pas' {DataModule1: TDataModule},
  Objeto_Fornecedor in '..\objetos\Objeto_Fornecedor.pas',
  Unit_CadFornecedor in '..\fontes\Unit_CadFornecedor.pas' {frm_CadFornecedor},
  Unit_Controle in '..\controle\Unit_Controle.pas',
  Objeto_Produto in '..\objetos\Objeto_Produto.pas',
  Unit_CadProdutos in '..\fontes\Unit_CadProdutos.pas' {frm_CadProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
