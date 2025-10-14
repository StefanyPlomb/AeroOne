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
    EditCargosFuncionarios: TEdit;
    EditNomeFuncionarios: TEdit;

    procedure FormCreate(Sender: TObject);
    procedure ButNovoFuncionarioClick(Sender: TObject);
    procedure ButSalvarFuncionariosClick(Sender: TObject);
    procedure PanelEditarFuncionarioClick(Sender: TObject);
    procedure PanelExcluirFuncionarioClick(Sender: TObject);
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
  Title.Caption := 'Nome do Funcionário';
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
     (Trim(EditCargosFuncionarios.Text) = '') then
  begin
    ShowMessage('Informe um Nome, E-mail e Cargo.');
    Exit;
  end;

    DataModule1.FDQueryFuncionarios.Append;
    DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString := EditNomeFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('email').AsString := EditEmailFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('cargo').AsString := EditCargosFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('senha').AsString := '123';
    DataModule1.FDQueryFuncionarios.Post;

    DataModule1.FDQueryFuncionarios.Refresh;
    AbrirFuncionarios;

    EditNomeFuncionarios.Clear;
    EditEmailFuncionarios.Clear;
    EditCargosFuncionarios.Clear;
    EditNomeFuncionarios.SetFocus;
 end
 else     // === EDITAR EXISTENTE ===
  begin
    DataModule1.FDQueryFuncionarios.Edit;
    DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString := EditNomeFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('email').AsString := EditEmailFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.FieldByName('cargo').AsString := EditCargosFuncionarios.Text;
    DataModule1.FDQueryFuncionarios.Post;

    ShowMessage('Funcionário atualizado com sucesso!');
    DataModule1.FDQueryFuncionarios.Refresh;
  end;

end;

procedure TFormCadastroFuncionaris.PanelEditarFuncionarioClick(Sender: TObject);
begin
  EditNomeFuncionarios.Text := DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString;
  EditEmailFuncionarios.Text := DataModule1.FDQueryFuncionarios.FieldByName('email').AsString;
  EditCargosFuncionarios.Text := DataModule1.FDQueryFuncionarios.FieldByName('cargo').AsString;

  IDSelecionado := DataModule1.FDQueryFuncionarios.FieldByName('id_usuario').AsInteger;
   OpcoesSalvar := True;
end;

procedure TFormCadastroFuncionaris.PanelExcluirFuncionarioClick(Sender: TObject);
begin
   if MessageDlg('Deseja realmente excluir este funcionário?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DataModule1.FDQueryFuncionarios.Delete;
    DataModule1.FDQueryFuncionarios.Refresh;
    ShowMessage('Funcionário excluído com sucesso!');
  end;
end;

end.

