unit UVoosAeroMo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids,UData;

type
  TFormVoosAeroMo = class(TForm)
    PanelCentral_AeroMo: TPanel;
    LabelSubtituloVoo: TLabel;
    LabelTituloVoo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBGridVoosDisponiveis: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Image1: TImage;
    ButBuscar_Aeromo: TPanel;
    ButConecta: TPanel;
    ButDesconecta: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ButConectaClick(Sender: TObject);
    procedure AtualizarVoosAtribuidos;
  private
  procedure AbrirVoo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVoosAeroMo: TFormVoosAeroMo;
 // UsuarioLogadoID := FormLogin.UsuarioID;

implementation

{$R *.dfm}

procedure TFormVoosAeroMo.ButConectaClick(Sender: TObject);
var
  idVooSelecionado: Integer;
begin
  if DataModule1.FDQueryVoos.IsEmpty then
  begin
    ShowMessage('Nenhum voo selecionado.');
    Exit;
  end;

  // Pega o voo selecionado
  idVooSelecionado := DataModule1.FDQueryVoos.FieldByName('id_voo').AsInteger;

  DataModule1.FDQueryVoos.Edit;
  DataModule1.FDQueryVoos.FieldByName('id_aeromoca').AsInteger := DataModule1.UsuarioLogadoID;
  DataModule1.FDQueryVoos.Post;

  ShowMessage('Conexão realizada com sucesso!');

   AtualizarVoosAtribuidos;
end;



procedure TFormVoosAeroMo.FormCreate(Sender: TObject);
begin
 with DBGridVoosDisponiveis.Columns.Add do
begin
  FieldName := 'codigo_voo';
  Title.Caption := 'Codigo';
   Title.Font.Style := [fsBold];
   Title.Font.size := 15;
end;

 with DBGridVoosDisponiveis.Columns.Add do
begin
  FieldName := 'origem';
  Title.Caption := 'Partida';
   Title.Font.Style := [fsBold];
   Title.Font.size := 15;
end;

with DBGridVoosDisponiveis.Columns.Add do
begin
  FieldName := 'destino';
  Title.Caption := 'Destino';
   Title.Font.Style := [fsBold];
   Title.Font.size := 15;
end;

with DBGridVoosDisponiveis.Columns.Add do
begin
  FieldName := 'status';
  Title.Caption := 'Status do Voo';
   Title.Font.Style := [fsBold];
   Title.Font.size := 15;
end;
  AbrirVoo;
end;


procedure TFormVoosAeroMo.AbrirVoo;
begin
   if not DataModule1.FDQueryVoos.Active then
  begin
    DataModule1.FDQueryVoos.Close;
    DataModule1.FDQueryVoos.SQL.Text := 'SELECT * FROM voos';
    DataModule1.FDQueryVoos.Open;
  end;

end;

procedure TFormVoosAeroMo.AtualizarVoosAtribuidos;   // banco persis
begin
  DataModule1.FDQueryAtribuidos.Close;
  DataModule1.FDQueryAtribuidos.SQL.Text :=
    'SELECT v.id_voo, v.codigo_voo, v.origem, v.destino, v.status ' +
    'FROM voos v ' +
    'WHERE v.id_aeromoca = :id_usuario';
  DataModule1.FDQueryAtribuidos.ParamByName('id_usuario').AsInteger := DataModule1.UsuarioLogadoID;
  DataModule1.FDQueryAtribuidos.Open;
end;



end.
