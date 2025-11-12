unit UEnderecoDao;

interface

uses UEndereco;

type
  TEnderecoDao = class
  private
  public
    procedure cadastrar(endereco: TEndereco);
    procedure update(endereco: TEndereco);
    function getEndereco(idUsuario: Integer): TEndereco;
  end;

implementation

uses System.SysUtils, UConn, FireDAC.Comp.Client;

{ UEnderecoDao }

procedure TEnderecoDao.cadastrar(endereco: TEndereco);
var
  query: TFDQuery;
begin
  query := DataModuleConn.FDQueryEndereco;
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('INSERT INTO enderecos (idUsuario, cep, rua, bairro, cidade, uf, numero)');
  query.SQL.Add('VALUES (:idUsuario, :cep, :rua, :bairro, :cidade, :uf, :numero)');
  query.ParamByName('idUsuario').AsInteger := endereco.getIdUsuario;
  query.ParamByName('cep').AsString := endereco.getCep;
  query.ParamByName('rua').AsString := endereco.getRua;
  query.ParamByName('bairro').AsString := endereco.getBairro;
  query.ParamByName('cidade').AsString := endereco.getCidade;
  query.ParamByName('uf').AsString := endereco.getUF;
  query.ParamByName('numero').AsString := endereco.getNumero;
  query.ExecSQL;
end;

procedure TEnderecoDao.update(endereco: TEndereco);
var
  query: TFDQuery;
  sql: String;
begin
  query := DataModuleConn.FDQueryEndereco;
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('UPDATE enderecos SET');
  if endereco.getCep <> '' then begin
    query.SQL.Add('cep = :cep, ');
  end;
  if endereco.getRua <> '' then begin
    query.SQL.Add('rua = :rua, ');
  end;
  if endereco.getBairro <> '' then begin
    query.SQL.Add('bairro = :bairro, ');
  end;
  if endereco.getCidade <> '' then begin
    query.SQL.Add('cidade = :cidade, ');
  end;
  if endereco.getUf <> '' then begin
    query.SQL.Add('uf = :uf, ');
  end;
  if endereco.getNumero <> '' then begin
    query.SQL.Add('numero = :numero, ');
  end;

  sql := Trim(query.SQL.Text);
  if sql.EndsWith(',') then begin
    Delete(sql, Length(sql), 1);
  end;
  query.SQL.Text := sql + sLineBreak + 'WHERE idUsuario = :idUsuario';

  query.ParamByName('idUsuario').AsInteger := endereco.getIdUsuario;
  if endereco.getCep <> '' then begin
    query.ParamByName('cep').AsString := endereco.getCep;
  end;
  if endereco.getRua <> '' then begin
    query.ParamByName('rua').AsString := endereco.getRua;
  end;
  if endereco.getBairro <> '' then begin
    query.ParamByName('bairro').AsString := endereco.getBairro;
  end;
  if endereco.getCidade <> '' then begin
    query.ParamByName('cidade').AsString := endereco.getCidade;
  end;
  if endereco.getUF <> '' then begin
    query.ParamByName('uf').AsString := endereco.getUF;
  end;
  if endereco.getNumero <> '' then begin
    query.ParamByName('numero').AsString := endereco.getNumero;
  end;

  query.ExecSQL;
end;

function TEnderecoDao.getEndereco(idUsuario: Integer): TEndereco;
var
  query: TFDQuery;
  endereco: TEndereco;
begin
  query := DataModuleConn.FDQueryLogin;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM enderecos WHERE idUsuario = :idUsuario');
  query.ParamByName('idUsuario').AsInteger := idUsuario;
  query.Open;

  if not DataModuleConn.FDQueryLogin.IsEmpty then begin
    endereco := TEndereco.Create;
    endereco.setId(query.FieldByName('id').AsInteger);
    endereco.setIdUsuario(query.FieldByName('idUsuario').AsInteger);
    endereco.setCep(query.FieldByName('cep').AsString);
    endereco.setRua(query.FieldByName('rua').AsString);
    endereco.setBairro(query.FieldByName('bairro').AsString);
    endereco.setCidade(query.FieldByName('cidade').AsString);
    endereco.setUF(query.FieldByName('uf').AsString);
    endereco.setNumero(query.FieldByName('numero').AsString);
    result := endereco;
  end else begin
    result := nil;
  end;
end;

end.
