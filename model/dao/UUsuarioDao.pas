unit UUsuarioDao;

interface

uses UUsuario, UEndereco;

type
  TUsuarioDao = class
  public
    function login(email: String): TUsuario;
    procedure update(usuario: TUsuario);
  end;

implementation

uses UConn, FireDAC.Comp.Client, System.SysUtils;

{ TUsuarioDao }

function TUsuarioDao.login(email: String): TUsuario;
var
  query: TFDQuery;
  usuario: TUsuario;
begin
  query := DataModuleConn.FDQueryLogin;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM usuarios WHERE email = :email');
  query.ParamByName('email').AsString := email;
  query.Open;

  if not DataModuleConn.FDQueryLogin.IsEmpty then begin
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
