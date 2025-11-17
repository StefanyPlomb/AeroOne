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
    DBGridVoosDisponiveis: TDBGrid;
    pnlVoosAtribuidos: TPanel;
    DBGridVoosAtribuidos: TDBGrid;
    pnlVoosDisponiveis: TPanel;
    pnlLogout: TPanel;
    imgLogout: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgLogoutClick(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
    isLogout: Boolean;
    formAberto: TForm;
    procedure logout;
    procedure updateInfoUsuario;
  public
    { Public declarations }
    class procedure open(aUsuario: TUsuario);
    constructor create(aUsuario: TUsuario);
  end;

var
  FormPassageiro: TFormPassageiro;

implementation

uses ULoginView;

{$R *.dfm}

constructor TFormPassageiro.create(aUsuario: TUsuario);
begin
  inherited create(nil);
  usuario := aUsuario;
end;

procedure TFormPassageiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if not isLogout then begin
    Application.Terminate;
  end;
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
  isLogout := false;
  formAberto := nil;
  updateInfoUsuario;
end;

procedure TFormPassageiro.imgLogoutClick(Sender: TObject);
begin
  logout;
end;

procedure TFormPassageiro.logout;
begin
  isLogout := true;
  FormLogin.Show;
  self.Close;
end;

class procedure TFormPassageiro.open(aUsuario: TUsuario);
var
  form: TForm;
begin
  form := TFormPassageiro.Create(aUsuario);
  form.Show;
end;

procedure TFormPassageiro.updateInfoUsuario;
var
  nome: String;
begin
  nome := Trim(usuario.getNome);
  if nome.Contains(' ') then begin
    nome.Substring(0, nome.IndexOf(' '));
  end;

  pnlInfoUsuarioName.Caption := nome;
end;

end.
