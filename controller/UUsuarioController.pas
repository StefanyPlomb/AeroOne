unit UUsuarioController;

interface

uses SysUtils, System.Hash, UUsuario;

type
   TUsuarioController = class
  public
    class function login(email, senha: String): TUsuario;
  end;

implementation

uses UUsuarioDao, UExceptions;

{ TUsuarioController }

class function TUsuarioController.login(email, senha: String): TUsuario;
var
  senhaHash, senhaUsuario: String;
  dao: TUsuarioDao;
  usuario: TUsuario;
begin
  if trim(email) = '' then begin
    raise WarningException.create('O email não pode ser vazio');
  end;

  if not email.Contains('@') then begin
    raise WarningException.create('O email deve conter "@"');
  end;

  if trim(senha) = '' then begin
    raise WarningException.create('A senha não pode ser vazia');
  end;

  usuario := dao.login(email);

  if (THashSHA2.GetHashString(senha) <> usuario.getSenha) or (usuario = nil) then begin
    raise WarningException.create('Email ou senha incorretos');
  end;

  result := usuario;
end;

end.
