unit UVooDao;

interface

uses
  System.SysUtils, UConn;

type
  TVooModel = class
  public
    class procedure ConectarVoo(const VooID, UsuarioID: Integer; acesso: string);
    class procedure DesconectarVoo(const VOOID,UsuarioID:Integer; acesso: string);
    class procedure FiltrodeBusca(  const Filtro: String);
    class procedure AbrirVoos (const TipoUsuario: string);
    class procedure AbrirAtribuidos(const TipoUsuario: string; UsuarioID: Integer);
    class function ContarDisponiveis(const TipoUsuario: string): Integer;
    class function ContarAtribuidos(const TipoUsuario: string; UsuarioID: Integer): Integer;
  end;

implementation

{ TVooModel }

class procedure TVooModel.AbrirAtribuidos(const TipoUsuario: string; UsuarioID: Integer);
var
  TipodeAcesso:string;

begin
  if TipoUsuario = 'AeroMoço(a)' then
    TipodeAcesso := 'id_aeromoca'
  else
    TipodeAcesso := 'id_piloto';


  with DataModuleConn.FDQueryAtribuidos do
  begin
    Close;
    SQL.Text := Format('SELECT * FROM voos WHERE %s = :id_usuario ORDER BY data_partida, hora_partida', [TipodeAcesso]);
    ParamByName('id_usuario').AsInteger := UsuarioID;
    Open;
  end;

end;

class procedure TVooModel.AbrirVoos (const TipoUsuario: string);
var
  TipodeAcesso: string;
begin

  if TipoUsuario = 'AeroMoço(a)' then
    TipodeAcesso := 'id_aeromoca'
  else
    TipodeAcesso := 'id_piloto';

  with DataModuleConn.FDQueryVoos do
  begin
    Close;
    SQL.Text := Format('SELECT * FROM voos WHERE %s IS NULL ORDER BY data_partida, hora_partida', [TipodeAcesso]);
    Open;
  end;
end;

class procedure TVooModel.ConectarVoo(const VooID, UsuarioID: Integer; acesso: string);
begin
  with DataModuleConn.FDQueryVoos do
  begin
    if Locate('id', VooID, []) then
    begin
      Edit;
       FieldByName(acesso).AsInteger := UsuarioID;
      Post;
    end
    else
      raise Exception.Create('Voo não encontrado.');
  end;

end;

class function TVooModel.ContarAtribuidos(const TipoUsuario: string;  UsuarioID: Integer): Integer;
var
  TipodeAcesso: string;
begin

  if TipoUsuario = 'AeroMoço(a)' then
    TipodeAcesso := 'id_aeromoca'
  else
    TipodeAcesso := 'id_piloto';

  with DataModuleConn.FDQueryQuantidade do
  begin
    Close;
    SQL.Text := Format('SELECT COUNT(*) AS total FROM voos WHERE %s =: id', [TipodeAcesso]);
    ParamByName('id').AsInteger := UsuarioID;
    Open;
    Result := FieldByName('total').AsInteger;
    Close;
  end

end;

class function TVooModel.ContarDisponiveis(const TipoUsuario: string): Integer;
var
  TipodeAcesso: string;
begin

  if TipoUsuario = 'AeroMoço(a)' then
    TipodeAcesso := 'id_aeromoca'
  else
    TipodeAcesso := 'id_piloto';

  with DataModuleConn.FDQueryQuantidade do
  begin
    Close;
    SQL.Text := Format('SELECT COUNT(*) AS total FROM voos WHERE %s IS NULL', [TipodeAcesso]);
    Open;
    Result := FieldByName('total').AsInteger;
    Close;
  end;

end;

class procedure TVooModel.DesconectarVoo(const VOOID, UsuarioID: Integer; acesso: string);
begin
   with DataModuleConn.FDQueryVoos do
  begin
    if Locate('id', VooID, []) then
    begin
      Edit;
      FieldByName(acesso).Clear;
      DataModuleConn.FDQueryVoos.Refresh;
      Post;
    end
    else
      raise Exception.Create('Voo não encontrado.');
  end;

end;

class procedure TVooModel.FiltrodeBusca(const Filtro: String);
begin
  with DataModuleConn.FDQueryVoos do
  begin
    Close;
    SQL.Text := 'SELECT * FROM voos WHERE (origem ILIKE :filtro OR destino ILIKE :filtro OR CAST(data_partida AS VARCHAR) ILIKE :filtro) AND id_aeromoca IS NULL ORDER BY data_partida, hora_partida';
    ParamByName('filtro').AsString := '%' + Filtro + '%';
    Open;
  end;
end;

end.
