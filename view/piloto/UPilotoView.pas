unit UPilotoView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, UConn, UMeusDadosView, UComissarioVooView, ULoginView, UUsuario;

type
  TFormPiloto = class(TForm)
    pnlLateral: TPanel;
    imgLogo: TImage;
    pnlLogout: TPanel;
    imgLogout: TImage;
    pnlLogoutText: TPanel;
    pnlCheckIn: TPanel;
    imgCheckIn: TImage;
    pnlCheckInText: TPanel;
    pnlVoos: TPanel;
    imgVoos: TImage;
    pnlVoosText: TPanel;
    pnlDiv2: TPanel;
    pnlDiv1: TPanel;
    pnlMain: TPanel;
    pnlSuperior: TPanel;
    imgUsuario: TImage;
    pnlSuperiorDivisoria: TPanel;
    pnlInfoUsuario: TPanel;
    lblCargo: TLabel;
    pnlInfoUsuarioLabels: TPanel;
    pnlInfoUsuarioBemVindo: TPanel;
    pnlInfoUsuarioName: TPanel;
    pnlHome: TPanel;
    imgHome: TImage;
    pnlHomeText: TPanel;
    pnlDiv3: TPanel;
    procedure pnlLogoutTextClick(Sender: TObject);
    procedure imgLogoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
    procedure updateInfoUsuario;
    procedure logout;
  public
    { Public declarations }
    class procedure open(aUsuario: TUsuario);
    constructor create(aUsuario: TUsuario);
  end;

var
  FormPiloto: TForm;

implementation

{$R *.dfm}

{ TFormPiloto }

constructor TFormPiloto.create(aUsuario: TUsuario);
begin
  inherited create(nil);
  usuario := aUsuario;
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
end;

procedure TFormPiloto.imgLogoutClick(Sender: TObject);
begin
  logout;
end;

procedure TFormPiloto.logout;
begin
  FormLogin.Show;
  self.Close;
end;

class procedure TFormPiloto.open(aUsuario: TUsuario);
var
  form: TForm;
begin
  form := TFormPiloto.Create(aUsuario);
  form.Show;
end;

procedure TFormPiloto.pnlLogoutTextClick(Sender: TObject);
begin
  logout;
end;

procedure TFormPiloto.updateInfoUsuario;
begin
  pnlInfoUsuarioName.Caption := self.usuario.getNome;
  lblCargo.Caption := self.usuario.getCargo;
end;

end.
