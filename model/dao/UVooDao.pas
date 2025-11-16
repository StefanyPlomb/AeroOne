unit UVooDao;

interface

uses UVoo;

type
  TVooDao = class
  public
    procedure getVoos(id: Integer; numeroVoo, status: String);
    function getVoo(id: Integer): TVoo;
    function getVooByNumeroVoo(numeroVoo: String): TVoo;
    function cadastrar(voo: TVoo): Integer;
    procedure update(voo: TVoo);
    procedure conectar(idUsuario, idVoo: Integer; funcao, assento: String);
    function usuarioJaConectado(idUsuario, idVoo: Integer): Boolean;
    function countConectados(idVoo: Integer; funcao: String): Integer;
  end;

implementation

uses UConn, FireDAC.Comp.Client, System.SysUtils;

{ TVooDao }

function TVooDao.cadastrar(voo: TVoo): Integer;
var
  query: TFDQuery;
begin
  query := DataModuleConn.FDQueryVoos;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('INSERT INTO voos (numeroVoo, idAeronave, origem, destino, dataPartida, horaPartida, dataChegada, horaChegada, status)');
  query.SQL.Add('VALUES (:numeroVoo, :idAeronave, :origem, :destino, :dataPartida, :horaPartida, :dataChegada, :horaChegada, :status)');
  query.SQL.Add('RETURNING id');

  query.ParamByName('numeroVoo').AsString   := voo.getNumeroVoo;
  query.ParamByName('idAeronave').AsInteger := voo.getIdAeronave;
  query.ParamByName('origem').AsString      := voo.getOrigem;
  query.ParamByName('destino').AsString     := voo.getDestino;
  query.ParamByName('dataPartida').AsString := voo.getDataPartida;
  query.ParamByName('horaPartida').AsString := voo.getHoraPartida;
  query.ParamByName('dataChegada').AsString := voo.getDataChegada;
  query.ParamByName('horaChegada').AsString := voo.getHoraChegada;
  query.ParamByName('status').AsString      := voo.getStatus;

  query.Open;

  result := query.FieldByName('id').AsInteger;
end;

procedure TVooDao.conectar(idUsuario, idVoo: Integer; funcao, assento: String);
var
  query: TFDQuery;
begin
  query := DataModuleConn.FDQueryVoos;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('INSERT INTO usuarioVoo (idUsuario, idVoo, funcao, assento)');
  query.SQL.Add('VALUES (:idUsuario, :idVoo, :funcao, :assento)');

  query.ParamByName('idUsuario').AsInteger := idUsuario;
  query.ParamByName('idVoo').AsInteger := idVoo;
  query.ParamByName('funcao').AsString := funcao;
  query.ParamByName('assento').AsString := assento;

  query.ExecSQL;
end;

function TVooDAO.countConectados(idVoo: Integer; funcao: String): Integer;
var
  query: TFDQuery;
begin
  query := DataModuleConn.FDQueryVoos;
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT COUNT(*) AS qtd FROM usuarioVoo');
  query.SQL.Add('WHERE idVoo = :idVoo AND funcao = :funcao');
  query.ParamByName('idVoo').AsInteger := idVoo;
  query.ParamByName('funcao').AsString := funcao;

  query.Open;
  result := query.FieldByName('qtd').AsInteger;
end;

function TVooDao.getVoo(id: Integer): TVoo;
var
  query: TFDQuery;
  voo: TVoo;
begin
  query := DataModuleConn.FDQueryVoos;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM voos WHERE id = :id');
  query.ParamByName('id').AsInteger := id;
  query.Open;

  if not query.IsEmpty then begin
    voo := TVoo.Create;
    voo.setId(query.FieldByName('id').AsInteger);
    voo.setNumeroVoo(query.FieldByName('numeroVoo').AsString);
    voo.setIdAeronave(query.FieldByName('idAeronave').AsInteger);
    voo.setOrigem(query.FieldByName('origem').AsString);
    voo.setDestino(query.FieldByName('destino').AsString);
    voo.setDataPartida(query.FieldByName('dataPartida').AsString);
    voo.setHoraPartida(query.FieldByName('horaPartida').AsString);
    voo.setDataChegada(query.FieldByName('dataChegada').AsString);
    voo.setHoraChegada(query.FieldByName('horaChegada').AsString);
    voo.setStatus(query.FieldByName('status').AsString);
    result := voo;
  end else begin
    result := nil;
  end;
end;

