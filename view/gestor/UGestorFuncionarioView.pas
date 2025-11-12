unit UGestorFuncionarioView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBGrids,
  Vcl.Grids, Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.Imaging.pngimage, Vcl.Mask;

type
  TFormGestorFuncionario = class(TForm)
    pnlMain: TPanel;
    cardGestorFuncionario: TCardPanel;
    pnlMainFrame: TPanel;
    DBGridFuncionarios: TDBGrid;
    pnlLateral: TPanel;
    cardAddOrUpdateFuncionario: TCard;
    cardMainFuncionarios: TCard;
    imgCadastrar: TImage;
    imgStatus: TImage;
    imgEditar: TImage;
    pnlHeader: TPanel;
    pnlSearch: TPanel;
    edtSearch: TEdit;
    pnlDiv1: TPanel;
    pnlFooter: TPanel;
    pnlDivPassaporte: TPanel;
    pnlDivCargo: TPanel;
    edtSenha: TEdit;
    pnlDivTelefone: TPanel;
    edtEmail: TEdit;
    pnlDivSenha: TPanel;
    edtNome: TEdit;
    pnlDivEmail: TPanel;
    pnlDivNome: TPanel;
    pnlDivCPF: TPanel;
    cbxCargo: TComboBox;
    pnlSeparador: TPanel;
    btnVoltar: TPanel;
    btnSalvar: TPanel;
    edtTelefone: TMaskEdit;
    edtPassaporte: TMaskEdit;
    edtCPF: TMaskEdit;
    Image1: TImage;
    procedure edtTelefoneEnter(Sender: TObject);
    procedure edtTelefoneExit(Sender: TObject);
    procedure edtPassaporteExit(Sender: TObject);
    procedure edtPassaporteEnter(Sender: TObject);
    procedure edtCPFEnter(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure imgCadastrarClick(Sender: TObject);
    procedure imgEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cardAddOrUpdateFuncionarioEnter(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
  private
    { Private declarations }
    operacao: String;
    status: String;
    procedure limparEdits;
    procedure loadGrid(searchBar, status: String);
    procedure loadEditsFromGrid;
  public
    { Public declarations }
  end;

implementation

uses UFuncionarioController, UUsuarioController, UUsuario;

{$R *.dfm}

procedure TFormGestorFuncionario.imgCadastrarClick(Sender: TObject);
begin
  operacao := 'Inserir';
  cardGestorFuncionario.ActiveCard := cardAddOrUpdateFuncionario;
end;

procedure TFormGestorFuncionario.imgEditarClick(Sender: TObject);
begin
  operacao := 'Atualizar';
  loadEditsFromGrid;
  cardGestorFuncionario.ActiveCard := cardAddOrUpdateFuncionario;
end;

procedure TFormGestorFuncionario.limparEdits;
begin
  edtNome.Clear;
  edtEmail.Clear;
  edtSenha.Clear;
  edtTelefone.Clear;
  cbxCargo.text := '';
  edtCPF.Clear;
  edtPassaporte.Clear;
end;

procedure TFormGestorFuncionario.btnSalvarClick(Sender: TObject);
var
  usuario: TUsuario;
begin
  try
    usuario := TUsuario.Create;
    usuario.setNome(edtNome.Text);
    usuario.setEmail(edtEmail.Text);
    usuario.setSenha(edtSenha.Text);
    usuario.setTelefone(edtTelefone.Text);
    usuario.setCargo(cbxCargo.Text);
    usuario.setCPF(edtCPF.Text);
    usuario.setPassaporte(edtPassaporte.Text);
    if operacao = 'Inserir' then begin
      // TUsuarioController.cadastrar(usuario);
    end else begin
      limparEdits;
      // TUsuarioController.update(usuario);
    end;
    usuario.Free;
  except
    on E: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TFormGestorFuncionario.btnVoltarClick(Sender: TObject);
begin
 cardGestorFuncionario.ActiveCard := cardMainFuncionarios;
end;

procedure TFormGestorFuncionario.cardAddOrUpdateFuncionarioEnter(Sender: TObject);
begin
  if operacao = 'Inserir' then begin
    edtSenha.Visible := false;
    pnlDivSenha.Visible := false;
  end else begin
    edtSenha.Visible := true;
    pnlDivSenha.Visible := true;
  end;
end;

procedure TFormGestorFuncionario.loadEditsFromGrid;
var
  ds: TDataSet;
begin
  ds := DBGridFuncionarios.DataSource.DataSet;
  edtNome.Text := ds.FieldByName('nome').AsString;
  edtEmail.Text := ds.FieldByName('email').AsString;
  edtTelefone.Text := ds.FieldByName('telefone').AsString;
  cbxCargo.Text := ds.FieldByName('cargo').AsString;
  edtCPF.Text := ds.FieldByName('cpf').AsString;
  edtPassaporte.Text := ds.FieldByName('passaporte').AsString;
end;

procedure TFormGestorFuncionario.loadGrid(searchBar, status: String);
var
  id: Integer;
  nome: String;
begin
  try
    id := StrToInt(searchBar);
  except
    id := 0;
    nome := searchBar;
  end;
  // TUsuarioController.getUsuarios(id, nome, status);
end;

procedure TFormGestorFuncionario.edtCPFEnter(Sender: TObject);
begin
  edtCPF.EditMask := '000.000.000-00';
  edtCPF.SelStart := 0;
  edtCPF.SelLength := 0;
end;

procedure TFormGestorFuncionario.edtCPFExit(Sender: TObject);
begin
  edtCPF.EditMask := '';
end;

procedure TFormGestorFuncionario.edtPassaporteEnter(Sender: TObject);
begin
  edtPassaporte.EditMask := '>LL000000;1;_';
  edtPassaporte.SelStart := 0;
  edtPassaporte.SelLength := 0;
end;

procedure TFormGestorFuncionario.edtPassaporteExit(Sender: TObject);
begin
  edtPassaporte.EditMask := '';
end;

procedure TFormGestorFuncionario.edtSearchChange(Sender: TObject);
begin
  loadGrid(edtSearch.Text, status);
end;

procedure TFormGestorFuncionario.edtTelefoneEnter(Sender: TObject);
begin
  edtTelefone.EditMask := '(00) 00000-0000';
  edtTelefone.SelStart := 0;
  edtTelefone.SelLength := 0;
end;

procedure TFormGestorFuncionario.edtTelefoneExit(Sender: TObject);
begin
  edtTelefone.EditMask := '';
end;

procedure TFormGestorFuncionario.FormCreate(Sender: TObject);
begin
  operacao := 'Inserir';
  status := '';
  cardGestorFuncionario.ActiveCard := cardMainFuncionarios;
end;

end.
