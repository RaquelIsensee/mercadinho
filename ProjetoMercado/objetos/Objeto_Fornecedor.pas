unit Objeto_Fornecedor;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, vcl.dialogs, Unit_Dados;

type
  TCadFornecedor = class
  private
    id: integer;
    nome: string;
    cnpj: string;
  public
    function getId: integer;
    procedure setId(id: integer);
    function getNome: string;
    procedure setNome(nome: string);
    function getCnpj: string;
    procedure setCnpj(cnpj: string);

    function insertDados: boolean;
  end;

implementation

{ TCadFornecedor }

function TCadFornecedor.insertDados: boolean;
var
  qr: TFDQuery;
begin
  qr := TFDQuery.Create(nil);
  qr.Connection := DataModule1.FDConnection1;

  qr.SQL.Add('insert into fornecedor values (0, :nome, :cnpj)');

  qr.Params[0].AsString := self.getNome;
  qr.Params[1].AsString := self.getCnpj;

  try
    qr.ExecSQL; // serviço de insert
    result := true;
  except
    on e: exception do
    begin
      result := false;
      showMessage('Erro de inserção: ' + e.ToString);
    end;
  end;

  qr.Close;
  qr.Free;
end;

function TCadFornecedor.getCnpj: string;
begin
  result := self.cnpj;
end;

function TCadFornecedor.getId: integer;
begin
  result := self.id;
end;

function TCadFornecedor.getNome: string;
begin
  result := self.nome;
end;

procedure TCadFornecedor.setCnpj(cnpj: string);
begin
  self.cnpj := cnpj;
end;

procedure TCadFornecedor.setId(id: integer);
begin
  self.id := id;
end;

procedure TCadFornecedor.setNome(nome: string);
begin
  self.nome := nome;
end;

end.
