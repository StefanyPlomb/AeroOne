unit UUsuarioController;

interface

uses SysUtils, StrUtils, System.Hash, UUsuario, UEndereco;

type
  TUsuarioController = class
  private
    class function removeWordIgnoreCase(const Text, WordToRemove: String): String;
  public
    class procedure getUsuarios(id: Integer; nome, status: String);
    class function getUsuario(id: Integer): TUsuario;
    class function getUsuarioByEmail(email: String): TUsuario;
    class function login(email, senha: String): TUsuario;
    class function usuarioInativo(email, senha: String): Boolean;
    class function cadastrar(usuario: TUsuario): Integer;
    class procedure update(novoUsuario, usuario: TUsuario);
  end;

implementation

uses UUsuarioDao, UEnderecoController;

{ TUsuarioController }

class function TUsuarioController.cadastrar(usuario: TUsuario): Integer;
var
  dao: TUsuarioDao;
  usuarioEmail: TUsuario;
begin
  if Trim(usuario.getNome) = '' then begin
    raise Exception.Create('Nome não pode ser vazio');
  end;

  if Trim(usuario.getEmail) = '' then begin
    raise Exception.Create('Email não pode ser vazio');
  end;

  usuarioEmail := TUsuarioController.getUsuarioByEmail(usuario.getEmail);
  if usuarioEmail <> nil then begin
    usuarioEmail.Free;
    raise Exception.Create('Email já cadastrado');
  end;

  if Trim(usuario.getSenha) = '' then begin
    usuario.setSenha(THashSHA2.GetHashString('senha123'));
  end else begin
    usuario.setSenha(THashSHA2.GetHashString(usuario.getSenha));
  end;

  if Length(usuario.getSenha) < 8 then begin
    raise Exception.Create('A senha deve conter no mínimo 8 caracteres');
  end;

  if Trim(usuario.getCPF) = '' then begin
    raise Exception.Create('CPF não pode ser vazio');
  end;

  if Length(usuario.getCPF) < 11  then begin
    raise Exception.Create('CPF deve conter 11 digitos');
  end;

  if Trim(usuario.getPassaporte) <> '' then begin
    if Length(usuario.getPassaporte) < 8  then begin
      raise Exception.Create('Passaporte deve conter 8 digitos');
    end;
  end;

  dao := TUsuarioDao.Create;
  result := dao.cadastrar(usuario);
  dao.Free;
end;

class function TUsuarioController.getUsuario(id: Integer): TUsuario;
var
  dao: TUsuarioDao;
begin
  dao := TUsuarioDao.Create;
  result := dao.getUsuario(id);
  dao.Free;
end;

class function TUsuarioController.getUsuarioByEmail(email: String): TUsuario;
var
  dao: TUsuarioDao;
begin
  dao := TUsuarioDao.Create;
  result := dao.getUsuarioByEmail(email);
  dao.Free;
end;

class procedure TUsuarioController.getUsuarios(id: Integer; nome, status: String);
var
  dao: TUsuarioDao;
begin
  dao := TUsuarioDao.Create;
  nome := removeWordIgnoreCase(nome, 'ativo');
  nome := removeWordIgnoreCase(nome, 'inativo');
  dao.getUsuarios(id, nome, status);
  dao.Free;
end;

class function TUsuarioController.login(email, senha: String): TUsuario;
var
  senhaHash, senhaUsuario: String;
  dao: TUsuarioDao;
  usuario: TUsuario;
begin
  if trim(email) = '' then begin
    raise Exception.create('O email não pode ser vazio');
  end;

  if not email.Contains('@') then begin
    raise Exception.create('O email deve conter "@"');
  end;

  if trim(senha) = '' then begin
    raise Exception.create('A senha não pode ser vazia');
  end;

  dao := TUsuarioDao.Create;
  usuario := dao.login(email);
  dao.Free;

  senhaHash := THashSHA2.GetHashString(senha);

  if (usuario = nil) or (senhaHash <> usuario.getSenha) then begin
    raise Exception.create('Email ou senha incorretos');
  end;

  if TUsuarioController.usuarioInativo(email, senhaHash) then begin
    raise Exception.Create('Seu acesso está inativo. Favor contatar equipe de suporte');
  end;
  result := usuario;
end;

class function TUsuarioController.removeWordIgnoreCase(const Text, WordToRemove: String): String;
var
  Words: TArray<string>;
  i: Integer;
