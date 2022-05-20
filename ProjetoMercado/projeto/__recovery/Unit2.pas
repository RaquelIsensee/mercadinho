unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tfrm_ConsultFornecedor = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Enviar: TSpeedButton;
    Sair: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultFornecedor: Tfrm_ConsultFornecedor;

implementation

{$R *.dfm}

end.
