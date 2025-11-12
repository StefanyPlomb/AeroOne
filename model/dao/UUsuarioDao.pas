unit UUsuarioDao;

interface

uses UUsuario, UEndereco;

type
  TUsuarioDao = class
  public
    procedure getUsuarios(id: Integer; nome, status: String);
    function getUsuario(id: Integer): TUsuario;
    function getUsuarioByEmail(email: String): TUsuario;
    function login(email: String): TUsuario;
    procedure cadastrar(usuario: TUsuario);
    procedure update(usuario: TUsuario);
  end;

implementation

uses UConn, FireDAC.Comp.Client, System.SysUtils;

{ TUsuarioDao }

procedure TUsuarioDao.cadastrar(usuario: TUsuario);
var
  query: TFDQuery;
begin
  query := DataModuleConn.FDQueryFuncionario;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('INSERT INTO usuarios (nome, email, senha, telefone, cargo, cpf, passaporte, status)');
  query.SQL.Add('VALUES (:nome, :email, :senha, :telefone, :cargo, :cpf, :passaporte, :status)');

  query.ParamByName('nome').AsString := usuario.getNome;
  query.ParamByName('email').AsString := usuario.getEmail;
  query.ParamByName('senha').AsString := usuario.getSenha;
  query.ParamByName('telefone').AsString := usuario.getTelefone;
  query.ParamByName('cargo').AsString := usuario.getCargo;
  query.ParamByName('cpf').AsString := usuario.getCPF;
  query.ParamByName('passaporte').AsString := usuario.getPassaporte;
  query.ParamByName('status').AsString := 'A';

  query.ExecSQL;
end;

function TUsuarioDao.getUsuario(id: Integer): TUsuario;
var
  query: TFDQuery;
  usuario: TUsuario;
begin
  query := DataModuleConn.FDQueryFuncionario;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM usuarios WHERE id = :id');
  query.ParamByName('id').AsInteger := id;
  query.Open;

  if not query.IsEmpty then begin
    usuario := TUsuario.Create;
    usuario.setId(query.FieldByName('id').AsInteger);
    usuario.setNome(query.FieldByName('nome').AsString);
    usuario.setEmail(query.FieldByName('email').AsString);
    usuario.setSenha(query.FieldByName('senha').AsString);
    usuario.setTelefone(query.FieldByName('telefone').AsString);
    usuario.setCargo(query.FieldByName('cargo').AsString);
    usuario.setCPF(query.FieldByName('cpf').AsString);
    usuario.setPassaporte(query.FieldByName('passaporte').AsString);
    result := usuario;
  end else begin
    result := nil;
  end;
end;

function TUsuarioDao.getUsuarioByEmail(email: String): TUsuario;
var
  query: TFDQuery;
  usuario: TUsuario;
begin
  query := DataModuleConn.FDQueryFuncionario;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM usuarios WHERE UPPER(email) = :email');
  query.ParamByName('email').AsString := email.ToUpper;
  query.Open;

  if not query.IsEmpty then begin
    usuario := TUsuario.Create;
    usuario.setId(query.FieldByName('id').AsInteger);
    usuario.setNome(query.FieldByName('nome').AsString);
    usuario.setEmail(query.FieldByName('email').AsString);
    usuario.setSenha(query.FieldByName('senha').AsString);
    usuario.setTelefone(query.FieldByName('telefone').AsString);
    usuario.setCargo(query.FieldByName('cargo').AsString);
    usuario.setCPF(query.FieldByName('cpf').AsString);
    usuario.setPassaporte(query.FieldByName('passaporte').AsString);
    result := usuario;
  end else begin
    result := nil;
  end;
end;

procedure TUsuarioDao.getUsuarios(id: Integer; nome, status: String);
var
  query: TFDQuery;
  sql: String;