begin
  Result := '';
  Words := Text.Split([' ']);

  for i := Low(Words) to High(Words) do begin
    if not ContainsText(Words[i], WordToRemove) then begin
      if Result <> '' then
        Result := Result + ' ';
      Result := Result + Words[i];
    end;
  end;
end;

class procedure TUsuarioController.update(novoUsuario, usuario: TUsuario);
var
  alterado, usuarioEmail: TUsuario;
  temAlteracao: Boolean;
  dao: TUsuarioDao;
begin
  temAlteracao := false;
  alterado := TUsuario.Create;
  alterado.setId(usuario.getId);

  if Trim(novoUsuario.getNome) <> '' then begin
    if novoUsuario.getNome <> usuario.getNome then begin
      temAlteracao := true;
      alterado.setNome(novoUsuario.getNome);
    end;
  end else begin
    raise Exception.Create('Nome não pode ser vazio');
  end;

  if Trim(novoUsuario.getEmail) <> '' then begin
    usuarioEmail := TUsuarioController.getUsuarioByEmail(novoUsuario.getEmail);
    if usuarioEmail = nil then begin
      raise Exception.Create('Email já cadastrado');
    end;
    usuarioEmail.Free;

    if novoUsuario.getEmail <> usuario.getEmail then begin
      temAlteracao := true;
      alterado.setEmail(novoUsuario.getEmail);
    end;
  end else begin
    raise Exception.Create('Email não pode ser vazio');
  end;

  if Trim(novoUsuario.getSenha) <> '' then begin

    if Length(novoUsuario.getSenha) < 8 then begin
      raise Exception.Create('A senha deve conter no mínimo 8 caractéres');
    end;

    novoUsuario.setSenha(THashSHA2.GetHashString(novoUsuario.getSenha));
    if novoUsuario.getSenha <> usuario.getSenha then begin
      temAlteracao := true;
      alterado.setSenha(novoUsuario.getSenha);
    end;
  end;

  if Trim(novoUsuario.getTelefone) <> '' then begin
    if Length(novoUsuario.getTelefone) < 11  then begin
      raise Exception.Create('Telefone deve conter 11 digitos');
    end;

    if novoUsuario.getTelefone <> usuario.getTelefone then begin
      temAlteracao := true;
      alterado.setTelefone(novoUsuario.getTelefone);
    end;
  end;

  if Trim(novoUsuario.getCargo) <> '' then begin
    if novoUsuario.getCargo <> usuario.getCargo then begin
      temAlteracao := true;
      alterado.setCargo(novoUsuario.getCargo);
    end;
  end;

  if Trim(novoUsuario.getCPF) <> '' then begin
    if Length(novoUsuario.getCPF) < 11  then begin
      raise Exception.Create('CPF deve conter 11 digitos');
    end;

    if novoUsuario.getCPF <> usuario.getCPF then begin
      temAlteracao := true;
      alterado.setCPF(novoUsuario.getCPF);
    end;
  end else begin
    raise Exception.Create('CPF não pode ser vazio');
  end;

  if Trim(novoUsuario.getPassaporte) <> '' then begin
    if Length(novoUsuario.getPassaporte) < 8  then begin
      raise Exception.Create('Passaporte deve conter 8 digitos');
    end;

    if novoUsuario.getPassaporte <> usuario.getPassaporte then begin
      temAlteracao := true;
      alterado.setPassaporte(novoUsuario.getPassaporte);
    end;
  end;

  if Trim(novoUsuario.getStatus) <> '' then begin
    if novoUsuario.getStatus <> usuario.getStatus then begin
      temAlteracao := true;
      alterado.setStatus(novoUsuario.getStatus);
    end;
  end;

  if temAlteracao then begin
    dao := TUsuarioDao.Create;
    dao.update(alterado);
    dao.Free;
  end;
  alterado.Free;

  if novoUsuario.getEndereco <> nil then begin
    if usuario.getEndereco = nil then begin
      novoUsuario.getEndereco.setId(TEnderecoController.cadastrar(novoUsuario.getEndereco));
    end else begin
      TEnderecoController.update(novoUsuario.getEndereco, usuario.getEndereco);
    end;
  end;
end;

class function TUsuarioController.usuarioInativo(email, senha: String): Boolean;
var
  dao: TUsuarioDao;
begin
  dao := TUsuarioDao.Create;
  result := dao.usuarioInativo(email, senha);
  dao.Free;
end;

end.
