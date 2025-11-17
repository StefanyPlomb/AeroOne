unit UPassageiroView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, UUsuario, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormPassageiro = class(TForm)
    pnlMain: TPanel;
    pnlSuperior: TPanel;
    imgUsuario: TImage;
    pnlInfoUsuario: TPanel;
    imgLogo: TImage;
    edtSearch: TEdit;
    imgSearch: TImage;
    pnlInfoUsuarioName: TPanel;
    pnlLateral: TPanel;
    pnlConectarDesconectar: TPanel;
    imgConectarDesconectarGreen: TImage;
    imgConectarDesconectarWhite: TImage;
    pnlMainFrame: TPanel;
    DBGridVoos: TDBGrid;
    pnlVoosAtribuidos: TPanel;
    DBGridVoosAtribuidos: TDBGrid;
    pnlVoosDisponiveis: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    usuario: TUsuario;
    procedure updateInfoUsuario;
  public
    { Public declarations }
    class procedure open(aUsuario: TUsuario);
    constructor create(aUsuario: TUsuario);
  end;

var
  FormPassageiro: TFormPassageiro;

implementation

{$R *.dfm}

constructor TFormPassageiro.create(aUsuario: TUsuario);
begin
  inherited create(nil);
  usuario := aUsuario;
end;

procedure TFormPassageiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormPassageiro.FormCreate(Sender: TObject);
var
  exStyle: LongInt;
begin
  exStyle := GetWindowLong(Handle, GWL_EXSTYLE);
  exStyle := exStyle or WS_EX_APPWINDOW;
  exStyle := exStyle and not WS_EX_TOOLWINDOW;
  SetWindowLong(Handle, GWL_EXSTYLE, exStyle);
  ShowWindow(Handle, SW_SHOW);
end;

class procedure TFormPassageiro.open(aUsuario: TUsuario);
var
  form: TForm;
begin
  form := TFormPassageiro.Create(aUsuario);
  form.Show;
end;

procedure TFormPassageiro.updateInfoUsuario;
begin
  pnlInfoUsuarioName.Caption := self.usuario.getNome;
end;

end.
