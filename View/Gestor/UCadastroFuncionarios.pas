unit UCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBGrids,
  Vcl.Grids, Vcl.ExtCtrls, UData;

type
  TFormCadastroFuncionaris = class(TForm)
    PanelCentral_Funcionarios: TPanel;
    LabelTituloFuncionarios: TLabel;
    LabelSubtituloFuncionarios: TLabel;
    ButNovoFuncionario: TPanel;
    EditBuscaFuncionarios: TEdit;
    PanelExcluirFuncionario: TPanel;
    PanelEditarFuncionario: TPanel;
    PanelGridFuncionario: TPanel;
    DBGridFuncionarios: TDBGrid;
    ButSalvarFuncionarios: TButton;
    EditEmailFuncionarios: TEdit;
    EditNomeFuncionarios: TEdit;
    ComboBoxCargos: TComboBox;
    EditNascimento: TEdit;
    EditTelefone: TEdit;
    EditCEP: TEdit;
    EditRua: TEdit;
    ComboBoxEscolaridade: TComboBox;

    procedure FormCreate(Sender: TObject);
    procedure ButNovoFuncionarioClick(Sender: TObject);
    procedure ButSalvarFuncionariosClick(Sender: TObject);
    procedure PanelEditarFuncionarioClick(Sender: TObject);
    procedure PanelExcluirFuncionarioClick(Sender: TObject);
    procedure EditBuscaFuncionariosChange(Sender: TObject);
  private
    procedure AbrirFuncionarios;
  public
  end;

var
  FormCadastroFuncionaris: TFormCadastroFuncionaris;
  OpcoesSalvar: Boolean = False;
   IDSelecionado: Integer = 0;

implementation

{$R *.dfm}

procedure TFormCadastroFuncionaris.FormCreate(Sender: TObject);
begin

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'id_usuario';
  Title.Caption := 'ID';
  Title.Font.Style := [fsBold];
  Title.Font.size := 15;
  Width := 50;
end;

 with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'nome';
  Title.Caption := 'Nome do Funcion�rio';
   Title.Font.Style := [fsBold];
   Title.Font.size := 15;
   Width := 210;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'email';
  Title.Caption := 'E-mail';
   Title.Font.Style := [fsBold];
   Title.Font.size := 15;
   Width := 200;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'cargo';
  Title.Caption := 'Cargo';
   Title.Font.Style := [fsBold];
   Title.Font.size := 15;
   Width := 100;
end;

with DBGridFuncionarios.Columns.Add do
begin
  FieldName := 'data_nascimento';
  Title.Caption := 'Data De Nascimento';
  Title.Font.Style := [fsBold];
  Title.Font.size := 15;
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
  AbrirFuncionarios;
end;

procedure TFormCadastroFuncionaris.AbrirFuncionarios;
begin
   if not DataModule1.FDQueryFuncionarios.Active then
  begin
    DataModule1.FDQueryFuncionarios.Close;
    DataModule1.FDQueryFuncionarios.SQL.Text := 'SELECT * FROM usuarios';
    DataModule1.FDQueryFuncionarios.Open;
  end;

end;

procedure TFormCadastroFuncionaris.ButNovoFuncionarioClick(Sender: TObject);
begin

  EditNomeFuncionarios.SetFocus;
  OpcoesSalvar := False;

end;

procedure TFormCadastroFuncionaris.ButSalvarFuncionariosClick(Sender: TObject);
  begin
           // === INSERIR NOVO ===

   if OpcoesSalvar = False then
   begin

   if (Trim(EditNomeFuncionarios.Text) = '') or
     (Trim(EditEmailFuncionarios.Text) = '') or
     (Trim(ComboBoxCargos.Text) = '') then
  begin
    ShowMessage('Informe um Nome, E-mail e Cargo.');
    Exit;
  end;

    DataModule1.FDQueryFuncionarios.Append;
    DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString := EditNomeFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('email').AsString := EditEmailFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('cargo').AsString := ComboBoxCargos.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('data_nascimento').AsString := EditNascimento.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('telefone').AsString := EditTelefone.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('cep').AsString := EditCEP.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('rua').AsString := EditRua.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('escolaridade').AsString := ComboBoxEscolaridade.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('senha').AsString := '123';
    DataModule1.FDQueryFuncionarios.Post;

    DataModule1.FDQueryFuncionarios.Refresh;
    AbrirFuncionarios;

    EditNomeFuncionarios.Clear;
    EditEmailFuncionarios.Clear;
    EditNascimento.Clear;
    EditTelefone.Clear;
    EditCEP.Clear;
    EditRua.Clear;
    EditNomeFuncionarios.SetFocus;
 end
 else     // === EDITAR EXISTENTE ===
  begin
    DataModule1.FDQueryFuncionarios.Edit;
    DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString := EditNomeFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('email').AsString := EditEmailFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('cargo').AsString := ComboBoxCargos.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('data_nascimento').AsString := EditNascimento.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('telefone').AsString := EditTelefone.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('cep').AsString := EditCEP.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('rua').AsString := EditRua.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('escolaridade').AsString := ComboBoxEscolaridade.Text;
    DataModule1.FDQueryFuncionarios.Post;

    ShowMessage('Funcion�rio atualizado com sucesso!');
    DataModule1.FDQueryFuncionarios.Refresh;
  end;

end;



procedure TFormCadastroFuncionaris.EditBuscaFuncionariosChange(Sender: TObject);
begin
   with DataModule1.FDQueryFuncionarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM usuarios WHERE nome ILIKE :filtro or cargo ILIKE :filtro');
    ParamByName('filtro').AsString := '%' + EditBuscaFuncionarios.Text + '%';
    Open;
  end;
end;

procedure TFormCadastroFuncionaris.PanelEditarFuncionarioClick(Sender: TObject);
begin
  EditNomeFuncionarios.Text := DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString;
  EditEmailFuncionarios.Text := DataModule1.FDQueryFuncionarios.FieldByName('email').AsString;
  ComboBoxCargos.Text := DataModule1.FDQueryFuncionarios.FieldByName('cargo').AsString;
  EditNascimento.Text := DataModule1.FDQueryFuncionarios.FieldByName('data_nascimento').AsString;
  EditTelefone.Text := DataModule1.FDQueryFuncionarios.FieldByName('telefone').AsString;
  EditCEP.Text := DataModule1.FDQueryFuncionarios.FieldByName('cep').AsString;
  EditRua.Text := DataModule1.FDQueryFuncionarios.FieldByName('rua').AsString;
  ComboBoxEscolaridade.Text := DataModule1.FDQueryFuncionarios.FieldByName('escolaridade').AsString;

  IDSelecionado := DataModule1.FDQueryFuncionarios.FieldByName('id_usuario').AsInteger;
   OpcoesSalvar := True;
end;

procedure TFormCadastroFuncionaris.PanelExcluirFuncionarioClick(Sender: TObject);
begin
   if MessageDlg('Deseja realmente excluir este funcion�rio?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DataModule1.FDQueryFuncionarios.Delete;
    DataModule1.FDQueryFuncionarios.Refresh;
    ShowMessage('Funcion�rio exclu�do com sucesso!');
  end;
end;

end.

