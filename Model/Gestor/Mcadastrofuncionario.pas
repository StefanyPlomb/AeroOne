unit Mcadastrofuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UData;


type
  TFuncionarioCadastro = class
  private
    FNome: string;
    FCargo: string;
    FEmail: string;
    FTelefone: string;
    FCPF: string;
    FRG: string;
    FPassaporte: string;


    function GetNome: string;
    procedure SetNome(const Value: string);

    function GetCargo: string;
    procedure SetCargo(const Value: string);

    function GetEmail: string;
    procedure SetEmail(const Value: string);

    function GetTelefone: string;
    procedure SetTelefone(const Value: string);

    function GetCPF: string;
    procedure SetCPF(const Value: string);

    function GetRG: string;
    procedure SetRG(const Value: string);

    function GetPassaporte: string;
    procedure SetPassaporte(const Value: string);

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

procedure TFuncionarioCadastro.AbrirFuncionarios;
begin
    DataModule1.FDQueryFuncionarios.Close;
    DataModule1.FDQueryFuncionarios.SQL.Text := 'SELECT * FROM usuarios ORDER BY id_usuario';
    DataModule1.FDQueryFuncionarios.Open;
end;


procedure TFuncionarioCadastro.SalvarFuncionarios(const Nome, Email, Cargo, CPF, Telefone, CEP, Rua, Escolaridade: string);
begin
  DataModule1.FDQueryFuncionarios.Append;
    DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString := Nome;
    DataModule1.FDQueryFuncionarios.FieldByName('email').AsString := Email;
    DataModule1.FDQueryFuncionarios.FieldByName('cargo').AsString := Cargo;
    DataModule1.FDQueryFuncionarios.FieldByName('cpf').AsString := CPF;
    DataModule1.FDQueryFuncionarios.FieldByName('telefone').AsString := Telefone;
    DataModule1.FDQueryFuncionarios.FieldByName('cep').AsString := CEP;
    DataModule1.FDQueryFuncionarios.FieldByName('rua').AsString := Rua;
    DataModule1.FDQueryFuncionarios.FieldByName('escolaridade').AsString := Escolaridade;
    DataModule1.FDQueryFuncionarios.FieldByName('senha').AsString := '123';
    DataModule1.FDQueryFuncionarios.Post;
    DataModule1.FDQueryFuncionarios.Refresh;
end;


procedure TFuncionarioCadastro.AtualizarFuncionarios(const Nome, Email, Cargo,CPF, Telefone, CEP, Rua, Escolaridade: string);
begin
   DataModule1.FDQueryFuncionarios.Edit;
    DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString := Nome;
    DataModule1.FDQueryFuncionarios.FieldByName('email').AsString := Email;
    DataModule1.FDQueryFuncionarios.FieldByName('cargo').AsString := Cargo;
    DataModule1.FDQueryFuncionarios.FieldByName('cpf').AsString := CPF;
    DataModule1.FDQueryFuncionarios.FieldByName('telefone').AsString := Telefone;
    DataModule1.FDQueryFuncionarios.FieldByName('cep').AsString := CEP;
    DataModule1.FDQueryFuncionarios.FieldByName('rua').AsString := Rua;
    DataModule1.FDQueryFuncionarios.FieldByName('escolaridade').AsString := Escolaridade;
    DataModule1.FDQueryFuncionarios.Post;
    DataModule1.FDQueryFuncionarios.Refresh;
    ShowMessage('Funcionário atualizado com sucesso!');
end;


procedure TFuncionarioCadastro.Buscar(const filtro: string);
begin
  with DataModule1.FDQueryFuncionarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM usuarios WHERE nome ILIKE :filtro or cargo ILIKE :filtro');
    ParamByName('filtro').AsString := '%' + Filtro + '%';
    Open;
  end;

end;

procedure TFuncionarioCadastro.EditarFuncionario(const Nome, Email, Cargo, CPF,Telefone, CEP, Rua, Escolaridade: string);
begin

end;

procedure TFuncionarioCadastro.Exluir;
begin
   DataModule1.FDQueryFuncionarios.Delete;
   DataModule1.FDQueryFuncionarios.Refresh;
   ShowMessage('Funcionário excluído com sucesso!');
end;

{GET SET}


function TFuncionarioCadastro.GetNome: string;
begin
  Result := FNome;
end;

procedure TFuncionarioCadastro.SetNome(const Value: string);
begin
  FNome := Value;
end;

function TFuncionarioCadastro.GetCargo: string;
begin
  Result := FCargo;
end;

procedure TFuncionarioCadastro.SetCargo(const Value: string);
begin
  FCargo := Value;
end;

function TFuncionarioCadastro.GetEmail: string;
begin
  Result := FEmail;
end;

procedure TFuncionarioCadastro.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

function TFuncionarioCadastro.GetTelefone: string;
begin
  Result := FTelefone;
end;

procedure TFuncionarioCadastro.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

function TFuncionarioCadastro.GetCPF: string;
begin
  Result := FCPF;
end;

procedure TFuncionarioCadastro.SetCPF(const Value: string);
begin
  FCPF := Value;
end;

function TFuncionarioCadastro.GetRG: string;
begin
  Result := FRG;
end;

procedure TFuncionarioCadastro.SetRG(const Value: string);
begin
  FRG := Value;
end;

function TFuncionarioCadastro.GetPassaporte: string;
begin
  Result := FPassaporte;
end;

procedure TFuncionarioCadastro.SetPassaporte(const Value: string);
begin
  FPassaporte := Value;
end;

end.
