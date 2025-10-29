unit CEnderecoController;

interface

uses
  System.SysUtils, System.JSON, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, MEndereco, UData;

type
  TEnderecoController  = Class

  private
   //  FIdUsuario: Integer;

  public
    class function BuscarPorCEP(const ACEP: string): TEndereco;
    class procedure SalvarEndereco(Endereco: TEndereco);
   // property IdUsuario: Integer read FIdUsuario write FIdUsuario;
  End;

implementation

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
      Endereco.Logradouro := JSONObj.GetValue<string>('logradouro');
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


class procedure TEnderecoController.SalvarEndereco(Endereco: TEndereco);
begin
  with DataModule1.FDQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO enderecos (id_usuario, cep, logradouro, bairro, cidade)');
    SQL.Add('VALUES (:id_usuario, :cep, :logradouro, :bairro, :cidade)');
    ParamByName('id_usuario').AsInteger := Endereco.IdUsuario;
    ParamByName('cep').AsString := Endereco.Cep;
    ParamByName('logradouro').AsString := Endereco.Logradouro;
    ParamByName('bairro').AsString := Endereco.Bairro;
    ParamByName('cidade').AsString := Endereco.Cidade;
    ExecSQL;
  end;
end;


end.
