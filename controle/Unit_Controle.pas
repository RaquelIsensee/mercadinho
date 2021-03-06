unit Unit_Controle;

interface

uses System.sysutils, System.Classes;

type
  TControle = class
  private
  public
    function SalvarFornecedor: Boolean;
    function SalvarProduto: Boolean;
    function SalvarGenero: Boolean;
    function selectFornecedor: TList;
    procedure getFornecedor;
    procedure getProduto;
    procedure getGenero;
  end;

implementation

uses Objeto_Fornecedor, Unit_CadFornecedor, Objeto_Produto, Unit_CadProdutos, Objeto_Genero, Unit_CadGenero;

function TControle.SalvarFornecedor: Boolean;
var
  CadFornecedor: TCadFornecedor;
begin
  CadFornecedor := TCadFornecedor.Create;
  CadFornecedor.setNome(frm_CadFornecedor.edNome.Text);
  CadFornecedor.setCnpj(frm_CadFornecedor.edCnpj.Text);

  CadFornecedor.insertDados;
  result := true;
end;

function TControle.SalvarGenero: Boolean;
var
  CadGenero: TCadGenero;
begin
  CadGenero:= TCadGenero.Create;
  CadGenero.setNome(frm_CadGenero.edGenero.Text);

  CadGenero.insertDados;
  result:= true;
end;

function TControle.SalvarProduto: Boolean;
var
  CadProduto: TCadProduto;
begin
  CadProduto := TCadProduto.Create;
  CadProduto.setNome(frm_CadProdutos.edNome.Text);
  CadProduto.setQuantidade(frm_CadProdutos.edQuantidade.Text);
  CadProduto.setPreco(StrToFloat(frm_CadProdutos.edPreco.Text));
  CadProduto.setFornecedor(TCadFornecedor(
    frm_CadProdutos.ComboFornecedor.Items.Objects[frm_CadProdutos.ComboFornecedor.ItemIndex]));

  CadProduto.insertDados;
  result := true;
end;

function TControle.selectFornecedor: TList;
var
  lista_fornecedor: TList;
  CadFornecedor: TCadFornecedor;
begin
  CadFornecedor:= TCadFornecedor.Create;

  lista_fornecedor:= CadFornecedor.getDados;
  result := lista_fornecedor;
end;

procedure TControle.getFornecedor;
begin
  if (frm_CadFornecedor = nil) then
    frm_CadFornecedor := Tfrm_CadFornecedor.Create(nil);

  frm_CadFornecedor.ShowModal;
  FreeAndNil(frm_CadFornecedor);
end;

procedure TControle.getGenero;
begin
  if(frm_CadGenero = nil) then
    frm_CadGenero := Tfrm_CadGenero.Create(nil);

  frm_CadGenero.ShowModal;
  FreeAndNil(frm_CadGenero);
end;

procedure TControle.getProduto;
begin
  if (frm_CadProdutos = nil) then
    frm_CadProdutos := Tfrm_CadProdutos.Create(nil);

  frm_CadProdutos.ShowModal;
  FreeAndNil(frm_CadProdutos);
end;

end.
