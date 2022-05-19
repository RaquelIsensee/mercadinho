unit Unit_CadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrm_CadFornecedor = class(TForm)
    Panel2: TPanel;
    edNome: TLabeledEdit;
    edCnpj: TLabeledEdit;
    Panel1: TPanel;
    Enviar: TSpeedButton;
    Sair: TSpeedButton;
    procedure EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function validarCampos: boolean;
  end;

var
  frm_CadFornecedor: Tfrm_CadFornecedor;

implementation

uses Unit_Controle;

function Tfrm_CadFornecedor.validarCampos: boolean;
begin
  result := true;

  if (edNome.Text = '') then
  begin
    result := false;
    ShowMessage('Entre com o nome!');
    edNome.SetFocus;
    exit;
  end;

  if (edCnpj.Text = '') then
  begin
    result := false;
    ShowMessage('Entre com o Cnpj!');
    edCnpj.SetFocus;
    exit;
  end;

end;

{$R *.dfm}

procedure Tfrm_CadFornecedor.EnviarClick(Sender: TObject);
begin
if (not self.validarCampos) then
exit;

end;
end.

