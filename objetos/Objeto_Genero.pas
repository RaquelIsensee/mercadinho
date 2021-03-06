unit Objeto_Genero;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, vcl.dialogs, Unit_Dados, System.Classes;

type
  TCadGenero = class
  private
    id: integer;
    nome: string;
  public
    function getId: integer;
    procedure setId(id: integer);
    function getNome: String;
    procedure setNome(nome: String);

    function insertDados: boolean;
  end;

implementation

{ TCadGenero }

function TCadGenero.getId: integer;
begin
  result:= self.id;
end;

function TCadGenero.getNome: String;
begin
  result:= self.nome;
end;

function TCadGenero.insertDados: boolean;
var
  qr: TFDQuery;
begin
  qr := TFDQuery.Create(nil);
  qr.Connection := DataModule1.FDConnection1;

  qr.SQL.Add('insert into genero values (0, :nome)');

  qr.Params[0].AsString := self.getNome;

  try
    qr.ExecSQL; // servi?o de insert
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

procedure TCadGenero.setId(id: integer);
begin
  self.id:= id;
end;

procedure TCadGenero.setNome(nome: String);
begin
  self.nome:= nome;
end;

end.
