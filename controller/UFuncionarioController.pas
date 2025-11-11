unit UFuncionarioController;

interface

uses
  System.SysUtils, UFuncionarioDao, Vcl.Dialogs;

type
  TFuncionarioController = class
  private
    FModel: TFuncionarioModel;
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

constructor TFuncionarioController.Create;
begin
  FModel := TFuncionarioModel.Create;
end;

destructor TFuncionarioController.Destroy;
begin
  FModel.Free;
  FModel := nil;
  inherited Destroy;
end;

procedure TFuncionarioController.CarregarFuncionarios;
begin
  FModel.AbrirFuncionarios;
end;

procedure TFuncionarioController.Salvar;
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

procedure TFuncionarioController.BuscarFiltro(const Filtro: string);
begin
   FModel.Buscar(Filtro);
end;

procedure TFuncionarioController.ExcluirFuncionario;
begin
  FModel.Exluir;
end;

end.
