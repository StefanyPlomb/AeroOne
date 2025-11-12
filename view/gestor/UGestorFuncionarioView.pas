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
    procedure imgStatusClick(Sender: TObject);
  private
    { Private declarations }
    operacao: String;
    status: String;
    idUsuarioGrid: Integer;
    statusUsuarioGrid: String;
    procedure limparEdits;
    procedure loadGrid(searchBar: String);
    procedure loadEditsFromGrid;
  public
    { Public declarations }
  end;

implementation

uses UFuncionarioController, UUsuarioController, UUsuario, UConn;

{$R *.dfm}

procedure TFormGestorFuncionario.imgCadastrarClick(Sender: TObject);
begin
  operacao := 'Inserir';
  cardGestorFuncionario.ActiveCard := cardAddOrUpdateFuncionario;
end;

procedure TFormGestorFuncionario.imgEditarClick(Sender: TObject);
begin
  if DBGridFuncionarios.DataSource.DataSet.IsEmpty then begin
    ShowMessage('Nenhum registro selecionado');
    exit;
  end;
  operacao := 'Atualizar';
  loadEditsFromGrid;
  cardGestorFuncionario.ActiveCard := cardAddOrUpdateFuncionario;
end;

procedure TFormGestorFuncionario.imgStatusClick(Sender: TObject);
var
  novoUsuario: TUsuario;
begin
  try
    loadEditsFromGrid;
    novoUsuario := TUsuario.Create;
    novoUsuario := TUsuario.Create;
    novoUsuario.setNome(edtNome.Text);
    novoUsuario.setEmail(edtEmail.Text);
    novoUsuario.setSenha(edtSenha.Text);
    novoUsuario.setTelefone(edtTelefone.Text);
    if cbxCargo.ItemIndex = 0 then begin
      novoUsuario.setCargo('Gestor');
    end else if cbxCargo.ItemIndex = 1 then begin
      novoUsuario.setCargo('Piloto');
    end else begin
      novoUsuario.setCargo('Aeromoco');
    end;
    novoUsuario.setCPF(edtCPF.Text);
    novoUsuario.setPassaporte(edtPassaporte.Text);
    if statusUsuarioGrid = 'A' then begin
      novoUsuario.setStatus('I');
    end else begin
      novoUsuario.setStatus('A');
    end;
    TUsuarioController.update(novoUsuario, TUsuarioCOntroller.getUsuario(idUsuarioGrid));
    limparEdits;
    loadGrid(edtSearch.Text);
    novoUsuario.Free;
  except
    on E: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
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
  novoUsuario: TUsuario;
begin
  try
    novoUsuario := TUsuario.Create;
    novoUsuario.setNome(edtNome.Text);
    novoUsuario.setEmail(edtEmail.Text);
    novoUsuario.setSenha(edtSenha.Text);
    novoUsuario.setTelefone(edtTelefone.Text);
    if cbxCargo.ItemIndex = 0 then begin
      novoUsuario.setCargo('Gestor');
    end else if cbxCargo.ItemIndex = 1 then begin
      novoUsuario.setCargo('Piloto');
    end else begin
      novoUsuario.setCargo('Aeromoco');
    end;
    novoUsuario.setCPF(edtCPF.Text);
    novoUsuario.setPassaporte(edtPassaporte.Text);
    if operacao = 'Inserir' then begin
      TUsuarioController.cadastrar(novoUsuario);
    end else begin
      edtNome.SetFocus;
      TUsuarioController.update(novoUsuario, TUsuarioCOntroller.getUsuario(idUsuarioGrid));
    end;
    limparEdits;
    loadGrid(edtSearch.Text);
    cardGestorFuncionario.ActiveCard := cardMainFuncionarios;
    novoUsuario.Free;
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
  cargo: String;
begin
  ds := DBGridFuncionarios.DataSource.DataSet;
  idUsuarioGrid := ds.FieldByName('id').AsInteger;
  edtNome.Text := ds.FieldByName('nome').AsString;
  edtEmail.Text := ds.FieldByName('email').AsString;
  edtTelefone.Text := ds.FieldByName('telefone').AsString;
  cargo := ds.FieldByName('cargo').AsString;
  if cargo = 'Gestor' then begin
    cbxCargo.ItemIndex := 0;
  end else if cargo = 'Piloto' then begin
    cbxCargo.ItemIndex := 1;
  end else begin
    cbxCargo.ItemIndex := 2;
  end;
  edtCPF.Text := ds.FieldByName('cpf').AsString;
  edtPassaporte.Text := ds.FieldByName('passaporte').AsString;
  statusUsuarioGrid := ds.FieldByName('status').AsString;
end;

procedure TFormGestorFuncionario.loadGrid(searchBar: String);
var
  id: Integer;
  nome, status: String;
begin
  DBGridFuncionarios.DataSource := DataModuleConn.DataSourceFuncionario;

  try
    id := StrToInt(searchBar);
  except
    id := 0;
    nome := searchBar;
  end;

  status := '';
  if searchBar.ToUpper.Contains('INATIVO') then begin
    status := 'I';
  end else if searchBar.ToUpper.Contains('ATIVO') then begin
    status := 'A';
  end;

  TUsuarioController.getUsuarios(id, nome, status);
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
  loadGrid(edtSearch.Text);
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
  loadGrid(edtSearch.Text);
end;

end.
