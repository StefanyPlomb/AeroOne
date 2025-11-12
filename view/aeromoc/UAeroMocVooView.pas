unit UAeroMocVooView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids, UConn, UVooController, UVooDao;

type
  TFormVoosAeroMo = class(TForm)
    PanelCentral_AeroMo: TPanel;
    LabelVoosDisponiveisTitulo: TLabel;
    LabelQuantidadeDisponivel: TLabel;
    DBGridVoosDisponiveis: TDBGrid;
    LabelVoosAtribuidosTitulo: TLabel;
    LabelQuantidadeAtribuida: TLabel;
    DBGridAtribuidos: TDBGrid;
    EditBuscaDisponiveis: TEdit;
    ButConecta: TPanel;
    ButDesconecta: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    PanelSuperiorTitulos: TPanel;
    PanelVoosDisponiveis: TPanel;
    PanelVoosAtribuidos: TPanel;
    PanelLateralBotoes: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ButConectaClick(Sender: TObject);
    procedure EditBuscaDisponiveisChange(Sender: TObject);
    procedure ButDesconectaClick(Sender: TObject);

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


procedure TFormVoosAeroMo.FormCreate(Sender: TObject);
begin

 DBGridVoosDisponiveis.DataSource := DataModuleConn.DataSourceVoos;
 DBGridAtribuidos.DataSource := DataModuleConn.DataSourceAtribuidos;

   AtualizarGrids;

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

   with DBGridAtribuidos.Columns.Add do
  begin
    FieldName := 'origem'; Title.Caption := 'Partida'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridAtribuidos.Columns.Add do
  begin
    FieldName := 'destino'; Title.Caption := 'Destino'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridAtribuidos.Columns.Add do
  begin
    FieldName := 'status'; Title.Caption := 'Status do Voo'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridAtribuidos.Columns.Add do
  begin
    FieldName := 'data_partida'; Title.Caption := 'Data Partida'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridAtribuidos.Columns.Add do
  begin
    FieldName := 'data_chegada'; Title.Caption := 'Data Chegada'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;
  with DBGridAtribuidos.Columns.Add do
  begin
    FieldName := 'hora_partida'; Title.Caption := 'Hora Partida'; Title.Font.Style := [fsBold]; Title.Font.Size := 15;
  end;

end;

{ ----------------- FIM  ----------------- }

procedure TFormVoosAeroMo.ButConectaClick(Sender: TObject);
begin
   // TVooController.ConectarVoo(DataModuleConn.TipoUsuarioLogado);
   ShowMessage('Conexão realizada com sucesso!');

  AtualizarGrids;
end;

procedure TFormVoosAeroMo.ButDesconectaClick(Sender: TObject);  // não ta funcionándo

begin
  // TVooController.ConectarVoo(DataModuleConn.TipoUsuarioLogado);
  ShowMessage('Conexão realizada com sucesso!');
  AtualizarGrids;

end;

procedure TFormVoosAeroMo.EditBuscaDisponiveisChange(Sender: TObject);
begin
  TVooController.Busca(EditBuscaDisponiveis.Text);
end;


procedure TFormVoosAeroMo.AbrirVoosDisponiveis;
begin
  // TVooController.BaixarVoos(DataModuleConn.TipoUsuarioLogado)
end;


procedure TFormVoosAeroMo.AtualizarVoosAtribuidos;
begin
  // TVooController.Atribuidos(DataModuleConn.TipoUsuarioLogado, DataModuleConn.UsuarioLogadoID);
end;


procedure TFormVoosAeroMo.AtualizarQuantidade;
var
  QtdDisponiveis, QtdAtribuidos: Integer;
begin
  TVooController.Quantidade(QtdDisponiveis, QtdAtribuidos);
  LabelQuantidadeDisponivel.Caption := QtdDisponiveis.ToString;
  LabelQuantidadeAtribuida.Caption := QtdAtribuidos.ToString;
end;

procedure TFormVoosAeroMo.AtualizarGrids;
begin
  AbrirVoosDisponiveis;
  AtualizarVoosAtribuidos;
  AtualizarQuantidade;
end;

end.

