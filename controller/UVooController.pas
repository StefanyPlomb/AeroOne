unit UVooController;

interface

uses
  System.SysUtils, StrUtils, UVoo, UUsuario, UConn;

type
  TVooController = class
  private
    class procedure conectarPiloto(usuario: TUsuario; voo: TVoo);
    class procedure conectarComissario(usuario: TUsuario; voo: TVoo);
    class procedure conectarPassageiro(usuario: TUsuario; voo: TVoo);
    class function removeWordIgnoreCase(const Text, WordToRemove: String): String;
  public
    class procedure getVoos(id: Integer; numeroVoo, status: String);
    class function getVoo(id: Integer): TVoo;
    class function getVooByNumeroVoo(numeroVoo: String): TVoo;
    class function cadastrar(voo: TVoo): Integer;
    class procedure update(novoVoo, voo: TVoo);
    class procedure conectar(usuario: TUsuario; voo: TVoo);
  end;

implementation

uses UVooDao, UAeronaveController, UAeronave;

{ TVooController }

class function TVooController.cadastrar(voo: TVoo): Integer;
var
  dao: TVooDao;
  vooNum: TVoo;
begin
  if Trim(voo.getNumeroVoo) = '' then begin
    raise Exception.Create('Número do voo não pode ser vazio');
  end else begin
    if Length(voo.getNumeroVoo) < 6 then begin
      raise Exception.Create('Número do voo deve conter 6 dígitos');
    end;
  end;

  if voo.getIdAeronave <= 0 then begin
    raise Exception.Create('A aeronave deve ser informada');
  end;

  if Trim(voo.getOrigem) = '' then begin
    raise Exception.Create('Origem não pode ser vazia');
  end;

  if Trim(voo.getDestino) = '' then begin
    raise Exception.Create('Destino não pode ser vazio');
  end;

  if Trim(voo.getDataPartida) = '' then begin
    raise Exception.Create('Data de partida não pode ser vazia');
  end else begin
    if Length(voo.getDataPartida) < 10 then begin
      raise Exception.Create('Data da partida deve conter 10 dígitos');
    end;
  end;

  if Trim(voo.getHoraPartida) = '' then begin
    raise Exception.Create('Hora da partida não pode ser vazia');
  end else begin
    if Length(voo.getHoraPartida) < 8 then begin
      raise Exception.Create('Hora da partida deve conter 8 dígitos');
    end;
  end;

  if Trim(voo.getDataChegada) = '' then begin
    raise Exception.Create('Data de chegada não pode ser vazia');
  end else begin
    if Length(voo.getDataChegada) < 10 then begin
      raise Exception.Create('Data da chegada deve conter 10 dígitos');
    end;
  end;

  if Trim(voo.getHoraChegada) = '' then begin
    raise Exception.Create('Hora da chegada não pode ser vazia');
  end else begin
    if Length(voo.getHoraChegada) < 8 then begin
      raise Exception.Create('Hora da chegada deve conter 8 dígitos');
    end;
  end;

  vooNum := TVooController.getVooByNumeroVoo(voo.getNumeroVoo);
  if vooNum <> nil then begin
    vooNum.Free;
    raise Exception.Create('Número do voo já cadastrado');
  end;

  if Trim(voo.getStatus) = '' then begin
    voo.setStatus('A');
  end;

  dao := TVooDao.Create;
  result := dao.cadastrar(voo);
  dao.Free;
end;

class procedure TVooController.conectar(usuario: TUsuario; voo: TVoo);
begin
  if usuario.getCargo = 'Piloto(a)' then begin
    conectarPiloto(usuario, voo);
  end else if usuario.getCargo = 'Comissário(a)' then begin
    conectarComissario(usuario, voo);
  end else if usuario.getCargo = 'Passageiro(a)' then begin
    conectarPiloto(usuario, voo);
  end else begin
    raise Exception.Create('Não foi possível identificar usuário para se conectar ao voo');
  end;
end;

class procedure TVooController.conectarComissario(usuario: TUsuario; voo: TVoo);
var
  dao: TVooDao;
  qtdConectados: Integer;
  aeronave: TAeronave;
begin
  dao := TVooDao.Create;

  if dao.usuarioJaConectado(usuario.getId, voo.getId) then begin
    raise Exception.Create('Comissário(a) já está conectado a este voo');
  end;

  qtdConectados := dao.countConectados(voo.getId, 'Comissário(a)');
  aeronave := TAeronaveController.getAeronave(voo.getIdAeronave);

  if qtdConectados >= aeronave.getPilotosMax then begin
    raise Exception.Create('Limite de comissários atingido para este voo');
  end;

  dao.conectar(usuario.getId, voo.getId, 'Comissário(a)', '');

  dao.Free;
end;

class procedure TVooController.conectarPassageiro(usuario: TUsuario; voo: TVoo);
var
  dao: TVooDao;
  qtdConectados: Integer;
  aeronave: TAeronave;
begin
  dao := TVooDao.Create;

  if dao.usuarioJaConectado(usuario.getId, voo.getId) then begin
    raise Exception.Create('Passageiro(a) já está conectado a este voo');
  end;

  qtdConectados := dao.countConectados(voo.getId, 'Passageiro(a)');
  aeronave := TAeronaveController.getAeronave(voo.getIdAeronave);

  if qtdConectados >= aeronave.getPilotosMax then begin
    raise Exception.Create('Limite de passageiros atingido para este voo');
  end;

  dao.conectar(usuario.getId, voo.getId, 'Passageiro(a)', '');

  dao.Free;
