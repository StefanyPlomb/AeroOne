unit UVooController;

interface

uses
  System.SysUtils, StrUtils, UVoo, UConn;

type
  TVooController = class
  private
    class function removeWordIgnoreCase(const Text, WordToRemove: String): String;
  public
    class procedure getVoos(id: Integer; numeroVoo, status: String);
    class procedure conectarVoo(id: Integer; tipoUsuario: string);
    class procedure DesconectaVoo(const TipoUsuario: string);
    class procedure Busca(const Filtro: string);
    class procedure BaixarVoos(const TipodeAcesso: string);
    class procedure Atribuidos(const TipoUsuario: string; UsuarioID: Integer);
    class procedure Quantidade(var Disponiveis, Atribuidos: Integer);
  end;

implementation

uses UVooDao;

{ TVooController }

class procedure TVooController.Atribuidos(const TipoUsuario: string; UsuarioID: Integer);
begin
  TVooDao.AbrirAtribuidos(TipoUsuario, UsuarioID);
end;

class procedure TVooController.BaixarVoos(const TipodeAcesso: string);
begin
  TVooDao.AbrirVoos(TipodeAcesso);
end;

class procedure TVooController.Busca(const Filtro: string);
begin
  TVooDao.FiltrodeBusca(Filtro);
end;

class procedure TVooController.conectarVoo(id: Integer; tipoUsuario: string);
var
  VooID, UsuarioID: Integer;
  acesso: string;
begin
  if DataModuleConn.FDQueryVoos.IsEmpty then
    raise Exception.Create('Nenhum voo selecionado.');

  VooID := DataModuleConn.FDQueryVoos.FieldByName('id').AsInteger;

 if TipoUsuario = 'AeroMoco(a)' then
    acesso := 'id_aeromoca'
  else if TipoUsuario = 'Piloto' then
    acesso := 'id_piloto'
  else
    raise Exception.Create('Tipo de usuário desconhecido.');

  TVooDao.ConectarVoo(VooID, UsuarioID, acesso);
end;



class procedure TVooController.DesconectaVoo(const TipoUsuario: string);
var
  VooID, UsuarioID: Integer;
  acesso: string;
begin

    if DataModuleConn.FDQueryVoos.IsEmpty then
    raise Exception.Create('Nenhum voo selecionado.');

  VooID := DataModuleConn.FDQueryVoos.FieldByName('id').AsInteger;

  if TipoUsuario = 'AeroMoco(a)' then
    acesso := 'id_aeromoca'
  else if TipoUsuario = 'Piloto' then
    acesso := 'id_piloto'
  else
    raise Exception.Create('Tipo de usuário desconhecido.');

  TVooDao.DesconectarVoo(VooID,UsuarioID,acesso);
end;

class procedure TVooController.getVoos(id: Integer; numeroVoo, status: String);
var
  dao: TVooDao;
begin
  dao := TVooDao.Create;
  numeroVoo := removeWordIgnoreCase(numeroVoo, 'ativo');
  numeroVoo := removeWordIgnoreCase(numeroVoo, 'inativo');
  numeroVoo := removeWordIgnoreCase(numeroVoo, 'cancelado');
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

class procedure TVooController.Quantidade(var Disponiveis, Atribuidos: Integer);
begin
  // Disponiveis:= TVooDao.ContarDisponiveis();
  // Atribuidos:= TVooDao.ContarAtribuidos(DataModuleConn.TipoUsuarioLogado, DataModuleConn.UsuarioLogadoID);;
end;

end.
