unit UEndereco;

interface

type
  TEndereco = class
  private
    Fid: Integer;
    FidUsuario: Integer;
    Fcep: String;
    Frua: String;
    Fbairro: String;
    Fcidade: String;
    FUF: String;
    Fnumero: String;
  public
    function getId: Integer;
    procedure setId(const Value: Integer);
    function getIdUsuario: Integer;
    procedure setIdUsuario(const Value: Integer);
    function getCep: String;
    procedure setCep(const Value: String);
    function getRua: String;
    procedure setRua(const Value: String);
    function getBairro: String;
    procedure setBairro(const Value: String);
    function getCidade: String;
    procedure setCidade(const Value: String);
    function getUF: String;
    procedure setUF(const Value: String);
    function getNumero: String;
    procedure setNumero(const Value: String);
  end;

implementation

{ TEndereco }

function TEndereco.getId: Integer;
begin
  Result := Fid;
end;

procedure TEndereco.setId(const Value: Integer);
begin
  Fid := Value;
end;

function TEndereco.getIdUsuario: Integer;
begin
  Result := FidUsuario;
end;

procedure TEndereco.setIdUsuario(const Value: Integer);
begin
  FidUsuario := Value;
end;

function TEndereco.getCep: String;
begin
  Result := Fcep;
end;

procedure TEndereco.setCep(const Value: String);
begin
  Fcep := Value;
end;

function TEndereco.getRua: String;
begin
  Result := Frua;
end;

procedure TEndereco.setRua(const Value: String);
begin
  Frua := Value;
end;

function TEndereco.getBairro: String;
begin
  Result := Fbairro;
end;

procedure TEndereco.setBairro(const Value: String);
begin
  Fbairro := Value;
end;

function TEndereco.getCidade: String;
begin
  Result := Fcidade;
end;

procedure TEndereco.setCidade(const Value: String);
begin
  Fcidade := Value;
end;

function TEndereco.getUF: String;
begin
  Result := FUF;
end;

procedure TEndereco.setUF(const Value: String);
begin
  FUF := Value;
end;

function TEndereco.getNumero: String;
begin
  Result := Fnumero;
end;

procedure TEndereco.setNumero(const Value: String);
begin
  Fnumero := Value;
end;

end.
