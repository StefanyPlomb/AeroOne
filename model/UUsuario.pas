unit UUsuario;

interface

uses UEndereco;

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
    Fstatus: String;
    Fendereco: TEndereco;
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
    function getStatus: String;
    procedure setStatus(const Value: String);
    function getEndereco: TEndereco;
    procedure setEndereco(const Value: TEndereco);
    procedure AssignFrom(copyUsuario: TUsuario);
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

function TUsuario.getStatus: String;
begin
  Result := Fstatus;
end;

procedure TUsuario.setStatus(const Value: String);
begin
  Fstatus := Value;
end;

function TUsuario.getEndereco: TEndereco;
begin
  Result := Fendereco;
end;

procedure TUsuario.setEndereco(const Value: TEndereco);
begin
  Fendereco := Value;
end;

procedure TUsuario.AssignFrom(copyUsuario: TUsuario);
begin
  if copyUsuario = nil then Exit;
  setId(copyUsuario.getId);
  setNome(copyUsuario.getNome);
  setEmail(copyUsuario.getEmail);
  setSenha(copyUsuario.getSenha);
  setTelefone(copyUsuario.getTelefone);
  setCargo(copyUsuario.getCargo);
  setCPF(copyUsuario.getCPF);
  setPassaporte(copyUsuario.getPassaporte);
  setStatus(copyUsuario.getStatus);

  if copyUsuario.getEndereco <> nil then begin
    if Fendereco = nil then Fendereco := TEndereco.Create;
    Fendereco.setId(copyUsuario.getEndereco.getId);
    Fendereco.setIdUsuario(copyUsuario.getEndereco.getIdUsuario);
    Fendereco.setCep(copyUsuario.getEndereco.getCep);
    Fendereco.setRua(copyUsuario.getEndereco.getRua);
    Fendereco.setBairro(copyUsuario.getEndereco.getBairro);
    Fendereco.setCidade(copyUsuario.getEndereco.getCidade);
    Fendereco.setUF(copyUsuario.getEndereco.getUF);
    Fendereco.setNumero(copyUsuario.getEndereco.getNumero);
  end else begin
    if Fendereco <> nil then begin
      Fendereco.Free;
      Fendereco := nil;
    end;
  end;
end;

end.
