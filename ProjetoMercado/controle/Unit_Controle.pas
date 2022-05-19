unit Unit_Controle;

interface
uses System.sysutils;

type
  TControle = class
  private
  public
    function SalvarFornecedor: Boolean;
    procedure getFornecedor;
  end;

implementation

uses Objeto_Fornecedor, Unit_CadFornecedor;

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

procedure TControle.getFornecedor;
begin
if (frm_CadFornecedor = nil) then
frm_CadFornecedor := Tfrm_CadFornecedor.Create(nil);



frm_CadFornecedor.ShowModal;
FreeAndNil(frm_CadFornecedor);
end;

end.
