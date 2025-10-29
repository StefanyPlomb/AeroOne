unit UDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, MEndereco, CEnderecoController,
  UData, CBloquear;

type
  TFormMeusDados = class(TForm)
    PanelCentralDados: TPanel;
    PanelSuperiorTitulo: TPanel;
    LabelSubTitulo: TLabel;
    PanelDados: TPanel;
    EditNome: TEdit;
    EditCPF: TEdit;
    EditEmail: TEdit;
    EditTelefone: TEdit;
    LabelEndere�o: TLabel;
    EditCEP: TEdit;
    EditRua: TEdit;
    EditBairro: TEdit;
    EditCidade: TEdit;
    ButSalvar: TPanel;
    ButCancelar: TPanel;
    ButEditar: TPanel;
    LabelNome: TLabel;
    LabelCPF: TLabel;
    LabelEmail: TLabel;
    LabelTelefone: TLabel;
    LabelCEP: TLabel;
    LabelRua: TLabel;
    LabelBairro: TLabel;
    LabelCidade: TLabel;
    PanelLateralDados: TPanel;
    EditRG: TEdit;
    Label12: TLabel;
    EditPassaporte: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    LabelIcon: TLabel;
    procedure EditCEPExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButEditarClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);


  private
    FBloquear: TFormBloquear;
    procedure FormDestroy;

    procedure ExibirDados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMeusDados: TFormMeusDados;

implementation

{$R *.dfm}

procedure TFormMeusDados.FormCreate(Sender: TObject);
begin
  FBloquear := TFormBloquear.Create;
  ExibirDados;
  FBloquear.BloquearEdits([EditNome, EditEmail, EditCPF, EditRG, EditPassaporte,
  EditTelefone, EditCEP, EditRua, EditBairro, EditCidade]);
 // FBloquear.Free;
end;

procedure TFormMeusDados.FormDestroy;
begin
  FBloquear.Free;
end;



procedure TFormMeusDados.ButEditarClick(Sender: TObject);
begin
  FBloquear.DesbloquearEdits([EditNome, EditEmail, EditCPF, EditRG, EditPassaporte,
    EditTelefone, EditCEP, EditRua, EditBairro, EditCidade]);
  EditNome.SetFocus;
end;



procedure TFormMeusDados.ButSalvarClick(Sender: TObject);
var
  Endereco: TEndereco;
 // ControllerBloquear : TFormBloquear;
begin
    DataModule1.FDQueryFuncionarios.Edit;
    DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString := EditNome.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('email').AsString := EditEmail.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('cpf').AsString := EditCPF.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('telefone').AsString := EditTelefone.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('rg').AsString := EditRG.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('passaporte').AsString := EditPassaporte.Text;
    DataModule1.FDQueryFuncionarios.Post;

    Endereco := TEndereco.Create;
    Endereco.IdUsuario := DataModule1.UsuarioLogadoID;
    Endereco.Cep := EditCEP.Text;
    Endereco.Logradouro := EditRua.Text;
    Endereco.Bairro := EditBairro.Text;
    Endereco.Cidade := EditCidade.Text;

    // Salva o endere�o
    TEnderecoController.SalvarEndereco(Endereco);
    DataModule1.FDQueryFuncionarios.Post;
    Endereco.Free;
    ExibirDados;
    DataModule1.FDQueryFuncionarios.Refresh;
    FBloquear.BloquearEdits([EditNome, EditEmail, EditCPF, EditRG, EditPassaporte,
    EditTelefone, EditCEP, EditRua,EditBairro, EditCidade]);

  ShowMessage('Dados atualizados com sucesso!');
end;

procedure TFormMeusDados.EditCEPExit(Sender: TObject);
var
  Endereco: TEndereco;
begin
  if Trim(EditCEP.Text) = '' then Exit;

  Endereco := TEnderecoController.BuscarPorCEP(EditCEP.Text);

  if Assigned(Endereco) then
  begin
    EditRua.Text := Endereco.Logradouro;
    EditBairro.Text := Endereco.Bairro;
    EditCidade.Text := Endereco.Cidade;
  end
  else
    ShowMessage('Endere�o n�o encontrado.');

  Endereco.Free;

end;

procedure TFormMeusDados.ExibirDados;
begin
  with DataModule1.FDQueryFuncionarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT u.*, e.bairro, e.cidade, e.cep, e.logradouro AS rua');
    SQL.Add('FROM usuarios u');
    SQL.Add('LEFT JOIN enderecos e ON e.id_usuario = u.id_usuario');
    SQL.Add('WHERE u.id_usuario = :id');
    ParamByName('id').AsInteger := DataModule1.UsuarioLogadoID;
    Open;

    if not IsEmpty then
    begin
      EditNome.text := FieldByName('nome').AsString;
      EditEmail.text := FieldByName('email').AsString;
      EditTelefone.text := FieldByName('telefone').AsString;
      EditRG.text := FieldByName('rg').AsString;
      EditPassaporte.text := FieldByName('passaporte').AsString;
      EditCPF.text := FieldByName('cpf').AsString;
      EditCEP.Text:= FieldByName('cep').AsString;
      EditRUA.Text:= FieldByName('rua').AsString;
      EditBairro.Text:= FieldByName('bairro').AsString;
      EditCidade.Text:= FieldByName('cidade').AsString;
    end
    else
    begin
      ShowMessage('Erro ao exibir dados salvos');
    end;
  end;

end;

end.
