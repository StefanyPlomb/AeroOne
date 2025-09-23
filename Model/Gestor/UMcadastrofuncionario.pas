unit UMcadastrofuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;


type
  TFuncionario = class
  private
    FID: Integer;
    FNome: string;
    FIdade: Integer;
    FCargo: string;
    FSalario: Double;

    function GetID: Integer;
    procedure SetID(const Value: Integer);

    function GetNome: string;
    procedure SetNome(const Value: string);

    function GetIdade: Integer;
    procedure SetIdade(const Value: Integer);

    function GetCargo: string;
    procedure SetCargo(const Value: string);

    function GetSalario: Double;
    procedure SetSalario(const Value: Double);

  public

  end;

implementation

{ TFuncionario }

function TFuncionario.GetID: Integer;
begin
  Result := FID;
end;

procedure TFuncionario.SetID(const Value: Integer);
begin
  FID := Value;
end;

function TFuncionario.GetNome: string;
begin
  Result := FNome;
end;

procedure TFuncionario.SetNome(const Value: string);
begin
  FNome := Value;
end;

function TFuncionario.GetIdade: Integer;
begin
  Result := FIdade;
end;

procedure TFuncionario.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

function TFuncionario.GetCargo: string;
begin
  Result := FCargo;
end;

procedure TFuncionario.SetCargo(const Value: string);
begin
  FCargo := Value;
end;

function TFuncionario.GetSalario: Double;
begin
  Result := FSalario;
end;

procedure TFuncionario.SetSalario(const Value: Double);
begin
  FSalario := Value;
end;

end.
