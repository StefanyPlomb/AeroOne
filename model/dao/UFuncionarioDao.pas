unit UFuncionarioDao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UConn;


type
  TFuncionarioModel = class
  private
  public
     procedure AbrirFuncionarios;
     procedure SalvarFuncionarios(const Nome, Email, Cargo, CPF, Telefone, CEP, Rua, Escolaridade: string);
     procedure AtualizarFuncionarios(const Nome, Email, Cargo, CPF, Telefone, CEP, Rua, Escolaridade: string);
     procedure Buscar(const filtro: string);
     procedure EditarFuncionario (const Nome, Email, Cargo, CPF, Telefone, CEP, Rua, Escolaridade: string);
     procedure Exluir;
  end;

implementation

{ TFuncionario }

procedure TFuncionarioModel.AbrirFuncionarios;
begin
    DataModuleConn.FDQueryFuncionario.Close;
    DataModuleConn.FDQueryFuncionario.SQL.Text := 'SELECT * FROM usuarios ORDER BY id_usuario';
    DataModuleConn.FDQueryFuncionario.Open;
end;

procedure TFuncionarioModel.SalvarFuncionarios(const Nome, Email, Cargo, CPF, Telefone, CEP, Rua, Escolaridade: string);
begin
  DataModuleConn.FDQueryFuncionario.Append;
    DataModuleConn.FDQueryFuncionario.FieldByName('nome').AsString := Nome;
    DataModuleConn.FDQueryFuncionario.FieldByName('email').AsString := Email;
    DataModuleConn.FDQueryFuncionario.FieldByName('cargo').AsString := Cargo;
    DataModuleConn.FDQueryFuncionario.FieldByName('cpf').AsString := CPF;
    DataModuleConn.FDQueryFuncionario.FieldByName('telefone').AsString := Telefone;
    DataModuleConn.FDQueryFuncionario.FieldByName('cep').AsString := CEP;
    DataModuleConn.FDQueryFuncionario.FieldByName('rua').AsString := Rua;
    DataModuleConn.FDQueryFuncionario.FieldByName('escolaridade').AsString := Escolaridade;
    DataModuleConn.FDQueryFuncionario.FieldByName('senha').AsString := '123';
    DataModuleConn.FDQueryFuncionario.Post;
    DataModuleConn.FDQueryFuncionario.Refresh;
end;

procedure TFuncionarioModel.AtualizarFuncionarios(const Nome, Email, Cargo,CPF, Telefone, CEP, Rua, Escolaridade: string);
begin
   DataModuleConn.FDQueryFuncionario.Edit;
    DataModuleConn.FDQueryFuncionario.FieldByName('nome').AsString := Nome;
    DataModuleConn.FDQueryFuncionario.FieldByName('email').AsString := Email;
    DataModuleConn.FDQueryFuncionario.FieldByName('cargo').AsString := Cargo;
    DataModuleConn.FDQueryFuncionario.FieldByName('cpf').AsString := CPF;
    DataModuleConn.FDQueryFuncionario.FieldByName('telefone').AsString := Telefone;
    DataModuleConn.FDQueryFuncionario.FieldByName('cep').AsString := CEP;
    DataModuleConn.FDQueryFuncionario.FieldByName('rua').AsString := Rua;
    DataModuleConn.FDQueryFuncionario.FieldByName('escolaridade').AsString := Escolaridade;
    DataModuleConn.FDQueryFuncionario.Post;
    DataModuleConn.FDQueryFuncionario.Refresh;
    ShowMessage('Funcionário atualizado com sucesso!');
end;

procedure TFuncionarioModel.Buscar(const filtro: string);
begin
  with DataModuleConn.FDQueryFuncionario do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM usuarios WHERE nome ILIKE :filtro or cargo ILIKE :filtro');
    ParamByName('filtro').AsString := '%' + Filtro + '%';
    Open;
  end;
end;

procedure TFuncionarioModel.EditarFuncionario(const Nome, Email, Cargo, CPF,Telefone, CEP, Rua, Escolaridade: string);
begin
end;

procedure TFuncionarioModel.Exluir;
begin
   DataModuleConn.FDQueryFuncionario.Delete;
   DataModuleConn.FDQueryFuncionario.Refresh;
   ShowMessage('Funcionário excluído com sucesso!');
end;

end.
