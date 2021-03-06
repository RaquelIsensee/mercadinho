unit Unit_CadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  prMercadinho;

type
  Tfrm_CadProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Enviar: TSpeedButton;
    Sair: TSpeedButton;
    edQuantidade: TLabeledEdit;
    edPreco: TLabeledEdit;
    ComboFornecedor: TComboBox;
    Fornecedor: TLabel;
    edNome: TLabeledEdit;
    procedure SairClick(Sender: TObject);
    procedure EnviarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    function validarCampos: boolean;
    procedure limparTela;
  end;

var
  frm_CadProdutos: Tfrm_CadProdutos;

implementation

uses Unit_Controle, Objeto_Fornecedor;

procedure Tfrm_CadProdutos.EnviarClick(Sender: TObject);
begin
  if (not self.validarCampos) then
    exit;

  if (Form1.Controle.SalvarProduto()) then
    ShowMessage('Produto Cadastrado');
  self.limparTela();;
  exit
end;

procedure Tfrm_CadProdutos.FormActivate(Sender: TObject);
var
  lista_fornecedor: TList;
  I: integer;
begin
  lista_fornecedor:= Form1.Controle.selectFornecedor;
 for I := 0 to lista_fornecedor.Count - 1  do
  begin
    ComboFornecedor.AddItem(TCadFornecedor(lista_fornecedor[I]).getNome, TCadFornecedor(lista_fornecedor[I]));
  end;
end;

procedure Tfrm_CadProdutos.limparTela;
begin
  edNome.Clear;
  edQuantidade.Clear;
  edPreco.Clear;
  ComboFornecedor.ItemIndex := -1;
end;


procedure Tfrm_CadProdutos.SairClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

function Tfrm_CadProdutos.validarCampos: boolean;
begin
  result := true;

  if (edNome.Text = '') then
  begin
    result := false;
    ShowMessage('Entre com o nome!');
    edNome.SetFocus;
    exit;
  end;

  if (edQuantidade.Text = '') then
  begin
    result := false;
    ShowMessage('Entre com a quantidade!');
    edQuantidade.SetFocus;
    exit;
  end;

  if (edPreco.Text = '') then
  begin
    result := false;
    ShowMessage('Entre com o pre?o!');
    edPreco.SetFocus;
    exit;
  end;

  if (ComboFornecedor.ItemIndex = -1) then
  begin
    ShowMessage('Entre com o fornecedor!');
    edPreco.SetFocus;
    exit;
  end;


end;

{$R *.dfm}

end.
