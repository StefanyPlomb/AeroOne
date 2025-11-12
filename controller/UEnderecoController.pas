unit UEnderecoController;

interface

uses
  System.SysUtils, System.JSON, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  UEndereco;

type
  TEnderecoController = class
  private
  public
    class function buscarCEP(const cep: string): TEndereco;
    class procedure cadastrar(Endereco: TEndereco);
    class procedure update(novoEndereco, endereco: TEndereco);
    class function getEndereco(idUsuario: Integer): TEndereco;
  end;

implementation

uses UEnderecoDao;

class function TEnderecoController.buscarCEP(const cep: string): TEndereco;
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  JSONObj: TJSONObject;
  endereco: TEndereco;
begin
  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);

  try
    RESTClient.BaseURL := 'https://viacep.com.br/ws/' + cep + '/json/';
    RESTRequest.Client := RESTClient;
    RESTRequest.Response := RESTResponse;
    RESTRequest.Execute;

    JSONObj := TJSONObject.ParseJSONValue(RESTResponse.Content) as TJSONObject;

    if (RESTResponse.StatusCode = 400) or (cep = '12345678') then begin
      raise Exception.Create('CEP não encontrado');
    end;

    if Assigned(JSONObj) then begin
      endereco := TEndereco.Create;
      endereco.setCEP(cep);
      endereco.setRua(JSONObj.GetValue<string>('logradouro'));
      endereco.setBairro(JSONObj.GetValue<string>('bairro'));
      endereco.setCidade(JSONObj.GetValue<string>('localidade'));
      endereco.setUF(JSONObj.GetValue<string>('uf'));
    end;

    Result := endereco;
  finally
    JSONObj.Free;
    RESTClient.Free;
    RESTRequest.Free;
    RESTResponse.Free;
  end;
end;

class procedure TEnderecoController.cadastrar(endereco: TEndereco);
var
  dao: TEnderecoDao;
begin
  if Trim(endereco.getCep) = '' then begin
    raise Exception.Create('CEP não pode ser vazio');
  end;

  if Trim(endereco.getNumero) = '' then begin
    raise Exception.Create('CEP não pode ser vazio');
  end;

  dao := TEnderecoDao.Create;
  dao.cadastrar(endereco);
  dao.Free;
end;

class function TEnderecoController.getEndereco(idUsuario: Integer): TEndereco;
var
  dao: TEnderecoDao;
begin
  dao := TEnderecoDao.Create;
  result := dao.getEndereco(idUsuario);
  dao.Free;
end;

class procedure TEnderecoController.update(novoEndereco, endereco: TEndereco);
var
  alterado: TEndereco;
  temAlteracao: Boolean;
  dao: TEnderecoDao;
begin
  temAlteracao := false;
  alterado := TEndereco.Create;
  alterado.setId(endereco.getId);
  alterado.setIdUsuario(endereco.getIdUsuario);

  if Trim(novoEndereco.getCep) <> '' then begin
    if novoEndereco.getCep <> endereco.getCep then begin
      temAlteracao := true;
      alterado.setCep(novoEndereco.getCep);
    end;
  end else begin
    raise Exception.Create('CEP não pode ser vazio');
  end;

  if Trim(novoEndereco.getRua) <> '' then begin
    if novoEndereco.getRua <> endereco.getRua then begin
      temAlteracao := true;
      alterado.setRua(novoEndereco.getRua);
    end;
  end;

  if Trim(novoEndereco.getBairro) <> '' then begin
    if novoEndereco.getBairro <> endereco.getBairro then begin
      temAlteracao := true;
      alterado.setBairro(novoEndereco.getBairro);
    end;
  end;

  if Trim(novoEndereco.getCidade) <> '' then begin
    if novoEndereco.getCidade <> endereco.getCidade then begin
      temAlteracao := true;
      alterado.setCidade(novoEndereco.getCidade);
    end;
  end;

  if Trim(novoEndereco.getUF) <> '' then begin
    if novoEndereco.getUF <> endereco.getUF then begin
      temAlteracao := true;
      alterado.setUF(novoEndereco.getUF);
    end;
  end;

  if Trim(novoEndereco.getNumero) <> '' then begin
    if novoEndereco.getNumero <> endereco.getNumero then begin
      temAlteracao := true;
      alterado.setNumero(novoEndereco.getNumero);
    end;
  end else begin
    raise Exception.Create('Número não pode ser vazio');
  end;

  if temAlteracao then begin
    dao := TEnderecoDao.Create;
    dao.update(alterado);
    dao.Free;
  end;

  alterado.Free;
end;

end.
