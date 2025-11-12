unit UUsuarioController;

interface

uses SysUtils, System.Hash, UUsuario, UEndereco;

type
  TUsuarioController = class
  public
    class function login(email, senha: String): TUsuario;
    class procedure update(novoUsuario, usuario: TUsuario);
  end;

implementation

uses UUsuarioDao, UEnderecoController;

{ TUsuarioController }

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

  if (usuario = nil) or (THashSHA2.GetHashString(senha) <> usuario.getSenha) then begin
    raise Exception.create('Email ou senha incorretos');
  end;

  result := usuario;
end;

class procedure TUsuarioController.update(novoUsuario, usuario: TUsuario);
var
  alterado: TUsuario;
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

//    if TUsuarioController.getUsuarioByEmail(novoUsuario.getEmail) then begin
//      raise Exception.Create('Email já cadastrado');
//    end;

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
    if novoUsuario.getCPF <> usuario.getCPF then begin
      temAlteracao := true;
      alterado.setCPF(novoUsuario.getCPF);
    end;
  end else begin
    raise Exception.Create('CPF não pode ser vazio');
  end;

  if Trim(novoUsuario.getPassaporte) <> '' then begin
    if novoUsuario.getPassaporte <> usuario.getPassaporte then begin
      temAlteracao := true;
      alterado.setPassaporte(novoUsuario.getPassaporte);
    end;
  end else begin
    raise Exception.Create('Passaporte não pode ser vazio');
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
      TEnderecoController.cadastrar(novoUsuario.getEndereco);
    end else begin
      TEnderecoController.update(novoUsuario.getEndereco, usuario.getEndereco);
    end;
  end;
end;

end.
