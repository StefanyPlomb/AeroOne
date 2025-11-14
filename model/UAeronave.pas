unit UAeronave;

interface

type
  TAeronave = class
  private
    Fid: Integer;
    Ffabricante: String;
    Fmodelo: String;
    FpassageirosMax: Integer;
    FpilotosMax: Integer;
    FcomissariosMax: Integer;
  public
    function getId: Integer;
    procedure setId(const Value: Integer);
    function getFabricante: String;
    procedure setFabricante(const Value: String);
    function getModelo: String;
    procedure setModelo(const Value: String);
    function getPassageirosMax: Integer;
    procedure setPassageirosMax(const Value: Integer);
    function getPilotosMax: Integer;
    procedure setPilotosMax(const Value: Integer);
    function getComissariosMax: Integer;
    procedure setComissariosMax(const Value: Integer);
  end;

implementation

{ TAeronave }

function TAeronave.getId: Integer;
begin
  Result := Fid;
end;

procedure TAeronave.setId(const Value: Integer);
begin
  Fid := Value;
end;

function TAeronave.getFabricante: String;
begin
  Result := Ffabricante;
end;

procedure TAeronave.setFabricante(const Value: String);
begin
  Ffabricante := Value;
end;

function TAeronave.getModelo: String;
begin
  Result := Fmodelo;
end;

procedure TAeronave.setModelo(const Value: String);
begin
  Fmodelo := Value;
end;

function TAeronave.getPassageirosMax: Integer;
begin
  Result := FpassageirosMax;
end;

procedure TAeronave.setPassageirosMax(const Value: Integer);
begin
  FpassageirosMax := Value;
end;

function TAeronave.getPilotosMax: Integer;
begin
  Result := FpilotosMax;
end;

procedure TAeronave.setPilotosMax(const Value: Integer);
begin
  FpilotosMax := Value;
end;

function TAeronave.getComissariosMax: Integer;
begin
  Result := FcomissariosMax;
end;

procedure TAeronave.setComissariosMax(const Value: Integer);
begin
  FcomissariosMax := Value;
end;

end.
