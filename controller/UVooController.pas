unit UVooController;

interface

uses
  System.SysUtils, UVooDao, UConn;

type
  TVooController = class
  public
    class procedure conectarVoo(id: Integer; tipoUsuario: string);
    class procedure DesconectaVoo(const TipoUsuario: string);
    class procedure Busca(const Filtro: string);
    class procedure BaixarVoos(const TipodeAcesso: string);
    class procedure Atribuidos(const TipoUsuario: string; UsuarioID: Integer);
    class procedure Quantidade(var Disponiveis, Atribuidos: Integer);
  end;

implementation


{ TVooController }

class procedure TVooController.Atribuidos(const TipoUsuario: string; UsuarioID: Integer);
begin
  TVooModel.AbrirAtribuidos(TipoUsuario, UsuarioID);
end;

class procedure TVooController.BaixarVoos(const TipodeAcesso: string);
begin
  TVooModel.AbrirVoos(TipodeAcesso);
end;

class procedure TVooController.Busca(const Filtro: string);
begin
  TVooModel.FiltrodeBusca(Filtro);
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

  TVooModel.ConectarVoo(VooID, UsuarioID, acesso);
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

  TVooModel.DesconectarVoo(VooID,UsuarioID,acesso);
end;

class procedure TVooController.Quantidade(var Disponiveis, Atribuidos: Integer);
begin
  // Disponiveis:= TVooModel.ContarDisponiveis();
  // Atribuidos:= TVooModel.ContarAtribuidos(DataModuleConn.TipoUsuarioLogado, DataModuleConn.UsuarioLogadoID);;
end;

end.
