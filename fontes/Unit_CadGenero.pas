unit Unit_CadGenero;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, prMercadinho;

type
  Tfrm_CadGenero = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bEnviar: TSpeedButton;
    bSair: TSpeedButton;
    edGenero: TLabeledEdit;
    procedure bSairClick(Sender: TObject);
    procedure limparTela;
    procedure bEnviarClick(Sender: TObject);
    function validarCampos: boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadGenero: Tfrm_CadGenero;

implementation

{$R *.dfm}

procedure Tfrm_CadGenero.bEnviarClick(Sender: TObject);
begin
  if (not self.validarCampos) then
    exit;

  if (Form1.Controle.SalvarGenero()) then
    ShowMessage('Genero Cadastrado');
  self.limparTela();;
  exit
end;

procedure Tfrm_CadGenero.bSairClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfrm_CadGenero.limparTela;
begin
  edGenero.Clear;
end;

function Tfrm_CadGenero.validarCampos;
begin
  result := true;
  if (edGenero.Text = '') then
  begin
    result := false;
    ShowMessage('Entre com o nome do Genero!');
    edGenero.SetFocus;
    exit;
  end;
end;

end.
