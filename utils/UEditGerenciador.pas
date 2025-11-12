unit UEditGerenciador;

interface

uses
  Vcl.StdCtrls, System.SysUtils, System.Classes;

type
  TEditGerenciador = class
  public
    class procedure DesbloquearEdits(const Edits: array of TEdit);
    class procedure BloquearEdits(const Edits: array of TEdit);
    class procedure DesbloquearCombobox(const ComboBox: array of TComboBox);
    class procedure BloquearComboBox(const ComboBox: array of TComboBox);
  end;

implementation

{ TUsuariosController }

class procedure TEditGerenciador.DesbloquearEdits(const Edits: array of TEdit);
var
  I: Integer;
begin
  for I := Low(Edits) to High(Edits) do begin
    if Assigned(Edits[I]) then begin
      Edits[I].Enabled := True;
    end;
  end;
end;

class procedure TEditGerenciador.BloquearEdits(const Edits: array of TEdit);
var
  I: Integer;
begin
  for I := Low(Edits) to High(Edits) do begin
    if Assigned(Edits[I]) then begin
      Edits[I].Enabled := False;
    end;
  end;
end;

class procedure TEditGerenciador.DesbloquearCombobox(const ComboBox: array of TComboBox);
var
  I: Integer;
begin
  for I := Low(ComboBox) to High(ComboBox) do begin
    if Assigned(ComboBox[I]) then begin
      ComboBox[I].Enabled := True;
    end;
  end;
end;

class procedure TEditGerenciador.BloquearCombobox(const ComboBox: array of TComboBox);
var
  I: Integer;
begin
  for I := Low(ComboBox) to High(ComboBox) do begin
    if Assigned(ComboBox[I]) then begin
      ComboBox[I].Enabled := False;
    end;
  end;
end;

end.
