unit CCadastroFuncionario;

interface

uses
  System.SysUtils, MCadastrofuncionario, Data.DB, Vcl.Dialogs;

type
  TCCadastroFuncionario = class
   private
    FModel: TFuncionarioCadastro;
  public
    constructor Create;
    destructor Destroy; override;
    procedure CarregarFuncionarios;
    procedure Salvar (const Nome, Email, Cargo, CPF, Telefone, CEP, Rua, Escolaridade: string);
    procedure BuscarFiltro(const Filtro: string);
    procedure ExcluirFuncionario;
  end;

implementation

var OpcoesSalvar: Boolean = False;

{ TCCadastroFuncionario }

constructor TCCadastroFuncionario.Create;
begin
  FModel := TFuncionarioCadastro.Create;
end;

destructor TCCadastroFuncionario.Destroy;
begin
  FModel.Free;
  FModel := nil;
  inherited Destroy;
end;

procedure TCCadastroFuncionario.CarregarFuncionarios;
begin
  FModel.AbrirFuncionarios;
end;

procedure TCCadastroFuncionario.Salvar;
begin

  if OpcoesSalvar = False then
  begin
    if (Trim(Nome) = '') or (Trim(Email) = '') or (Trim(Cargo) = '') then
      begin
      ShowMessage('Informe um Nome, E-mail e Cargo.');
      Exit;
      end;
    FModel.SalvarFuncionarios(Nome, Email, Cargo, CPF, Telefone, CEP, Rua, Escolaridade)
   end else
  begin
    FModel.AtualizarFuncionarios(Nome, Email, Cargo, CPF, Telefone, CEP, Rua, Escolaridade);
  end;

end;

procedure TCCadastroFuncionario.BuscarFiltro(const Filtro: string);
begin
   FModel.Buscar(Filtro);
end;

procedure TCCadastroFuncionario.ExcluirFuncionario;
begin
  FModel.Exluir;
end;

end.
