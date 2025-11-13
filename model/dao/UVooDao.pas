unit UVooDao;

interface

type
  TVooDao = class
  public
    procedure getVoos(id: Integer; numeroVoo, status: String);
    class procedure ConectarVoo(const VooID, UsuarioID: Integer; acesso: string);
    class procedure DesconectarVoo(const VOOID,UsuarioID:Integer; acesso: string);
    class procedure FiltrodeBusca(  const Filtro: String);
    class procedure AbrirVoos (const TipoUsuario: string);
    class procedure AbrirAtribuidos(const TipoUsuario: string; UsuarioID: Integer);
    class function ContarDisponiveis(const TipoUsuario: string): Integer;
    class function ContarAtribuidos(const TipoUsuario: string; UsuarioID: Integer): Integer;
  end;

implementation

uses UConn, FireDAC.Comp.Client, System.SysUtils;

{ TVooDao }

class procedure TVooDao.AbrirAtribuidos(const TipoUsuario: string; UsuarioID: Integer);
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

class procedure TVooDao.AbrirVoos (const TipoUsuario: string);
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

class procedure TVooDao.ConectarVoo(const VooID, UsuarioID: Integer; acesso: string);
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

class function TVooDao.ContarAtribuidos(const TipoUsuario: string;  UsuarioID: Integer): Integer;
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

class function TVooDao.ContarDisponiveis(const TipoUsuario: string): Integer;
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

class procedure TVooDao.DesconectarVoo(const VOOID, UsuarioID: Integer; acesso: string);
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

class procedure TVooDao.FiltrodeBusca(const Filtro: String);
begin
  with DataModuleConn.FDQueryVoos do
  begin
    Close;
    SQL.Text := 'SELECT * FROM voos WHERE (origem ILIKE :filtro OR destino ILIKE :filtro OR CAST(data_partida AS VARCHAR) ILIKE :filtro) AND id_aeromoca IS NULL ORDER BY data_partida, hora_partida';
    ParamByName('filtro').AsString := '%' + Filtro + '%';
    Open;
  end;
end;

procedure TVooDao.getVoos(id: Integer; numeroVoo, status: String);
var
  query: TFDQuery;
  sql: String;
begin
  query := DataModuleConn.FDQueryVoos;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM voos');

  if (id <> 0) or (numeroVoo <> '') or (status <> '') then begin
    query.SQL.Add('WHERE 1=1');
  end;

  if id <> 0 then begin
    query.SQL.Add('AND id = :id');
  end;

  if numeroVoo <> '' then begin
    query.SQL.Add('AND numeroVoo ilike :numeroVoo');
  end;

  if status <> '' then begin
    query.SQL.Add('AND status = :status');
  end;

  query.SQL.Add('ORDER BY id');

  if id <> 0 then begin
    query.ParamByName('id').AsInteger := id;
  end;

  if numeroVoo <> '' then begin
    numeroVoo := '%' + numeroVoo + '%';
    query.ParamByName('numeroVoo').AsString := numeroVoo;
  end;

  if status <> '' then begin
    query.ParamByName('status').AsString := status;
  end;

  query.Open;
end;

end.