begin
  query := DataModuleConn.FDQueryFuncionario;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM usuarios');

  if (id <> 0) or (nome <> '') or (status <> '') then begin
    query.SQL.Add('WHERE 1=1');
  end;

  if id <> 0 then begin
    query.SQL.Add('AND id = :id');
  end;

  if nome <> '' then begin
    query.SQL.Add('AND nome ilike :nome');
  end;

  if status <> '' then begin
    query.SQL.Add('AND status = :status');
  end;

  query.SQL.Add('ORDER BY id');

  if id <> 0 then begin
    query.ParamByName('id').AsInteger := id;
  end;

  if nome <> '' then begin
    nome := '%' + nome + '%';
    query.ParamByName('nome').AsString := nome;
  end;

  if status <> '' then begin
    query.ParamByName('status').AsString := status;
  end;

  query.Open;
end;

function TUsuarioDao.login(email: String): TUsuario;
var
  query: TFDQuery;
  usuario: TUsuario;
begin
  query := DataModuleConn.FDQueryLogin;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM usuarios WHERE email = :email AND status = ' + QuotedStr('A') + '');
  query.ParamByName('email').AsString := email;
  query.Open;

  if not query.IsEmpty then begin
    usuario := TUsuario.Create;
    usuario.setId(query.FieldByName('id').AsInteger);
    usuario.setNome(query.FieldByName('nome').AsString);
    usuario.setEmail(query.FieldByName('email').AsString);
    usuario.setSenha(query.FieldByName('senha').AsString);
    usuario.setTelefone(query.FieldByName('telefone').AsString);
    usuario.setCargo(query.FieldByName('cargo').AsString);
    usuario.setCPF(query.FieldByName('cpf').AsString);
    usuario.setPassaporte(query.FieldByName('passaporte').AsString);
    result := usuario;
  end else begin
    result := nil;
  end;
end;

procedure TUsuarioDao.update(usuario: TUsuario);
var
  query: TFDQuery;
  sql: String;
begin
  query := DataModuleConn.FDQueryFuncionario;
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('UPDATE usuarios SET');

  if usuario.getNome <> '' then begin
    query.SQL.Add('nome = :nome, ');
  end;
  if usuario.getEmail <> '' then begin
    query.SQL.Add('email = :email, ');
  end;
  if usuario.getSenha <> '' then begin
    query.SQL.Add('senha = :senha, ');
  end;
  if usuario.getTelefone <> '' then begin
    query.SQL.Add('telefone = :telefone, ');
  end;
  if usuario.getCargo <> '' then begin
    query.SQL.Add('cargo = :cargo, ');
  end;
  if usuario.getCPF <> '' then begin
    query.SQL.Add('cpf = :cpf, ');
  end;
  if usuario.getPassaporte <> '' then begin
    query.SQL.Add('passaporte = :passaporte, ');
  end;
  if usuario.getStatus <> '' then begin
    query.SQL.Add('status = :status, ');
  end;

  sql := Trim(query.SQL.Text);
  if sql.EndsWith(',') then begin
    Delete(sql, Length(sql), 1);
  end;
  query.SQL.Text := sql + sLineBreak + 'WHERE id = :id';

  query.ParamByName('id').AsInteger := usuario.getId;
  if usuario.getNome <> '' then begin
    query.ParamByName('nome').AsString := usuario.getNome;
  end;
  if usuario.getEmail <> '' then begin
    query.ParamByName('email').AsString := usuario.getEmail;
  end;
  if usuario.getSenha <> '' then begin
    query.ParamByName('senha').AsString := usuario.getSenha;
  end;
  if usuario.getTelefone <> '' then begin
    query.ParamByName('telefone').AsString := usuario.getTelefone;
  end;
  if usuario.getCargo <> '' then begin
    query.ParamByName('cargo').AsString := usuario.getCargo;
  end;
  if usuario.getCPF <> '' then begin
    query.ParamByName('cpf').AsString := usuario.getCPF;
  end;
  if usuario.getPassaporte <> '' then begin
    query.ParamByName('passaporte').AsString := usuario.getPassaporte;
  end;
  if usuario.getStatus <> '' then begin
    query.ParamByName('status').AsString := usuario.getStatus;
  end;

  query.ExecSQL;
end;

end.
