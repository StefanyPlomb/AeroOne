unit UAeronaveDao;

interface

uses System.SysUtils, System.Generics.Collections, UAeronave;

type
  TAeronaveDao = class
  public
    procedure getAeronaves(id: Integer; modelo: String); overload;
    function getAeronaves: TObjectList<TAeronave>; overload;
    function getAeronave(id: Integer): TAeronave;
    function getByModelo(modelo: String): TAeronave;
    function cadastrar(aeronave: TAeronave): Integer;
    procedure update(aeronave: TAeronave);
  end;

implementation

uses UConn, FireDAC.Comp.Client;

{ TAeronaveDao }

function TAeronaveDao.cadastrar(aeronave: TAeronave): Integer;
var
  query: TFDQuery;
begin
  query := DataModuleConn.FDQueryAeronave;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('INSERT INTO aeronaves (fabricante, modelo, passageirosMax, pilotosMax, comissariosMax)');
  query.SQL.Add('VALUES (:fabricante, :modelo, :passageirosMax, :pilotosMax, :comissariosMax)');
  query.SQL.Add('RETURNING id');

  query.ParamByName('fabricante').AsString := aeronave.getFabricante;
  query.ParamByName('modelo').AsString := aeronave.getModelo;
  query.ParamByName('passageirosMax').AsInteger := aeronave.getPassageirosMax;
  query.ParamByName('pilotosMax').AsInteger := aeronave.getPilotosMax;
  query.ParamByName('comissariosMax').AsInteger := aeronave.getComissariosMax;

  query.Open;
  Result := query.FieldByName('id').AsInteger;
end;

function TAeronaveDao.getAeronave(id: Integer): TAeronave;
var
  query: TFDQuery;
  lista: TObjectList<TAeronave>;
  aeronave: TAeronave;
begin
  query := DataModuleConn.FDQueryAeronave;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM aeronaves WHERE id = :id');
  query.ParamByName('id').AsInteger := id;
  query.Open;

  if not query.IsEmpty then begin
    aeronave := TAeronave.Create;
    aeronave.setId(query.FieldByName('id').AsInteger);
    aeronave.setFabricante(query.FieldByName('fabricante').AsString);
    aeronave.setModelo(query.FieldByName('modelo').AsString);
    aeronave.setPassageirosMax(query.FieldByName('passageirosMax').AsInteger);
    aeronave.setPilotosMax(query.FieldByName('pilotosMax').AsInteger);
    aeronave.setComissariosMax(query.FieldByName('comissariosMax').AsInteger);

    result := aeronave;
  end else begin
    result := nil;
  end;
end;

function TAeronaveDao.getAeronaves: TObjectList<TAeronave>;
var
  query: TFDQuery;
  lista: TObjectList<TAeronave>;
  aeronave: TAeronave;
begin
  lista := TObjectList<TAeronave>.Create(True);

  query := DataModuleConn.FDQueryAeronave;
  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM aeronaves ORDER BY id');
  query.Open;

  while not query.Eof do begin
    aeronave := TAeronave.Create;

    aeronave.setId(query.FieldByName('id').AsInteger);
    aeronave.setFabricante(query.FieldByName('fabricante').AsString);
    aeronave.setModelo(query.FieldByName('modelo').AsString);
    aeronave.setPassageirosMax(query.FieldByName('passageirosMax').AsInteger);
    aeronave.setPilotosMax(query.FieldByName('pilotosMax').AsInteger);
    aeronave.setComissariosMax(query.FieldByName('comissariosMax').AsInteger);

    lista.Add(aeronave);

    query.Next;
  end;

  Result := lista;
end;

function TAeronaveDao.getByModelo(modelo: String): TAeronave;
var
  query: TFDQuery;
  aeronave: TAeronave;
begin
  query := DataModuleConn.FDQueryAeronave;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM aeronaves WHERE UPPER(modelo) = :modelo');
  query.ParamByName('modelo').AsString := modelo.ToUpper;
  query.Open;

  if not query.IsEmpty then begin
    aeronave := TAeronave.Create;
    aeronave.setId(query.FieldByName('id').AsInteger);
    aeronave.setFabricante(query.FieldByName('fabricante').AsString);
    aeronave.setModelo(query.FieldByName('modelo').AsString);
    aeronave.setPassageirosMax(query.FieldByName('passageirosMax').AsInteger);
    aeronave.setPilotosMax(query.FieldByName('pilotosMax').AsInteger);
    aeronave.setComissariosMax(query.FieldByName('comissariosMax').AsInteger);

    Result := aeronave;
  end else begin
    Result := nil;
  end;
end;

procedure TAeronaveDao.getAeronaves(id: Integer; modelo: String);
var
  query: TFDQuery;
begin
  query := DataModuleConn.FDQueryAeronave;

  query.Close;
  query.SQL.Clear;

  query.SQL.Add('SELECT * FROM aeronaves');
  query.SQL.Add('WHERE 1=1');

  if id <> 0 then begin
    query.SQL.Add('AND id = :id');
  end;

  if modelo <> '' then begin
    query.SQL.Add('AND modelo ILIKE :modelo');
  end;

  query.SQL.Add('ORDER BY id');

  if id <> 0 then begin
    query.ParamByName('id').AsInteger := id;
  end;

  if modelo <> '' then begin
    query.ParamByName('modelo').AsString := '%' + modelo + '%';
  end;

  query.Open;
end;

procedure TAeronaveDao.update(aeronave: TAeronave);
var
  query: TFDQuery;
  sql: String;
begin
  query := DataModuleConn.FDQueryAeronave;

  query.Close;
  query.SQL.Clear;
  query.SQL.Add('UPDATE aeronaves SET');

  if aeronave.getFabricante <> '' then begin
    query.SQL.Add('fabricante = :fabricante, ');
  end;

  if aeronave.getModelo <> '' then begin
    query.SQL.Add('modelo = :modelo, ');
  end;

  if aeronave.getPassageirosMax <> 0 then begin
    query.SQL.Add('passageirosMax = :passageirosMax, ');
  end;

  if aeronave.getPilotosMax <> 0 then begin
    query.SQL.Add('pilotosMax = :pilotosMax, ');
  end;

  if aeronave.getComissariosMax <> 0 then begin
    query.SQL.Add('comissariosMax = :comissariosMax, ');
  end;

  sql := Trim(query.SQL.Text);
  if sql.EndsWith(',') then begin
    Delete(sql, Length(sql), 1);
  end;

  query.SQL.Text := sql + sLineBreak + 'WHERE id = :id';

  query.ParamByName('id').AsInteger := aeronave.getId;

  if aeronave.getFabricante <> '' then begin
    query.ParamByName('fabricante').AsString := aeronave.getFabricante;
  end;

  if aeronave.getModelo <> '' then begin
    query.ParamByName('modelo').AsString := aeronave.getModelo;
  end;

  if aeronave.getPassageirosMax <> 0 then begin
    query.ParamByName('passageirosMax').AsInteger := aeronave.getPassageirosMax;
  end;

  if aeronave.getPilotosMax <> 0 then begin
    query.ParamByName('pilotosMax').AsInteger := aeronave.getPilotosMax;
  end;

  if aeronave.getComissariosMax <> 0 then begin
    query.ParamByName('comissariosMax').AsInteger := aeronave.getComissariosMax;
  end;

  query.ExecSQL;
end;

end.
