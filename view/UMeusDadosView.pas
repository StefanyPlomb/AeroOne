unit UMeusDadosView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UUsuario,
  Vcl.Mask, Vcl.Imaging.pngimage;

type
  TFormMeusDados = class(TForm)
    pnlMainn: TPanel;
    pnlForm: TPanel;
    edtNome: TEdit;
    pnlDivNome: TPanel;
    pnlHeader: TPanel;
    Panel3: TPanel;
    pnlEndereco: TPanel;
    pnlEnderecoText: TPanel;
    Panel2: TPanel;
    pnlDivCPF: TPanel;
    pnlDivCEP: TPanel;
    pnlDivRua: TPanel;
    pnlDivBairro: TPanel;
    pnlDivCidade: TPanel;
    edtCEP: TMaskEdit;
    pnlDivUF: TPanel;
    edtUF: TEdit;
    edtSenha: TEdit;
    edtEmail: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtRua: TEdit;
    pnlDivSenha: TPanel;
    pnlDivEmail: TPanel;
    pnlDivPassaporte: TPanel;
    pnlDivTelefone: TPanel;
    pnlFooter: TPanel;
    pnlSeparador: TPanel;
    btnCancelar: TPanel;
    btnSalvar: TPanel;
    btnEditar: TPanel;
    edtNumero: TEdit;
    pnlDivNumero: TPanel;
    imgEnderecoAlerta: TImage;
    edtCPF: TMaskEdit;
    edtPassaporte: TMaskEdit;
    edtTelefone: TMaskEdit;
    imgEnderecoExcluir: TImage;
    procedure edtCEPEnter(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure edtCPFEnter(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure edtTelefoneEnter(Sender: TObject);
    procedure edtTelefoneExit(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgEnderecoExcluirClick(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
    emEdicao: Boolean;
    procedure carregarEdits;
    procedure limparEdits;
    procedure limparEditsEndereco;
    procedure bloquearEdits;
    procedure desbloquearEdits;
    procedure verificarEndereco;
    procedure mudarParaVisualizacao;
    procedure mudarParaEdicao;
  public
    { Public declarations }
    class procedure open(owner: TForm; aUsuario: TUsuario);
    constructor create(owner: TForm; aUsuario: TUsuario);
  end;

var
  FormMeusDados: TFormMeusDados;

implementation

uses UUsuarioController, UEnderecoController, UEndereco, UConn;

{$R *.dfm}

class procedure TFormMeusDados.open(owner: TForm; aUsuario: TUsuario);
var
  form: TFormMeusDados;
begin
  form := TFormMeusDados.create(owner, aUsuario);
  form.ShowModal;
end;

procedure TFormMeusDados.verificarEndereco;
begin
  if usuario.getEndereco = nil then begin
    imgEnderecoAlerta.Visible := true;
  end else begin
    imgEnderecoAlerta.Visible := false;
    if emEdicao then begin
      imgEnderecoExcluir.Visible := true;
    end else begin
      imgEnderecoExcluir.Visible := false;
    end;
  end;
end;

procedure TFormMeusDados.btnEditarClick(Sender: TObject);
begin
  emEdicao := true;
  verificarEndereco;
  mudarParaEdicao;
  edtNome.SetFocus;
end;

constructor TFormMeusDados.create(owner: TForm; aUsuario: TUsuario);
begin
  inherited create(owner);
  usuario := aUsuario;
end;

procedure TFormMeusDados.edtCEPEnter(Sender: TObject);
begin
  edtCEP.EditMask := '00000\-000;1;_';
end;

procedure TFormMeusDados.edtCEPExit(Sender: TObject);
var
  endereco: TEndereco;
begin
  edtCEP.EditMask := '';

  if edtCEP.Text = '' then Exit;

  try
    endereco := TEnderecoController.buscarCEP(edtCEP.Text);

    if endereco <> nil then begin
      edtRua.Text := endereco.getRua;
      edtBairro.Text := endereco.getBairro;
      edtCidade.Text := endereco.getCidade;
      edtUF.Text := endereco.getUF;
      endereco.Free;
    end;
  except
    on e: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TFormMeusDados.edtCPFEnter(Sender: TObject);
begin
  edtCPF.EditMask := '999.999.999-99';
  edtCPF.SelStart := 0;
  edtCPF.SelLength := 0;
end;

procedure TFormMeusDados.edtCPFExit(Sender: TObject);
begin
  edtCPF.EditMask := '';
end;

procedure TFormMeusDados.edtTelefoneEnter(Sender: TObject);
begin
  edtTelefone.EditMask := '(99) 99999-9999';
  edtTelefone.SelStart := 0;
  edtTelefone.SelLength := 0;
end;

procedure TFormMeusDados.edtTelefoneExit(Sender: TObject);
begin
  edtTelefone.EditMask := '';
end;

procedure TFormMeusDados.FormCreate(Sender: TObject);
begin
  emEdicao := false;
  carregarEdits;
  bloquearEdits;
  verificarEndereco;
end;

procedure TFormMeusDados.imgEnderecoExcluirClick(Sender: TObject);

begin
  try
    TEnderecoController.deletar(usuario.getEndereco);
    usuario.getEndereco.Free;
    usuario.setEndereco(nil);
    limparEditsEndereco;
    verificarEndereco;
    imgEnderecoExcluir.Visible := false;
  except
    on e: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TFormMeusDados.limparEdits;
begin
  edtNome.Clear;
  edtTelefone.Clear;
  edtEmail.Clear;
  edtSenha.Clear;
  edtCPF.Clear;
  edtPassaporte.Clear;
  edtCEP.Clear;
  edtRua.Clear;
  edtBairro.Clear;
  edtCidade.Clear;
  edtUF.Clear;
  edtNumero.Clear;
end;

procedure TFormMeusDados.limparEditsEndereco;
begin
  edtCEP.Text := '';
  edtRua.Text := edtRua.TextHint;
  edtBairro.Text := edtBairro.TextHint;
  edtCidade.Text := edtCidade.TextHint;
  edtUF.Text := edtUF.TextHint;
  edtNumero.Text := '';
end;

procedure TFormMeusDados.mudarParaEdicao;
begin
  desbloquearEdits;

  btnEditar.Visible := false;

  btnCancelar.Visible := true;
  pnlSeparador.Visible := true;
  btnSalvar.Visible := true;
end;

procedure TFormMeusDados.mudarParaVisualizacao;
begin
  bloquearEdits;

  btnCancelar.Visible := false;
  pnlSeparador.Visible := false;
  btnSalvar.Visible := false;

  btnEditar.Visible := true;
end;

procedure TFormMeusDados.bloquearEdits;
begin
  edtNome.Enabled:=False;
  if edtNome.Text = '' then begin
    edtNome.Text := edtNome.TextHint;
  end;

  edtEmail.Enabled:=False;
  if edtEmail.Text = '' then begin
    edtEmail.Text := edtEmail.TextHint;
  end;

  edtTelefone.Enabled:=False;
  if edtTelefone.Text = '' then begin
    edtTelefone.Text := edtTelefone.TextHint;
  end;

  edtCPF.Enabled:=False;
  if edtCPF.Text = '' then begin
    edtCPF.Text := edtCPF.TextHint;
  end;

  edtPassaporte.Enabled:=False;
  if edtPassaporte.Text = '' then begin
    edtPassaporte.Text := edtPassaporte.TextHint;
  end;

  edtSenha.Enabled:=False;
  if edtSenha.Text = '' then begin
    edtSenha.Text := edtSenha.TextHint;
  end;

  edtCEP.Enabled:=False;
  if edtCEP.Text = '' then begin
    edtCEP.Text := edtCEP.TextHint;
  end;

  edtRua.Enabled:=False;
  if edtRua.Text = '' then begin
    edtRua.Text := edtRua.TextHint;
  end;

  edtBairro.Enabled:=False;
  if edtBairro.Text = '' then begin
    edtBairro.Text := edtBairro.TextHint;
  end;

  edtCidade.Enabled:=False;
  if edtCidade.Text = '' then begin
    edtCidade.Text := edtCidade.TextHint;
  end;

  edtUF.Enabled:=False;
  if edtUF.Text = '' then begin
    edtUF.Text := edtUF.TextHint;
  end;

  edtNumero.Enabled:=False;
  if edtNumero.Text = '' then begin
    edtNumero.Text := edtNumero.TextHint;
  end;
end;

procedure TFormMeusDados.desbloquearEdits;
begin
  edtNome.Enabled:=True;
  if edtNome.Text = edtNome.TextHint then begin
    edtNome.Text := '';
  end;

  edtEmail.Enabled:=True;
  if edtEmail.Text = edtEmail.TextHint then begin
    edtEmail.Text := '';
  end;

  edtTelefone.Enabled:=True;
  if edtTelefone.Text = edtTelefone.TextHint then begin
    edtTelefone.Text := '';
  end;

  edtCPF.Enabled:=True;
  if edtCPF.Text = edtCPF.TextHint then begin
    edtCPF.Text := '';
  end;

  edtPassaporte.Enabled:=True;
  if edtPassaporte.Text = edtPassaporte.TextHint then begin
    edtPassaporte.Text := '';
  end;

  edtSenha.Enabled:=True;
  if edtSenha.Text = edtSenha.TextHint then begin
    edtSenha.Text := '';
  end;

  edtCEP.Enabled:=True;
  if edtCEP.Text = edtCEP.TextHint then begin
    edtCEP.Text := '';
  end;

  edtNumero.Enabled:=True;
  if edtNumero.Text = edtNumero.TextHint then begin
    edtNumero.Text := '';
  end;
end;

procedure TFormMeusDados.btnSalvarClick(Sender: TObject);
var
  novoUsuario: TUsuario;
  endereco: TEndereco;
begin
  edtNome.SetFocus;
  novoUsuario := TUsuario.Create;
  novoUsuario.setId(usuario.getId);
  novoUsuario.setNome(edtNome.Text);
  novoUsuario.setTelefone(edtTelefone.Text);
  novoUsuario.setEmail(edtEmail.Text);
  novoUsuario.setSenha(edtSenha.Text);
  novoUsuario.setCPF(edtCPF.Text);
  novoUsuario.setPassaporte(edtPassaporte.Text);
  if edtCEP.Text <> '' then begin
    endereco := TEndereco.Create;
    endereco.setIdUsuario(usuario.getId);
    endereco.setCEP(edtCEP.Text);
    endereco.setRua(edtRua.Text);
    endereco.setBairro(edtBairro.Text);
    endereco.setCidade(edtCidade.Text);
    endereco.setUF(edtUF.Text);
    if edtNumero.Text = '' then begin
      endereco.setNumero('S/N');
    end else begin
      endereco.setNumero(edtNumero.Text);
    end;

    novoUsuario.setEndereco(endereco);
  end;

  try
    TUsuarioController.update(novoUsuario, usuario);
    usuario.AssignFrom(novoUsuario);
    edtSenha.Text := '';
    carregarEdits;
    bloquearEdits;
    emEdicao := false;
    verificarEndereco;
    mudarParaVisualizacao;
  except
    on e: Exception do begin
      ShowMessage(e.Message);
    end;
  end;

  endereco.Free;
end;

procedure TFormMeusDados.btnCancelarClick(Sender: TObject);
begin
  emEdicao := false;
  edtNome.SetFocus;
  mudarParaVisualizacao;
  verificarEndereco;
  carregarEdits;
end;

procedure TFormMeusDados.carregarEdits;
begin
  edtNome.Text := usuario.getNome;
  edtTelefone.Text := usuario.getTelefone;
  edtEmail.Text := usuario.getEmail;
  edtCPF.Text := usuario.getCPF;
  edtPassaporte.Text := usuario.getPassaporte;
  if usuario.getEndereco <> nil then begin
    edtCEP.Text := usuario.getEndereco.getCEP;
    edtRua.Text := usuario.getEndereco.getRua;
    edtBairro.Text := usuario.getEndereco.getBairro;
    edtCidade.Text := usuario.getEndereco.getCidade;
    edtUF.Text := usuario.getEndereco.getUF;
    edtNumero.Text := usuario.getEndereco.getNumero;
  end;
end;

end.
