unit UUsuarioDao;

interface

uses UUsuario;

type
  TUsuarioDao = class
  public
    function login(email: String): TUsuario;
  end;

implementation

uses UConn, FireDAC.Comp.Client;

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

end.
