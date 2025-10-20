unit CBloquear;

interface

uses
  Vcl.StdCtrls, System.SysUtils, System.Classes;

type
  TFormBloquear = class
  public
    procedure DesbloquearEdits(const Edits: array of TEdit);
    procedure BloquearEdits(const Edits: array of TEdit);
  end;

implementation

{ TUsuariosController }

procedure TFormBloquear.DesbloquearEdits(const Edits: array of TEdit);
var
  I: Integer;
begin
  for I := Low(Edits) to High(Edits) do
  begin
    if Assigned(Edits[I]) then
      Edits[I].Enabled := True;
  end;
end;

procedure TFormBloquear.BloquearEdits(const Edits: array of TEdit);
var
  I: Integer;
begin
  for I := Low(Edits) to High(Edits) do
    if Assigned(Edits[I]) then
      Edits[I].Enabled := False;
end;


end.
