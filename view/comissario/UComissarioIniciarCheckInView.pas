unit UComissarioIniciarCheckInView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, UConn;

type
  TFormCheckInIniciado = class(TForm)
    PanelCentral: TPanel;
    LabelOrigem: TLabel;
    LabelDestino: TLabel;
    Label3: TLabel;
    LabelHoraPartida: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Button2: TButton;
    Button3: TButton;
    PanelSuperiorTitulos: TPanel;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    VooID: Integer;
    procedure CarregarDadosDoBanco;
    procedure CarregarDados(origem, destino, status, dataPartida, dataChegada, horaPartida: string);
  end;

var
  FormCheckInIniciado: TFormCheckInIniciado;

implementation

{$R *.dfm}

{ TFormCheckin_Iniciado }

procedure TFormCheckInIniciado.CarregarDados(origem, destino, status,
  dataPartida, dataChegada, horaPartida: string);
begin
  LabelOrigem.Caption := origem;
  LabelDestino.Caption := destino;
  LabelHoraPartida.Caption := horaPartida;
end;

procedure TFormCheckInIniciado.CarregarDadosDoBanco;
begin
  with DataModuleConn.FDQueryVoos do
  begin
    Close;
    SQL.Text := 'SELECT origem, destino, hora_partida ' +
                'FROM voos WHERE id = :id';
    ParamByName('id').AsInteger := VooID;
    Open;

    if not IsEmpty then
    begin
      LabelOrigem.Caption := FieldByName('origem').AsString;
      LabelDestino.Caption := FieldByName('destino').AsString;
      LabelHoraPartida.Caption := FieldByName('hora_partida').AsString;
    end;

    Close;
  end;
end;

procedure TFormCheckInIniciado.Edit1Change(Sender: TObject);
Var Filtro: String;
begin
  with DataModuleConn.FDQueryVoos do
  begin
    Close;
    SQL.Text := 'SELECT * FROM voos WHERE (nome ILIKE :filtro OR acento ILIKE :filtro ) ILIKE :filtro) AND id_aeromoca IS NULL ORDER BY data_partida, hora_partida';
    ParamByName('filtro').AsString := '%' + Filtro + '%';
    Open;
  end;
end;

end.