function TVooDao.getVooByNumeroVoo(numeroVoo: String): TVoo;
var
  query: TFDQuery;
  voo: TVoo;
begin
  query := DataModuleConn.FDQueryVoos;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM voos WHERE UPPER(numeroVoo) = :numeroVoo');
  query.ParamByName('numeroVoo').AsString := numeroVoo.ToUpper;
  query.Open;

  if not query.IsEmpty then begin
    voo := TVoo.Create;
    voo.setId(query.FieldByName('id').AsInteger);
    voo.setNumeroVoo(query.FieldByName('numeroVoo').AsString);
    voo.setIdAeronave(query.FieldByName('idAeronave').AsInteger);
    voo.setOrigem(query.FieldByName('origem').AsString);
    voo.setDestino(query.FieldByName('destino').AsString);
    voo.setDataPartida(query.FieldByName('dataPartida').AsString);
    voo.setHoraPartida(query.FieldByName('horaPartida').AsString);
    voo.setDataChegada(query.FieldByName('dataChegada').AsString);
    voo.setHoraChegada(query.FieldByName('horaChegada').AsString);
    voo.setStatus(query.FieldByName('status').AsString);
    result := voo;
  end else begin
    result := nil;
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

procedure TVooDao.update(voo: TVoo);
var
  query: TFDQuery;
  sql: String;
begin
  query := DataModuleConn.FDQueryVoos;
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('UPDATE voos SET');

  if voo.getNumeroVoo <> '' then begin
    query.SQL.Add(' numeroVoo = :numeroVoo, ');
  end;

  if voo.getOrigem <> '' then begin
    query.SQL.Add(' origem = :origem, ');
  end;

  if voo.getDestino <> '' then begin
    query.SQL.Add(' destino = :destino, ');
  end;

  if voo.getDataPartida <> '' then begin
    query.SQL.Add(' dataPartida = :dataPartida, ');
  end;

  if voo.getHoraPartida <> '' then begin
    query.SQL.Add(' horaPartida = :horaPartida, ');
  end;

  if voo.getDataChegada <> '' then begin
    query.SQL.Add(' dataChegada = :dataChegada, ');
  end;

  if voo.getHoraChegada <> '' then begin
    query.SQL.Add(' horaChegada = :horaChegada, ');
  end;

  if voo.getStatus <> '' then begin
    query.SQL.Add(' status = :status, ');
  end;

  if (voo.getIdAeronave > 0) then begin
    query.SQL.Add(' idAeronave = :idAeronave, ');
  end;

  sql := Trim(query.SQL.Text);
  if sql.EndsWith(',') then begin
    Delete(sql, Length(sql), 1);
  end;

  query.SQL.Text := sql + sLineBreak + 'WHERE id = :id';

  query.ParamByName('id').AsInteger := voo.getId;

  if voo.getNumeroVoo <> '' then begin
    query.ParamByName('numeroVoo').AsString := voo.getNumeroVoo;
  end;

  if voo.getOrigem <> '' then begin
    query.ParamByName('origem').AsString := voo.getOrigem;
  end;

  if voo.getDestino <> '' then begin
    query.ParamByName('Destino').AsString := voo.getDestino;
  end;

  if voo.getDataPartida <> '' then begin
    query.ParamByName('dataPartida').AsString := voo.getDataPartida;
  end;

  if voo.getHoraPartida <> '' then begin
    query.ParamByName('horaPartida').AsString := voo.getHoraPartida;
  end;

  if voo.getDataChegada <> '' then begin
    query.ParamByName('dataChegada').AsString := voo.getDataChegada;
  end;

  if voo.getHoraChegada <> '' then begin
    query.ParamByName('horaChegada').AsString := voo.getHoraChegada;
  end;

  if voo.getStatus <> '' then begin
    query.ParamByName('status').AsString := voo.getStatus;
  end;

  if (voo.getIdAeronave > 0) then begin
    query.ParamByName('idAeronave').AsInteger := voo.getIdAeronave;
  end;

  query.ExecSQL;
end;

function TVooDAO.usuarioJaConectado(idUsuario, idVoo: Integer): Boolean;
var
  query: TFDQuery;
begin
  query := DataModuleConn.FDQueryVoos;
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT id FROM usuarioVoo');
  query.SQL.Add('WHERE idUsuario = :idUsuario AND idVoo = :idVoo');

  query.ParamByName('idUsuario').AsInteger := idUsuario;
  query.ParamByName('idVoo').AsInteger := idVoo;

  query.Open;

  result := not query.IsEmpty;
end;

end.
