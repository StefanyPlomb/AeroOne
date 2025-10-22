unit UCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBGrids,
  Vcl.Grids, Vcl.ExtCtrls, UData, CBloquear, MEndereco, CEnderecoController, CCadastroFuncionario;

type
  TFormCadastroFuncionaris = class(TForm)
    PanelCentral_Funcionarios: TPanel;
    ButNovoFuncionario: TPanel;
    EditBuscaFuncionarios: TEdit;
    PanelExcluirFuncionario: TPanel;
    PanelEditarFuncionario: TPanel;
    PanelDados: TPanel;
    DBGridFuncionarios: TDBGrid;
    ButSalvarFuncionarios: TButton;
    EditEmailFuncionarios: TEdit;
    EditNomeFuncionarios: TEdit;
    ComboBoxCargos: TComboBox;
    EditCPF: TEdit;
    EditTelefone: TEdit;
    EditCEP: TEdit;
    EditRua: TEdit;
    ComboBoxEscolaridade: TComboBox;
    PanelSuperiorTitulos: TPanel;
    Label1: TLabel;
    PanelLateralBotoes: TPanel;
    Panel1: TPanel;

    procedure FormCreate(Sender: TObject);
    procedure ButNovoFuncionarioClick(Sender: TObject);
    procedure ButSalvarFuncionariosClick(Sender: TObject);
    procedure PanelEditarFuncionarioClick(Sender: TObject);
    procedure PanelExcluirFuncionarioClick(Sender: TObject);
    procedure EditBuscaFuncionariosChange(Sender: TObject);
    procedure EditCEPExit(Sender: TObject);
  private

  public
  end;

var
  FormCadastroFuncionaris: TFormCadastroFuncionaris;
  OpcoesSalvar: Boolean = False;
   IDSelecionado: Integer = 0;

implementation

{$R *.dfm}

procedure TFormCadastroFuncionaris.FormCreate(Sender: TObject);
var
  ControllerBloquear : TFormBloquear;
  ControllerAbrir: TCCadastroFuncionario;
begin

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'id_usuario';
  Title.Caption := 'ID';
  Title.Font.Style := [fsBold];
  Title.Font.size := 10;
  Width := 50;
end;

 with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'nome';
  Title.Caption := 'Nome do Funcionário';
   Title.Font.Style := [fsBold];
   Title.Font.size := 10;
   Width := 210;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'email';
  Title.Caption := 'E-mail';
   Title.Font.Style := [fsBold];
   Title.Font.size := 10;
   Width := 200;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'cargo';
  Title.Caption := 'Cargo';
   Title.Font.Style := [fsBold];
   Title.Font.size := 10;
   Width := 100;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'cpf';
  Title.Caption := 'CPF';
  Title.Font.Style := [fsBold];
  Title.Font.size := 10;
  Width := 50;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'telefone';
  Title.Caption := 'Telefone/Celular';
  Title.Font.Style := [fsBold];
  Title.Font.size := 15;
  Width := 50;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'cep';
  Title.Caption := 'CEP';
  Title.Font.Style := [fsBold];
  Title.Font.size := 15;
  Width := 50;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'rua';
  Title.Caption := 'Rua';
  Title.Font.Style := [fsBold];
  Title.Font.size := 15;
  Width := 50;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'escolaridade';
  Title.Caption := 'Escolaridade';
  Title.Font.Style := [fsBold];
  Title.Font.size := 15;
  Width := 50;
end;
   ControllerAbrir := TCCadastroFuncionario.Create;
   ControllerAbrir.CarregarFuncionarios;
   ControllerAbrir.Free;

  ControllerBloquear.BloquearEdits([EditNomeFuncionarios, EditEmailFuncionarios,EditTelefone, EditCPF, EditCEP, EditRua]);
  ControllerBloquear.BloquearComboBox([ComboBoxCargos,ComboBoxEscolaridade]);

end;

procedure TFormCadastroFuncionaris.ButNovoFuncionarioClick(Sender: TObject);
var
  Controller: TFormBloquear;
