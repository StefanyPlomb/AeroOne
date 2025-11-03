unit MEndereco;

interface

 type
  TEndereco = class
  private
    FId: Integer;
    FIdUsuario: Integer;
    FCep: string;
    FRua: string;
    FBairro: string;
    FNumero: string;
    FCidade: string;
  public
    property Id: Integer read FId write FId;
    property IdUsuario: Integer read FIdUsuario write FIdUsuario;
    property Cep: string read FCep write FCep;
    property Rua: string read FRua write FRua;
    property Bairro: string read FBairro write FBairro;
    property Cidade: string read FCidade write FCidade;
  end;

implementation

end.
