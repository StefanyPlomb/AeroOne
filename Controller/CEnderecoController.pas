unit CEnderecoController;

interface

uses
  System.SysUtils, System.JSON, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  MEndereco, UData;

type
  TEnderecoController = class
  private
    class function ExisteEndereco(IdUsuario: Integer): Boolean;
    class procedure InserirEndereco(Endereco: TEndereco);
    class procedure AtualizarEndereco(Endereco: TEndereco);
    class procedure LimparEndereco(IdUsuario: Integer);
  public
    class function BuscarPorCEP(const ACEP: string): TEndereco;
    class procedure SalvarEndereco(Endereco: TEndereco);
  end;

implementation

{-------------------------------------------------------------}
class function TEnderecoController.ExisteEndereco(IdUsuario: Integer): Boolean;
begin
  with DataModule1.FDQueryEndereco do
  begin
    Close;
    SQL.Text := 'SELECT COUNT(*) FROM enderecos WHERE id_usuario = :id';
    ParamByName('id').AsInteger := IdUsuario;
    Open;
    Result := Fields[0].AsInteger > 0;
    Close;
  end;
end;

{-------------------------------------------------------------}
class procedure TEnderecoController.InserirEndereco(Endereco: TEndereco);
begin
  with DataModule1.FDQueryEndereco do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO enderecos (id_usuario, cep, rua, bairro, cidade)');
    SQL.Add('VALUES (:id_usuario, :cep, :rua, :bairro, :cidade)');
    ParamByName('id_usuario').AsInteger := Endereco.IdUsuario;
    ParamByName('cep').AsString := Endereco.Cep;
    ParamByName('rua').AsString := Endereco.Rua;
    ParamByName('bairro').AsString := Endereco.Bairro;
    ParamByName('cidade').AsString := Endereco.Cidade;
    ExecSQL;
  end;
end;

{-------------------------------------------------------------}
class procedure TEnderecoController.AtualizarEndereco(Endereco: TEndereco);
begin
  with DataModule1.FDQueryEndereco do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE enderecos SET');
    SQL.Add('  cep = :cep,');
    SQL.Add('  rua = :rua,');
    SQL.Add('  bairro = :bairro,');
    SQL.Add('  cidade = :cidade');
    SQL.Add('WHERE id_usuario = :id_usuario');
    ParamByName('id_usuario').AsInteger := Endereco.IdUsuario;
    ParamByName('cep').AsString := Endereco.Cep;
    ParamByName('rua').AsString := Endereco.Rua;
    ParamByName('bairro').AsString := Endereco.Bairro;
    ParamByName('cidade').AsString := Endereco.Cidade;
    ExecSQL;
  end;
end;

{-------------------------------------------------------------}
class procedure TEnderecoController.LimparEndereco(IdUsuario: Integer);
begin
  with DataModule1.FDQueryEndereco do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM enderecos WHERE id_usuario = :id_usuario');
    ParamByName('id_usuario').AsInteger := IdUsuario;
    ExecSQL;
  end;
end;

{-------------------------------------------------------------}
class procedure TEnderecoController.SalvarEndereco(Endereco: TEndereco);
begin
  if (Trim(Endereco.Cep) = '') and (Trim(Endereco.Rua) = '') and
     (Trim(Endereco.Bairro) = '') and (Trim(Endereco.Cidade) = '') then
  begin
    LimparEndereco(Endereco.IdUsuario);
  end
  else if ExisteEndereco(Endereco.IdUsuario) then
  begin
    AtualizarEndereco(Endereco);
  end
  else
  begin
    InserirEndereco(Endereco);
  end;
end;

{-------------------------------------------------------------}
class function TEnderecoController.BuscarPorCEP(const ACEP: string): TEndereco;
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  JSONObj: TJSONObject;
  Endereco: TEndereco;
begin
  Endereco := TEndereco.Create;
  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);

  try
    RESTClient.BaseURL := 'https://viacep.com.br/ws/' + ACEP + '/json/';
    RESTRequest.Client := RESTClient;
    RESTRequest.Response := RESTResponse;
    RESTRequest.Execute;

    JSONObj := TJSONObject.ParseJSONValue(RESTResponse.Content) as TJSONObject;

    if Assigned(JSONObj) then
    begin
      Endereco.CEP := ACEP;
      Endereco.Rua := JSONObj.GetValue<string>('logradouro');
      Endereco.Bairro := JSONObj.GetValue<string>('bairro');
      Endereco.Cidade := JSONObj.GetValue<string>('localidade');
    end;

    Result := Endereco;
  finally
    JSONObj.Free;
    RESTClient.Free;
    RESTRequest.Free;
    RESTResponse.Free;
  end;
end;

end.

