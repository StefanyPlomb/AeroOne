unit UAeronaveController;

interface

uses SysUtils, StrUtils, System.Generics.Collections, UAeronave;

type
  TAeronaveController = class
  public
    class procedure getAeronaves(id: Integer; modelo: String); overload;
    class function getAeronaves: TObjectList<TAeronave>; overload;
    class function getAeronave(id: Integer): TAeronave;
    class function getByModelo(modelo: String): TAeronave;
    class function cadastrar(aeronave: TAeronave): Integer;
    class function desativar(idAeronave: Integer): Boolean;
    class function ativar( idAeronave: Integer): Boolean;
    class procedure update(novaAeronave, aeronave: TAeronave);
  end;

implementation

uses UAeronaveDao;

{ TAeronaveController }

class function TAeronaveController.cadastrar(aeronave: TAeronave): Integer;
var
  dao: TAeronaveDao;
  existeModelo: TAeronave;
begin
  if Trim(aeronave.getFabricante) = '' then begin
    raise Exception.Create('Fabricante não pode ser vazio');
  end;

  if Trim(aeronave.getModelo) <> '' then begin
    existeModelo := TAeronaveController.getByModelo(aeronave.getModelo);
    if existeModelo <> nil then begin
      existeModelo.Free;
      raise Exception.Create('Modelo já cadastrado');
    end;
  end else begin
    raise Exception.Create('Modelo não pode ser vazio');
  end;

  if aeronave.getPassageirosMax < 0 then begin
    raise Exception.Create('Quantidade de passageiros inválida');
  end;

  if aeronave.getPilotosMax < 0 then begin
    raise Exception.Create('Quantidade de pilotos inválida');
  end;

  if aeronave.getComissariosMax < 0 then begin
    raise Exception.Create('Quantidade de comissários inválida');
  end;

  dao := TAeronaveDao.Create;
  Result := dao.cadastrar(aeronave);
  dao.Free;
end;

class function TAeronaveController.getAeronave(id: Integer): TAeronave;
var
  dao: TAeronaveDao;
begin
  dao := TAeronaveDao.Create;
  result := dao.getAeronave(id);
  dao.Free;
end;

class function TAeronaveController.getAeronaves: TObjectList<TAeronave>;
var
  dao: TAeronaveDao;
begin
  dao := TAeronaveDao.Create;
  result := dao.getAeronaves;
  dao.Free;
end;

class procedure TAeronaveController.getAeronaves(id: Integer; modelo: String);
var
  dao: TAeronaveDao;
begin
  dao := TAeronaveDao.Create;
  dao.getAeronaves(id, modelo);
  dao.Free;
end;

class function TAeronaveController.getByModelo(modelo: String): TAeronave;
var
  dao: TAeronaveDao;
begin
  dao := TAeronaveDao.Create;
  Result := dao.getByModelo(modelo);
  dao.Free;
end;

class procedure TAeronaveController.update(novaAeronave, aeronave: TAeronave);
var
  alterado: TAeronave;
  temAlteracao: Boolean;
  existeModelo: TAeronave;
  dao: TAeronaveDao;
begin
  temAlteracao := False;
  alterado := TAeronave.Create;
  alterado.setId(aeronave.getId);

  if Trim(novaAeronave.getFabricante) <> '' then begin
    if novaAeronave.getFabricante <> aeronave.getFabricante then begin
      temAlteracao := True;
      alterado.setFabricante(novaAeronave.getFabricante);
    end;
  end else begin
    raise Exception.Create('Fabricante não pode ser vazio');
  end;

  if Trim(novaAeronave.getModelo) <> '' then begin
    if novaAeronave.getModelo <> aeronave.getModelo then begin
      existeModelo := TAeronaveController.getByModelo(novaAeronave.getModelo);
      if existeModelo <> nil then begin
        existeModelo.Free;
        raise Exception.Create('Modelo já cadastrado');
      end;

      temAlteracao := True;
      alterado.setModelo(novaAeronave.getModelo);
    end;
  end else begin
    raise Exception.Create('Modelo não pode ser vazio');
  end;

  if novaAeronave.getPassageirosMax > 0 then begin
    if novaAeronave.getPassageirosMax <> aeronave.getPassageirosMax then begin
      temAlteracao := True;
      alterado.setPassageirosMax(novaAeronave.getPassageirosMax);
    end;
  end else begin
    raise Exception.Create('Quantidade de passageiros inválida');
  end;

  if novaAeronave.getPilotosMax > 0 then begin
    if novaAeronave.getPilotosMax <> aeronave.getPilotosMax then begin
      temAlteracao := True;
      alterado.setPilotosMax(novaAeronave.getPilotosMax);
    end;
  end else begin
    raise Exception.Create('Quantidade de pilotos inválida');
  end;

  if novaAeronave.getComissariosMax > 0 then begin
    if novaAeronave.getComissariosMax <> aeronave.getComissariosMax then begin
      temAlteracao := True;
      alterado.setComissariosMax(novaAeronave.getComissariosMax);
    end;
  end else begin
    raise Exception.Create('Quantidade de comissários inválida');
  end;

  if Trim(novaaeronave.getStatus) <> '' then begin
    if novaaeronave.getStatus <> aeronave.getStatus then begin
      temAlteracao := true;
      alterado.setStatus(novaaeronave.getStatus);
    end;
  end;

  if temAlteracao then begin
    dao := TAeronaveDao.Create;
    dao.update(alterado);
    dao.Free;
  end;

  alterado.Free;
end;

class function TAeronaveController.desativar(idAeronave: Integer): Boolean;
var
  dao: TAeronaveDAO;
begin
  dao := TAeronaveDAO.Create;
  try
    Result := dao.desativarDao(idAeronave);
  finally
    dao.Free;
  end;
end;

class function TAeronaveController.ativar(idAeronave: Integer): Boolean;
var
  dao: TAeronaveDAO;
begin
  dao := TAeronaveDAO.Create;
  try
    Result := dao.ativarDao(idAeronave);
  finally
    dao.Free;
  end;
end;

end.
