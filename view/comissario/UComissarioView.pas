unit UComissarioView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, UUsuario;

type
  TFormComissario = class(TForm)
    pnlLateral: TPanel;
    imgLogo: TImage;
    pnlLogout: TPanel;
    imgLogout: TImage;
    pnlLogoutText: TPanel;
    pnlCheckIn: TPanel;
    imgCheckIn: TImage;
    pnlCheckInText: TPanel;
    pnlHome: TPanel;
    imgHome: TImage;
    pnlHomeText: TPanel;
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
    pnlCheckOut: TPanel;
    pnlVoos: TPanel;
    imgVoos: TImage;
    pnlVoosText: TPanel;
    procedure pnlLogoutTextClick(Sender: TObject);
    procedure imgLogoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlHomeTextClick(Sender: TObject);
    procedure imgUsuarioClick(Sender: TObject);
    procedure pnlCheckInTextClick(Sender: TObject);
    procedure pnlVoosTextClick(Sender: TObject);
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
  FormComissario: TFormComissario;

implementation

uses ULoginView, UComissarioHomeView, UComissarioVooView, UComissarioCheckInView, UMeusDadosView;

{$R *.dfm}

{ TFormAeroMoc }

constructor TFormComissario.create(aUsuario: TUsuario);
begin
  inherited create(nil);
  usuario := aUsuario;
end;

procedure TFormComissario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if not isLogout then begin
    Application.Terminate;
  end;
end;

procedure TFormComissario.FormCreate(Sender: TObject);
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
  mudarPagina(TFormComissarioHome, pnlHome);
end;

procedure TFormComissario.imgLogoutClick(Sender: TObject);
begin
  logout;
end;

procedure TFormComissario.imgUsuarioClick(Sender: TObject);
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

procedure TFormComissario.logout;
begin
  isLogout := true;
  FormLogin.Show;
  self.Close;
end;

procedure TFormComissario.mudarPagina(form: TFormClass; pnlASelecionar: TPanel);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  if pnlSelecionado <> nil then begin
    pnlSelecionado.Color := $00604C24;
  end;
  formAberto := form.Create(Self);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;

  pnlSelecionado := pnlASelecionar;
  pnlSelecionado.Color := $0048391C;
end;

class procedure TFormComissario.open(aUsuario: TUsuario);
var
  form: TForm;
begin
  form := TFormComissario.create(aUsuario);
  form.Show;
end;

procedure TFormComissario.pnlCheckInTextClick(Sender: TObject);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  if pnlSelecionado <> nil then begin
    pnlSelecionado.Color := $00604C24;
  end;
  formAberto := TFormComissarioCheckIn.create(self, usuario);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;

  pnlSelecionado := pnlCheckIn;
  pnlSelecionado.Color := $0048391C;
end;

procedure TFormComissario.pnlHomeTextClick(Sender: TObject);
begin
  mudarPagina(TFormComissarioHome, pnlHome);
end;

procedure TFormComissario.pnlLogoutTextClick(Sender: TObject);
begin
  logout;
end;

procedure TFormComissario.pnlVoosTextClick(Sender: TObject);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  if pnlSelecionado <> nil then begin
    pnlSelecionado.Color := $00604C24;
  end;
  formAberto := TFormComissarioVoo.create(self, usuario);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;

  pnlSelecionado := pnlVoos;
  pnlSelecionado.Color := $0048391C;
end;

procedure TFormComissario.updateInfoUsuario;
begin
  pnlInfoUsuarioName.Caption := self.usuario.getNome;
  lblCargo.Caption := self.usuario.getCargo;
end;

end.