end;

class procedure TVooController.conectarPiloto(usuario: TUsuario; voo: TVoo);
var
  dao: TVooDao;
  qtdConectados: Integer;
  aeronave: TAeronave;
begin
  dao := TVooDao.Create;

  if dao.usuarioJaConectado(usuario.getId, voo.getId) then begin
    raise Exception.Create('Piloto(a) já está conectado a este voo');
  end;

  qtdConectados := dao.countConectados(voo.getId, 'Piloto(a)');
  aeronave := TAeronaveController.getAeronave(voo.getIdAeronave);

  if qtdConectados >= aeronave.getPilotosMax then begin
    raise Exception.Create('Limite de pilotos atingido para este voo');
  end;

  dao.conectar(usuario.getId, voo.getId, 'Piloto(a)', '');

  dao.Free;
end;

class procedure TVooController.update(novoVoo, voo: TVoo);
var
  alterado: TVoo;
  temAlteracao: Boolean;
  dao: TVooDao;
begin
  temAlteracao := False;
  alterado := TVoo.Create;
  alterado.setId(voo.getId);

  if Trim(novoVoo.getNumeroVoo) <> '' then
  begin
    if novoVoo.getNumeroVoo <> voo.getNumeroVoo then
    begin
      temAlteracao := True;
      alterado.setNumeroVoo(novoVoo.getNumeroVoo);
    end;
  end else begin
    raise Exception.Create('Número do voo não pode ser vazio.');
  end;

  if Trim(novoVoo.getOrigem) <> '' then
  begin
    if novoVoo.getOrigem <> voo.getOrigem then
    begin
      temAlteracao := True;
      alterado.setOrigem(novoVoo.getOrigem);
    end;
  end else begin
    raise Exception.Create('Origem não pode ser vazia.');
  end;

  if Trim(novoVoo.getDestino) <> '' then
  begin
    if novoVoo.getDestino <> voo.getDestino then
    begin
      temAlteracao := True;
      alterado.setDestino(novoVoo.getDestino);
    end;
  end else begin
    raise Exception.Create('Destino não pode ser vazio.');
  end;

  if Trim(novoVoo.getDataPartida) <> '' then
  begin
    if novoVoo.getDataPartida <> voo.getDataPartida then
    begin
      temAlteracao := True;
      alterado.setDataPartida(novoVoo.getDataPartida);
    end;
  end
  else begin
    raise Exception.Create('Data de partida não pode ser vazia.');
  end;

  if Trim(novoVoo.getHoraPartida) <> '' then
  begin
    if novoVoo.getHoraPartida <> voo.getHoraPartida then
    begin
      temAlteracao := True;
      alterado.setHoraPartida(novoVoo.getHoraPartida);
    end;
  end else begin
    raise Exception.Create('Hora de partida não pode ser vazia.');
  end;

  if Trim(novoVoo.getDataChegada) <> '' then
  begin
    if novoVoo.getDataChegada <> voo.getDataChegada then
    begin
      temAlteracao := True;
      alterado.setDataChegada(novoVoo.getDataChegada);
    end;
  end;

  if Trim(novoVoo.getHoraChegada) <> '' then
  begin
    if novoVoo.getHoraChegada <> voo.getHoraChegada then
    begin
      temAlteracao := True;
      alterado.setHoraChegada(novoVoo.getHoraChegada);
    end;
  end;

  if Trim(novoVoo.getStatus) <> '' then
  begin
    if novoVoo.getStatus <> voo.getStatus then
    begin
      temAlteracao := True;
      alterado.setStatus(novoVoo.getStatus);
    end;
  end;

  if novoVoo.getIdAeronave > 0 then
  begin
    if novoVoo.getIdAeronave <> voo.getIdAeronave then
    begin
      temAlteracao := True;
      alterado.setIdAeronave(novoVoo.getIdAeronave);
    end;
  end;

  if temAlteracao then
  begin
    dao := TVooDao.Create;
    dao.update(alterado);
    dao.Free;
  end;

  alterado.Free;
end;

class function TVooController.getVoo(id: Integer): TVoo;
var
  dao: TVooDao;
begin
  dao := TVooDao.Create;
  result := dao.getVoo(id);
  dao.Free;
end;

class function TVooController.getVooByNumeroVoo(numeroVoo: String): TVoo;
var
  dao: TVooDao;
begin
  dao := TVooDao.Create;
  result := dao.getVooByNumeroVoo(numeroVoo);
  dao.Free;
end;

class procedure TVooController.getVoos(id: Integer; numeroVoo, status: String);
var
  dao: TVooDao;
begin
  dao := TVooDao.Create;
  numeroVoo := removeWordIgnoreCase(numeroVoo, 'ativo');
  numeroVoo := removeWordIgnoreCase(numeroVoo, 'inativo');
  numeroVoo := removeWordIgnoreCase(numeroVoo, 'cancelado');
  numeroVoo := removeWordIgnoreCase(numeroVoo, 'em andamento');
  numeroVoo := removeWordIgnoreCase(numeroVoo, 'finalizado');

  dao.getVoos(id, numeroVoo, status);
  dao.Free;
end;

class function TVooController.removeWordIgnoreCase(const Text, WordToRemove: String): String;
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

end.