begin
  Controller.DesbloquearEdits([EditNomeFuncionarios, EditEmailFuncionarios,EditTelefone, EditCPF, EditCEP, EditRua]);
  Controller.DesbloquearComboBox([ComboBoxCargos,ComboBoxEscolaridade]);
  EditNomeFuncionarios.SetFocus;
  OpcoesSalvar := False;
end;

procedure TFormCadastroFuncionaris.ButSalvarFuncionariosClick(Sender: TObject);
var
  ControllerBloquear: TFormBloquear;
  ControllerSalvar: TCCadastroFuncionario;
begin
  ControllerSalvar := TCCadastroFuncionario.Create;
  try
    ControllerSalvar.Salvar(
      EditNomeFuncionarios.Text,
      EditEmailFuncionarios.Text,
      ComboBoxCargos.Text,
      EditCPF.Text,
      EditTelefone.Text,
      EditCEP.Text,
      EditRua.Text,
      ComboBoxEscolaridade.Text
    );

    ControllerSalvar.CarregarFuncionarios;
  finally
    ControllerSalvar.Free;
  end;

  EditNomeFuncionarios.Clear;
  EditEmailFuncionarios.Clear;
  EditCPF.Clear;
  EditTelefone.Clear;
  EditCEP.Clear;
  EditRua.Clear;

  ControllerBloquear.BloquearComboBox([ComboBoxCargos, ComboBoxEscolaridade]);
  ControllerBloquear.BloquearEdits([EditNomeFuncionarios, EditEmailFuncionarios, EditTelefone, EditCPF, EditCEP, EditRua]);
end;


procedure TFormCadastroFuncionaris.EditBuscaFuncionariosChange(Sender: TObject);
 var
  ControllerBuscar: TCCadastroFuncionario;
begin
   ControllerBuscar:= TCCadastroFuncionario.Create;
   ControllerBuscar.BuscarFiltro(EditBuscaFuncionarios.Text);
   ControllerBuscar.Destroy;
end;

procedure TFormCadastroFuncionaris.EditCEPExit(Sender: TObject);
var
  Endereco: TEndereco;
begin
  if Trim(EditCEP.Text) = '' then Exit;

  Endereco := TEnderecoController.BuscarPorCEP(EditCEP.Text);

  if Assigned(Endereco) then
  begin
    EditRua.Text := Endereco.Logradouro;

  end
  else
    ShowMessage('Endereço não encontrado.');

  Endereco.Free;

end;

procedure TFormCadastroFuncionaris.PanelEditarFuncionarioClick(Sender: TObject);    // precisa separar ainda
var
  Controller: TFormBloquear;
begin
  EditNomeFuncionarios.Text := DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString;
  EditEmailFuncionarios.Text := DataModule1.FDQueryFuncionarios.FieldByName('email').AsString;
  ComboBoxCargos.Text := DataModule1.FDQueryFuncionarios.FieldByName('cargo').AsString;
  EditCPF.Text := DataModule1.FDQueryFuncionarios.FieldByName('cpf').AsString;
  EditTelefone.Text := DataModule1.FDQueryFuncionarios.FieldByName('telefone').AsString;
  EditCEP.Text := DataModule1.FDQueryFuncionarios.FieldByName('cep').AsString;
  EditRua.Text := DataModule1.FDQueryFuncionarios.FieldByName('rua').AsString;
  ComboBoxEscolaridade.Text := DataModule1.FDQueryFuncionarios.FieldByName('escolaridade').AsString;

  IDSelecionado := DataModule1.FDQueryFuncionarios.FieldByName('id_usuario').AsInteger;
  OpcoesSalvar := True;
  Controller.DesbloquearComboBox([ComboBoxCargos,ComboBoxEscolaridade]);
  Controller.DesbloquearEdits([EditNomeFuncionarios, EditEmailFuncionarios,EditTelefone, EditCPF, EditCEP, EditRua]);
end;

procedure TFormCadastroFuncionaris.PanelExcluirFuncionarioClick(Sender: TObject);
var
  ControllerExcluir:TCCadastroFuncionario;
begin
   if MessageDlg('Deseja realmente excluir este funcionário?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ControllerExcluir:=TCCadastroFuncionario.Create;
    ControllerExcluir.ExcluirFuncionario;
    ControllerExcluir.Destroy

  end;
end;

end.

