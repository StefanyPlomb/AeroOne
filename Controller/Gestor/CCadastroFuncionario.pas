unit CCadastroFuncionario;

interface

uses
  System.SysUtils, MCadastrofuncionario, UData, Data.DB, Vcl.Dialogs;

type
  TCCadastroFuncionario = class
  public
    function BuscarUsuarioPorID(ID: Integer): TFuncionario;
  end;

implementation



end.
