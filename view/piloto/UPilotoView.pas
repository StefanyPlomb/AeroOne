unit UPilotoView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, UUsuario;

type
  TFormPiloto = class(TForm)
    pnlLateral: TPanel;
    imgLogo: TImage;
    pnlLogout: TPanel;
    imgLogout: TImage;
    pnlLogoutText: TPanel;
    pnlIniciarVoo: TPanel;
    imgIniciarVoo: TImage;
    pnlIniciarVooText: TPanel;
    pnlHome: TPanel;
    imgHome: TImage;
    pnlHomeText: TPanel;
    pnlCheckOut: TPanel;
    pnlVoos: TPanel;
    imgVoos: TImage;
    pnlVoosText: TPanel;
    pnlMain: TPanel;
    pnlSuperior: TPanel;
    pnlSuperiorDivisoria: TPanel;
    pnlInfoUsuario: TPanel;
    lblCargo: TLabel;
    pnlInfoUsuarioLabels: TPanel;
    pnlInfoUsuarioBemVindo: TPanel;
    pnlInfoUsuarioName: TPanel;
    pnlMeusDados: TPanel;
    imgUsuario: TImage;
    pnlMainFrame: TPanel;
    procedure pnlLogoutTextClick(Sender: TObject);
    procedure imgLogoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlVoosTextClick(Sender: TObject);
    procedure pnlIniciarVooTextClick(Sender: TObject);
    procedure imgUsuarioClick(Sender: TObject);
    procedure pnlHomeTextClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    usuario: TUsuario;
    isLogout: Boolean;
    formAberto: TForm;
    pnlSelecionado: TPanel;
    procedure updateInfoUsuario;
    procedure logout;
    procedure mudarPagina(form: TFormClass; pnlASelecionar: TPanel);
  public
    { Public declarations }
    class procedure open(aUsuario: TUsuario);
    constructor create(aUsuario: TUsuario);
  end;

var
  FormPiloto: TForm;

implementation

uses UMeusDadosView, UComissarioVooView, ULoginView, UPilotoHomeView, UPilotoVooView, UPilotoIniciarVooView;

{$R *.dfm}

{ TFormPiloto }

constructor TFormPiloto.create(aUsuario: TUsuario);
begin
  inherited create(nil);
  usuario := aUsuario;
end;

procedure TFormPiloto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if not isLogout then begin
    Application.Terminate;
  end;
end;

procedure TFormPiloto.FormCreate(Sender: TObject);
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
  mudarPagina(TFormPilotoHome, pnlHome);
end;

procedure TFormPiloto.imgLogoutClick(Sender: TObject);
begin
  logout;
end;

procedure TFormPiloto.imgUsuarioClick(Sender: TObject);
begin
   if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  if pnlSelecionado <> nil then begin
    pnlSelecionado.Color := $00604C24;
  end;
  formAberto := TFormMeusDados.create(self, usuario);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;

  pnlSelecionado := pnlMeusDados;
  pnlSelecionado.Color := $0048391C;
end;

procedure TFormPiloto.logout;
begin
  isLogout := true;
  FormLogin.Show;
  self.Close;
end;

procedure TFormPiloto.mudarPagina(form: TFormClass; pnlASelecionar: TPanel);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  if pnlSelecionado <> nil then begin
    pnlSelecionado.Color := $00604C24;
  end;
  formAberto := form.Create(Self);
  formAberto.Parent := pnlMainFrame;
  formAberto.Align := alClient;
  formAberto.Show;

  pnlSelecionado := pnlASelecionar;
  pnlSelecionado.Color := $0048391C;
end;

class procedure TFormPiloto.open(aUsuario: TUsuario);
var
  form: TForm;
begin
  form := TFormPiloto.Create(aUsuario);
  form.Show;
end;

procedure TFormPiloto.pnlHomeTextClick(Sender: TObject);
begin
  mudarPagina(TFormPilotoHome, pnlHome);
end;

procedure TFormPiloto.pnlIniciarVooTextClick(Sender: TObject);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  if pnlSelecionado <> nil then begin
    pnlSelecionado.Color := $00604C24;
  end;
  formAberto := TFormPilotoIniciarVoo.create(self, usuario);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;

  pnlSelecionado := pnlIniciarVoo;
  pnlSelecionado.Color := $0048391C;
end;

procedure TFormPiloto.pnlLogoutTextClick(Sender: TObject);
begin
  logout;
end;

procedure TFormPiloto.pnlVoosTextClick(Sender: TObject);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  if pnlSelecionado <> nil then begin
    pnlSelecionado.Color := $00604C24;
  end;
  formAberto := TFormPilotoVoo.create(self, usuario);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;

  pnlSelecionado := pnlVoos;
  pnlSelecionado.Color := $0048391C;
end;

procedure TFormPiloto.updateInfoUsuario;
begin
  pnlInfoUsuarioName.Caption := usuario.getNome;
  lblCargo.Caption := usuario.getCargo;
end;

end.
