unit UVoosAeroMo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids, UData;

type
  TFormVoosAeroMo = class(TForm)
    PanelCentral_AeroMo: TPanel;
    LabelSubtituloVoo: TLabel;
    LabelTituloVoo: TLabel;
    LabelVoosDisponiveisTitulo: TLabel;
    LabelQuantidadeDisponivel: TLabel;
    DBGridVoosDisponiveis: TDBGrid;
    LabelVoosAtribuidosTitulo: TLabel;
    LabelQuantidadeAtribuida: TLabel;
    DBGrid2: TDBGrid;
    EditBuscaDisponiveis: TEdit;
    Image1: TImage;
    ButBuscar_Aeromo: TPanel;
    ButConecta: TPanel;
    ButDesconecta: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ButConectaClick(Sender: TObject);
    procedure EditBuscaDisponiveisChange(Sender: TObject);

  private
    procedure AbrirVoosDisponiveis;
    procedure AtualizarVoosAtribuidos;
    procedure AtualizarQuantidade;
    procedure AtualizarGrids;
  public
  end;

var
  FormVoosAeroMo: TFormVoosAeroMo;

implementation

{$R *.dfm}

{ ----------------- BOT�O DE CONECTAR VOOS ----------------- }
procedure TFormVoosAeroMo.ButConectaClick(Sender: TObject);
begin
  if DataModule1.FDQueryVoos.IsEmpty then
  begin
    ShowMessage('Nenhum voo selecionado.');
    Exit;
  end;

  // Atualiza o voo selecionado para o usu�rio logado
  DataModule1.FDQueryVoos.Edit;
  DataModule1.FDQueryVoos.FieldByName('id_aeromoca').AsInteger := DataModule1.UsuarioLogadoID;
  DataModule1.FDQueryVoos.Post;

  ShowMessage('Conex�o realizada com sucesso!');

  // Atualiza todos os grids e contagens
  AtualizarGrids;
end;

{ ----------------- FILTRO DE VOOS DISPON�VEIS ----------------- }
procedure TFormVoosAeroMo.EditBuscaDisponiveisChange(Sender: TObject);
begin
  with DataModule1.FDQueryVoos do
  begin
    Close;
    SQL.Text := 'SELECT * FROM voos WHERE (origem ILIKE :filtro OR destino ILIKE :filtro OR CAST(data_partida AS VARCHAR) ILIKE :filtro) AND id_aeromoca IS NULL ORDER BY data_partida, hora_partida';
    ParamByName('filtro').AsString := '%' + EditBuscaDisponiveis.Text + '%';
    Open;
  end;
end;

{ ----------------- FORM CREATE ----------------- }
procedure TFormVoosAeroMo.FormCreate(Sender: TObject);
begin
  // Liga os DBGrids aos DataSources corretos
  DBGridVoosDisponiveis.DataSource := DataModule1.DataSourceVoos;       // voos dispon�veis
  DBGrid2.DataSource := DataModule1.DataSourceAtribuidos;               // voos atribu�dos

  // Configura colunas do DBGrid de voos dispon�veis
  with DBGridVoosDisponiveis.Columns.Add do
  begin
    FieldName := 'origem'; Title.Caption := 'Partida'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridVoosDisponiveis.Columns.Add do
  begin
    FieldName := 'destino'; Title.Caption := 'Destino'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridVoosDisponiveis.Columns.Add do
  begin
    FieldName := 'status'; Title.Caption := 'Status do Voo'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridVoosDisponiveis.Columns.Add do
  begin
    FieldName := 'data_partida'; Title.Caption := 'Data Partida'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridVoosDisponiveis.Columns.Add do
  begin
    FieldName := 'data_chegada'; Title.Caption := 'Data Chegada'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridVoosDisponiveis.Columns.Add do
  begin
    FieldName := 'hora_partida'; Title.Caption := 'Hora Partida'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;

  // Inicializa os grids e contagens
  AtualizarGrids;
end;


{ ----------------- ABRIR VOOS DISPON�VEIS ----------------- }
procedure TFormVoosAeroMo.AbrirVoosDisponiveis;
begin
  with DataModule1.FDQueryVoos do
  begin
    Close;
    SQL.Text := 'SELECT * FROM voos WHERE id_aeromoca IS NULL ORDER BY data_partida, hora_partida';
    Open;
  end;
end;

{ ----------------- ATUALIZA VOOS ATRIBU�DOS ----------------- }
procedure TFormVoosAeroMo.AtualizarVoosAtribuidos;
begin
  with DataModule1.FDQueryAtribuidos do
  begin
    Close;
    SQL.Text := 'SELECT * FROM voos WHERE id_aeromoca = :id_aero ORDER BY data_partida, hora_partida';
    ParamByName('id_aero').AsInteger := DataModule1.UsuarioLogadoID;
    Open;
  end;
end;

{ ----------------- ATUALIZA QUANTIDADES ----------------- }
procedure TFormVoosAeroMo.AtualizarQuantidade;
begin
  // Voos dispon�veis
  with DataModule1.FDQueryQuantidade do
  begin
    Close;
    SQL.Text := 'SELECT COUNT(*) AS total FROM voos WHERE id_aeromoca IS NULL';
    Open;
    LabelQuantidadeDisponivel.Caption := FieldByName('total').AsString;
    Close;
  end;

  // Voos atribu�dos ao usu�rio
  with DataModule1.FDQueryQuantidade do
  begin
    Close;
    SQL.Text := 'SELECT COUNT(*) AS total FROM voos WHERE id_aeromoca = :id';
    ParamByName('id').AsInteger := DataModule1.UsuarioLogadoID;
    Open;
    LabelQuantidadeAtribuida.Caption := FieldByName('total').AsString;
    Close;
  end;
end;

{ ----------------- ATUALIZA TODOS OS GRIDS ----------------- }
procedure TFormVoosAeroMo.AtualizarGrids;
begin
  AbrirVoosDisponiveis;       // SELECT * FROM voos WHERE id_aeromoca IS NULL
  AtualizarVoosAtribuidos;    // SELECT * FROM voos WHERE id_aeromoca = :id_aero
  AtualizarQuantidade;
end;

end.

