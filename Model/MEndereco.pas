unit MEndereco;

interface

 type
  TEndereco = class
  private
    FId: Integer;
    FIdUsuario: Integer;
    FCep: string;
    FLogradouro: string;
    FBairro: string;
    FNumero: string;
    FCidade: string;
  public
    property Id: Integer read FId write FId;
    property IdUsuario: Integer read FIdUsuario write FIdUsuario;
    property Cep: string read FCep write FCep;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Numero: string read FNumero write FNumero;
    property Bairro: string read FBairro write FBairro;
    property Cidade: string read FCidade write FCidade;
  end;

implementation

end.
