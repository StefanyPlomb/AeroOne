unit UUsuario;

interface

type
  TUsuario = class
  private
    Fid: Integer;
    Fnome: String;
    Femail: String;
    Fsenha: String;
    Ftelefone: String;
    Fcargo: String;
    FCPF: String;
    Fpassaporte: String;
    FCEP: Integer;
    Fendereco: String;
    Fnumero: Integer;
    Fstatus: String;
  public
    function getId: Integer;
    procedure setId(const Value: Integer);
    function getNome: String;
    procedure setNome(const Value: String);
    function getEmail: String;
    procedure setEmail(const Value: String);
    function getSenha: String;
    procedure setSenha(const Value: String);
    function getTelefone: String;
    procedure setTelefone(const Value: String);
    function getCargo: String;
    procedure setCargo(const Value: String);
    function getCPF: String;
    procedure setCPF(const Value: String);
    function getPassaporte: String;
    procedure setPassaporte(const Value: String);
    function getCEP: Integer;
    procedure setCEP(const Value: Integer);
    function getEndereco: String;
    procedure setEndereco(const Value: String);
    function getNumero: Integer;
    procedure setNumero(const Value: Integer);
    function getStatus: String;
    procedure setStatus(const Value: String);
  end;

implementation

{ TUsuario }

function TUsuario.getId: Integer;
begin
  Result := Fid;
end;

procedure TUsuario.setId(const Value: Integer);
begin
  Fid := Value;
end;

function TUsuario.getNome: String;
begin
  Result := Fnome;
end;

procedure TUsuario.setNome(const Value: String);
begin
  Fnome := Value;
end;

function TUsuario.getEmail: String;
begin
  Result := Femail;
end;

procedure TUsuario.setEmail(const Value: String);
begin
  Femail := Value;
end;

function TUsuario.getSenha: String;
begin
  Result := Fsenha;
end;

procedure TUsuario.setSenha(const Value: String);
begin
  Fsenha := Value;
end;

function TUsuario.getTelefone: String;
begin
  Result := Ftelefone;
end;

procedure TUsuario.setTelefone(const Value: String);
begin
  Ftelefone := Value;
end;

function TUsuario.getCargo: String;
begin
  Result := Fcargo;
end;

procedure TUsuario.setCargo(const Value: String);
begin
  Fcargo := Value;
end;

function TUsuario.getCPF: String;
begin
  Result := FCPF;
end;

procedure TUsuario.setCPF(const Value: String);
begin
  FCPF := Value;
end;

function TUsuario.getPassaporte: String;
begin
  Result := Fpassaporte;
end;

procedure TUsuario.setPassaporte(const Value: String);
begin
  Fpassaporte := Value;
end;

function TUsuario.getCEP: Integer;
begin
  Result := FCEP;
end;

procedure TUsuario.setCEP(const Value: Integer);
begin
  FCEP := Value;
end;

function TUsuario.getEndereco: String;
begin
  Result := Fendereco;
end;

procedure TUsuario.setEndereco(const Value: String);
begin
  Fendereco := Value;
end;

function TUsuario.getNumero: Integer;
begin
  Result := Fnumero;
end;

procedure TUsuario.setNumero(const Value: Integer);
begin
  Fnumero := Value;
end;

function TUsuario.getStatus: String;
begin
  Result := Fstatus;
end;

procedure TUsuario.setStatus(const Value: String);
begin
  Fstatus := Value;
end;

end.
