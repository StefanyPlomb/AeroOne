unit Mcadastrofuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;


type
  TFuncionario = class
  private
    FNome: string;
    FCargo: string;
    FEmail: string;
    FTelefone: string;
    FCPF: string;
    FRG: string;
    FPassaporte: string;


    function GetNome: string;
    procedure SetNome(const Value: string);

    function GetCargo: string;
    procedure SetCargo(const Value: string);

    function GetEmail: string;
    procedure SetEmail(const Value: string);

    function GetTelefone: string;
    procedure SetTelefone(const Value: string);

    function GetCPF: string;
    procedure SetCPF(const Value: string);

    function GetRG: string;
    procedure SetRG(const Value: string);

    function GetPassaporte: string;
    procedure SetPassaporte(const Value: string);

  public

  end;

implementation

{ TFuncionario }


function TFuncionario.GetNome: string;
begin
  Result := FNome;
end;

procedure TFuncionario.SetNome(const Value: string);
begin
  FNome := Value;
end;


function TFuncionario.GetCargo: string;
begin
  Result := FCargo;
end;

procedure TFuncionario.SetCargo(const Value: string);
begin
  FCargo := Value;
end;

function TFuncionario.GetEmail: string;
begin
  Result := FEmail;
end;

procedure TFuncionario.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

function TFuncionario.GetTelefone: string;
begin
  Result := FTelefone;
end;

procedure TFuncionario.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

function TFuncionario.GetCPF: string;
begin
  Result := FCPF;
end;

procedure TFuncionario.SetCPF(const Value: string);
begin
  FCPF := Value;
end;

function TFuncionario.GetRG: string;
begin
  Result := FRG;
end;

procedure TFuncionario.SetRG(const Value: string);
begin
  FRG := Value;
end;

function TFuncionario.GetPassaporte: string;
begin
  Result := FPassaporte;
end;

procedure TFuncionario.SetPassaporte(const Value: string);
begin
  FPassaporte := Value;
end;




end.
