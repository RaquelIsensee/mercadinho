unit Objeto_Produto;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, vcl.dialogs, Unit_Dados, Objeto_Fornecedor;

type
  TCadProduto = class
  private
    id: integer;
    nome: string;
    quantidade: string;
    preco: double;
    fornecedor: TCadFornecedor;

  public
    function getId: integer;
    procedure setId(id: integer);
    function getNome: string;
    procedure setNome(nome: string);
    function getQuantidade: string;
    procedure setQuantidade(quantidade: string);
    function getPreco: double;
    procedure setPreco(preco: double);
    function getFornecedor: TCadFornecedor;
    procedure setFornecedor(fornecedor: TCadFornecedor);

    function insertDados: boolean;
  end;

implementation

function TCadProduto.insertDados: boolean;
var
  qr: TFDQuery;
begin
  qr := TFDQuery.Create(nil);
  qr.Connection := DataModule1.FDConnection1;

  qr.SQL.Add('insert into produto values (0, :nome, :quantidade, :preco, :fornecedor)');

  qr.Params[0].AsString := self.getNome;
  qr.Params[1].AsString := self.getQuantidade;
  qr.Params[2].AsFloat := self.getPreco;
  qr.Params[3].AsInteger := self.getFornecedor.getId;

  try
    qr.ExecSQL;
    result := true;
  except
    on e: exception do
    begin
      result := false;
      showMessage('Erro de inser??o: ' + e.ToString);
    end;
  end;

  qr.Close;
  qr.Free;
end;

function TCadProduto.getFornecedor: TCadFornecedor;
begin
  result := self.fornecedor;
end;

function TCadProduto.getId: integer;
begin
  result := self.id;
end;

procedure TCadProduto.setFornecedor(fornecedor: TCadFornecedor);
begin
   self.fornecedor := fornecedor;
end;

procedure TCadProduto.setId(id: integer);
begin
  self.id := id;
end;

function TCadProduto.getNome: string;
begin
  result := self.nome;
end;

function TCadProduto.getPreco: double;
begin
  result := self.preco;
end;

procedure TCadProduto.setNome(nome: string);
begin
  self.nome := nome;
end;

procedure TCadProduto.setPreco(preco: double);
begin
  self.preco := preco;
end;

procedure TCadProduto.setQuantidade(quantidade: string);
begin
  self.quantidade := quantidade;
end;

function TCadProduto.getQuantidade: string;
begin
  result := self.quantidade;
end;

end.
