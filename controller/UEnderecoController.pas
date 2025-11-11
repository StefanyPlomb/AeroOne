unit UEnderecoController;

interface

uses
  System.SysUtils, System.JSON, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  UEndereco;

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

uses UConn;

{-------------------------------------------------------------}
class function TEnderecoController.ExisteEndereco(IdUsuario: Integer): Boolean;
begin
  with DataModuleConn.FDQueryEndereco do
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
  with DataModuleConn.FDQueryEndereco do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO enderecos (id_usuario, cep, rua, bairro, cidade)');
    SQL.Add('VALUES (:id_usuario, :cep, :rua, :bairro, :cidade)');
    ParamByName('id_usuario').AsInteger := Endereco.getIdUsuario;
    ParamByName('cep').AsString := Endereco.getCep;
    ParamByName('rua').AsString := Endereco.getRua;
    ParamByName('bairro').AsString := Endereco.getBairro;
    ParamByName('cidade').AsString := Endereco.getCidade;
    ExecSQL;
  end;
end;

{-------------------------------------------------------------}
class procedure TEnderecoController.AtualizarEndereco(Endereco: TEndereco);
begin
  with DataModuleConn.FDQueryEndereco do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE enderecos SET');
    SQL.Add('  cep = :cep,');
    SQL.Add('  rua = :rua,');
    SQL.Add('  bairro = :bairro,');
    SQL.Add('  cidade = :cidade');
    SQL.Add('WHERE id_usuario = :id_usuario');
    ParamByName('id_usuario').AsInteger := Endereco.getIdUsuario;
    ParamByName('cep').AsString := Endereco.getCep;
    ParamByName('rua').AsString := Endereco.getRua;
    ParamByName('bairro').AsString := Endereco.getBairro;
    ParamByName('cidade').AsString := Endereco.getCidade;
    ExecSQL;
  end;
end;

{-------------------------------------------------------------}
class procedure TEnderecoController.LimparEndereco(IdUsuario: Integer);
begin
  with DataModuleConn.FDQueryEndereco do
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
  if (Trim(Endereco.getCep) = '') and (Trim(Endereco.getRua) = '') and
     (Trim(Endereco.getBairro) = '') and (Trim(Endereco.getCidade) = '') then
  begin
    LimparEndereco(Endereco.getIdUsuario);
  end
  else if ExisteEndereco(Endereco.getIdUsuario) then
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
      Endereco.setCEP(ACEP);
      Endereco.setRua(JSONObj.GetValue<string>('logradouro'));
      Endereco.setBairro(JSONObj.GetValue<string>('bairro'));
      Endereco.setCidade(JSONObj.GetValue<string>('localidade'));
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

