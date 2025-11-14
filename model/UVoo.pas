unit UVoo;

interface

type
  TVoo = class
  private
    Fid: Integer;
    FnumeroVoo: String;
    FidAeronave: Integer;
    Forigem: String;
    Fdestino: String;
    FdataPartida: String;
    FhoraPartida: String;
    FdataChegada: String;
    FhoraChegada: String;
    Fstatus: String;
  public
    function getId: Integer;
    procedure setId(const Value: Integer);
    function getNumeroVoo: String;
    procedure setNumeroVoo(const Value: String);
    function getIdAeronave: Integer;
    procedure setIdAeronave(const Value: Integer);
    function getOrigem: String;
    procedure setOrigem(const Value: String);
    function getDestino: String;
    procedure setDestino(const Value: String);
    function getDataPartida: String;
    procedure setDataPartida(const Value: String);
    function getHoraPartida: String;
    procedure setHoraPartida(const Value: String);
    function getDataChegada: String;
    procedure setDataChegada(const Value: String);
    function getHoraChegada: String;
    procedure setHoraChegada(const Value: String);
    function getStatus: String;
    procedure setStatus(const Value: String);
  end;

implementation

{ TVoo }

function TVoo.getId: Integer;
begin
  Result := Fid;
end;

procedure TVoo.setId(const Value: Integer);
begin
  Fid := Value;
end;

function TVoo.getNumeroVoo: String;
begin
  Result := FnumeroVoo;
end;

procedure TVoo.setNumeroVoo(const Value: String);
begin
  FnumeroVoo := Value;
end;

function TVoo.getIdAeronave: Integer;
begin
  Result := FidAeronave;
end;

procedure TVoo.setIdAeronave(const Value: Integer);
begin
  FidAeronave := Value;
end;

function TVoo.getOrigem: String;
begin
  Result := Forigem;
end;

procedure TVoo.setOrigem(const Value: String);
begin
  Forigem := Value;
end;

function TVoo.getDestino: String;
begin
  Result := Fdestino;
end;

procedure TVoo.setDestino(const Value: String);
begin
  Fdestino := Value;
end;

function TVoo.getDataPartida: String;
begin
  Result := FdataPartida;
end;

procedure TVoo.setDataPartida(const Value: String);
begin
  FdataPartida := Value;
end;

function TVoo.getHoraPartida: String;
begin
  Result := FhoraPartida;
end;

procedure TVoo.setHoraPartida(const Value: String);
begin
  FhoraPartida := Value;
end;

function TVoo.getDataChegada: String;
begin
  Result := FdataChegada;
end;

procedure TVoo.setDataChegada(const Value: String);
begin
  FdataChegada := Value;
end;

function TVoo.getHoraChegada: String;
begin
  Result := FhoraChegada;
end;

procedure TVoo.setHoraChegada(const Value: String);
begin
  FhoraChegada := Value;
end;

function TVoo.getStatus: String;
begin
  Result := Fstatus;
end;

procedure TVoo.setStatus(const Value: String);
begin
  Fstatus := Value;
end;

end.
