unit ULoginView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg;

type
  TFormLogin = class(TForm)
    imgLoginFundo: TImage;
    pnlLoginFundo: TPanel;
    pnlLoginForm: TPanel;
    edtLoginEmail: TEdit;
    btnEntrar: TPanel;
    pnlDiv1: TPanel;
    imgLogo: TImage;
    lblLogin: TLabel;
    pnlSenha: TPanel;
    edtLoginSenha: TEdit;
    pnlDiv2: TPanel;
    imgOlhoAberto: TImage;
    imgOlhoFechado: TImage;
    procedure btnEntrarClick(Sender: TObject);
    procedure edtLoginSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgOlhoFechadoClick(Sender: TObject);
    procedure imgOlhoAbertoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UUsuarioController, UUsuario, UGestorView, UAeroMocView, UPilotoView, UPassageiroView;

procedure TFormLogin.edtLoginSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
   Self.btnEntrarClick(nil);
  end;
end;

procedure TFormLogin.imgOlhoAbertoClick(Sender: TObject);
begin
  imgOlhoAberto.Visible := not imgOlhoAberto.Visible;
  imgOlhoFechado.Visible := not imgOlhoFechado.Visible;
  edtLoginSenha.PasswordChar := '•';
end;

procedure TFormLogin.imgOlhoFechadoClick(Sender: TObject);
begin
  imgOlhoFechado.Visible := not imgOlhoFechado.Visible;
  imgOlhoAberto.Visible := not imgOlhoAberto.Visible;
  edtLoginSenha.PasswordChar := #0;
end;

procedure TFormLogin.btnEntrarClick(Sender: TObject);
var
  usuario: TUsuario;
  cargo: String;
begin
  try
    usuario := TUsuarioController.login(edtLoginEmail.Text, edtLoginSenha.Text);
    if usuario <> nil then begin
      cargo := usuario.getCargo;
      FormLogin.Hide;
      if cargo = 'Gestor' then begin
        TFormGestor.open(usuario);
      end
      else if cargo = 'Piloto' then begin
        // TFormPiloto.open(usuario);
      end
      else if cargo = 'Aeromoço' then begin
        TFormAeroMoc.open(usuario);
      end
      else begin
        TFormPassageiro.open(usuario);
      end;
    end;
  except
    on e: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
end;

end.
