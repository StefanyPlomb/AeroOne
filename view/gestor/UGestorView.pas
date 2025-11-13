unit UGestorView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, UUsuario;

type
  TFormGestor = class(TForm)
    pnlLateral: TPanel;
    pnlMain: TPanel;
    pnlSuperior: TPanel;
    pnlLogout: TPanel;
    imgLogout: TImage;
    imgLogo: TImage;
    pnlLogoutText: TPanel;
    pnlFuncionarios: TPanel;
    imgFuncionarios: TImage;
    pnlFuncionariosText: TPanel;
    pnlRelatorios: TPanel;
    imgRelatorios: TImage;
    pnlRelatoriosText: TPanel;
    pnlVoos: TPanel;
    imgVoos: TImage;
    pnlVoosText: TPanel;
    pnlSuperiorDivisoria: TPanel;
    pnlInfoUsuario: TPanel;
    lblCargo: TLabel;
    pnlInfoUsuarioLabels: TPanel;
    pnlInfoUsuarioBemVindo: TPanel;
    pnlInfoUsuarioName: TPanel;
    imgUsuario: TImage;
    pnlDivRelatorios: TPanel;
    pnlDivHome: TPanel;
    pnlDivFuncionarios: TPanel;
    pnlHome: TPanel;
    imgHome: TImage;
    pnlHomeText: TPanel;
    pnlDivVoos: TPanel;
    pnlMainFrame: TPanel;
    procedure pnlLogoutTextClick(Sender: TObject);
    procedure imgLogoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlFuncionariosTextClick(Sender: TObject);
    procedure pnlRelatoriosTextClick(Sender: TObject);
    procedure pnlVoosTextClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgUsuarioClick(Sender: TObject);
    procedure pnlHomeTextClick(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
    isLogout: Boolean;
    formAberto: TForm;
    procedure updateInfoUsuario;
    procedure logout;
    procedure abrirForm(form: TFormClass);
  public
    { Public declarations }
    class procedure open(aUsuario: TUsuario);
    constructor create(aUsuario: TUsuario);
  end;

var
  FormGestor: TFormGestor;

implementation

uses ULoginView, UGestorHomeView, UGestorFuncionarioView, UGestorRelatorioView, UGestorVooView, UMeusDadosView;

{$R *.dfm}

{ TFormGestor }

procedure TFormGestor.abrirForm(form: TFormClass);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  formAberto := form.Create(Self);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;
end;

constructor TFormGestor.create(aUsuario: TUsuario);
begin
  inherited create(nil);
  usuario := aUsuario;
end;

procedure TFormGestor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if not isLogout then begin
    Application.Terminate;
  end;
end;

procedure TFormGestor.FormCreate(Sender: TObject);
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

procedure TFormGestor.imgLogoutClick(Sender: TObject);
begin
  logout;
end;

procedure TFormGestor.pnlLogoutTextClick(Sender: TObject);
begin
  logout;
end;

procedure TFormGestor.imgUsuarioClick(Sender: TObject);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  formAberto := TFormMeusDados.create(self, usuario);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;
end;

procedure TFormGestor.logout;
begin
  isLogout := true;
  FormLogin.Show;
  self.Close;
end;

class procedure TFormGestor.open(aUsuario: TUsuario);
var
  form: TForm;
begin
  form := TFormGestor.Create(aUsuario);
  form.Show;
end;

procedure TFormGestor.pnlFuncionariosTextClick(Sender: TObject);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  formAberto := TFormGestorFuncionario.create(self, usuario);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;
end;

procedure TFormGestor.pnlHomeTextClick(Sender: TObject);
begin
  abrirForm(TFormGestorHome);
end;

procedure TFormGestor.pnlRelatoriosTextClick(Sender: TObject);
begin
  abrirForm(TFormGestorRelatorio);
end;

procedure TFormGestor.pnlVoosTextClick(Sender: TObject);
begin
  abrirForm(TFormGestorVoo);
end;

procedure TFormGestor.updateInfoUsuario;
begin
  pnlInfoUsuarioName.Caption := self.usuario.getNome;
  lblCargo.Caption := self.usuario.getCargo;
end;

end.
