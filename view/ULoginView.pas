unit ULoginView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, Vcl.WinXPanels, Vcl.Mask;

type
  TFormLogin = class(TForm)
    cardFormLogin: TCardPanel;
    cardLogin: TCard;
    pnlLoginFundo: TPanel;
    imgLoginFundo: TImage;
    imgLoginLogo: TImage;
    pnlLoginForm: TPanel;
    lblLogin: TLabel;
    edtLoginEmail: TEdit;
    btnEntrar: TPanel;
    pnlDiv1: TPanel;
    pnlSenha: TPanel;
    imgOlhoAberto: TImage;
    imgOlhoFechado: TImage;
    edtLoginSenha: TEdit;
    pnlDiv2: TPanel;
    pnlCadastrese: TPanel;
    pnlCadastrarseLink: TPanel;
    pnlCadastrarseTexto: TPanel;
    cardCadastro: TCard;
    pnlCadastroFundo: TPanel;
    imgCadastroFundo: TImage;
    imgCadastroLogo: TImage;
    pnlCadastroForm: TPanel;
    edtCadastroConfirmarSenha: TEdit;
    btnCadastrar: TPanel;
    pnlDivConfirmarSenha: TPanel;
    pnlEntrar: TPanel;
    pnlEntrarLink: TPanel;
    pnlEntrarTexto: TPanel;
    edtCadastroNome: TEdit;
    pnlDivNome: TPanel;
    edtCadastroSenha: TEdit;
    pnlDivSenha: TPanel;
    pnlDivCPF: TPanel;
    edtCadastroEmail: TEdit;
    pnlDivEmail: TPanel;
    edtCadastroCPF: TMaskEdit;
    procedure btnEntrarClick(Sender: TObject);
    procedure edtLoginSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgOlhoFechadoClick(Sender: TObject);
    procedure imgOlhoAbertoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlCadastrarseLinkClick(Sender: TObject);
    procedure edtCadastroCPFEnter(Sender: TObject);
    procedure edtCadastroCPFExit(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure pnlEntrarLinkClick(Sender: TObject);
    procedure edtCadastroConfirmarSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UUsuarioController, UUsuario, UEnderecoController, UGestorView, UComissarioView, UPilotoView, UPassageiroView;

procedure TFormLogin.edtCadastroConfirmarSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    btnCadastrarClick(nil);
  end;
end;

procedure TFormLogin.edtCadastroCPFEnter(Sender: TObject);
begin
  edtCadastroCPF.EditMask := '999.999.999-99';
  edtCadastroCPF.SelStart := 0;
  edtCadastroCPF.SelLength := 0;
end;

procedure TFormLogin.edtCadastroCPFExit(Sender: TObject);
begin
  edtCadastroCPF.EditMask := '';
end;

procedure TFormLogin.edtLoginSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
   Self.btnEntrarClick(nil);
  end;
end;

procedure TFormLogin.FormCreate(Sender: TObject);
begin
  cardFormLogin.ActiveCard := cardLogin;
end;

procedure TFormLogin.imgOlhoAbertoClick(Sender: TObject);
begin
  imgOlhoAberto.Visible := not imgOlhoAberto.Visible;
  imgOlhoFechado.Visible := not imgOlhoFechado.Visible;
  edtLoginSenha.PasswordChar := '*';
end;

procedure TFormLogin.imgOlhoFechadoClick(Sender: TObject);
begin
  imgOlhoFechado.Visible := not imgOlhoFechado.Visible;
  imgOlhoAberto.Visible := not imgOlhoAberto.Visible;
  edtLoginSenha.PasswordChar := #0;
end;

procedure TFormLogin.pnlCadastrarseLinkClick(Sender: TObject);
begin
  cardFormLogin.ActiveCard := cardCadastro;
  edtCadastroNome.SetFocus;
end;

procedure TFormLogin.pnlEntrarLinkClick(Sender: TObject);
begin
  cardFormLogin.ActiveCard := cardLogin;
end;

procedure TFormLogin.btnCadastrarClick(Sender: TObject);
var
  novoUsuario: TUsuario;
begin
  try
    if edtCadastroSenha.Text <> edtCadastroConfirmarSenha.Text then begin
      raise Exception.Create('As senhas não coincidem');
    end;

    novoUsuario := TUsuario.Create;
    novoUsuario.setNome(edtCadastroNome.Text);
    novoUsuario.setEmail(edtCadastroEmail.Text);
    novoUsuario.setCPF(edtCadastroCPF.Text);
    novoUsuario.setSenha(edtCadastroSenha.Text);
    novoUsuario.setCargo('Passageiro');
    novoUsuario.setId(TUsuarioController.cadastrar(novoUsuario));
    self.Hide;
    edtCadastroNome.Text := '';
    edtCadastroEmail.Text := '';
    edtCadastroCPF.Text := '';
    edtCadastroSenha.Text := '';
    edtCadastroConfirmarSenha.Text := '';
    TFormPassageiro.open(novoUsuario);
  except
    on E: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TFormLogin.btnEntrarClick(Sender: TObject);
var
  usuario: TUsuario;
  cargo: String;
begin
  try
    usuario := TUsuarioController.login(edtLoginEmail.Text, edtLoginSenha.Text);
    if usuario <> nil then begin
      usuario.setEndereco(TEnderecoController.getEndereco(usuario.getId));
      cargo := usuario.getCargo;
      edtLoginEmail.SetFocus;
      edtLoginEmail.Clear;
      edtLoginSenha.Clear;
      self.Hide;
      if cargo = 'Gestor(a)' then begin
        TFormGestor.open(usuario);
      end else if cargo = 'Piloto(a)' then begin
        TFormPiloto.open(usuario);
      end else if cargo = 'Comissário(a)' then begin
        TFormAeroMoc.open(usuario);
      end else begin
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
