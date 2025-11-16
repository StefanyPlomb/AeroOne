unit UComissarioCheckInView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, UComissarioIniciarCheckInView, UConn, UUsuario,
  Vcl.Imaging.pngimage;

type
  TFormComissarioCheckIn = class(TForm)
    pnlLateral: TPanel;
    pnlInciar: TPanel;
    imgIniciarGreen: TImage;
    imgIniciarWhite: TImage;
    pnlMainFrame: TPanel;
    DBGridVoos: TDBGrid;
    pnlHeader: TPanel;
    pnlSearch: TPanel;
    imgSearch: TImage;
    edtSearch: TEdit;
    pnlDiv1: TPanel;
    pnlVoosDisponiveis: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ButtonIniciarClick(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
  public
    { Public declarations }
    constructor create(owner: TForm; aUsuario: TUsuario);
  end;

var
  FormComissarioCheckIn: TFormComissarioCheckIn;

implementation

uses
  UComissarioView;

{$R *.dfm}

procedure TFormComissarioCheckIn.ButtonIniciarClick(Sender: TObject);
var
  Form2: TFormCheckInIniciado;
  VooID: Integer;
begin

  if not DBGridAtribuidos.DataSource.DataSet.IsEmpty then
  begin

    VooID := DBGridAtribuidos.DataSource.DataSet.FieldByName('id').AsInteger;


    Form2 := TFormCheckInIniciado.Create(Self);
    try
      Form2.VooID := VooID;
      Form2.CarregarDadosDoBanco;
      Form2.ShowModal;
    finally
      Form2.Free;
    end;
  end
  else
    ShowMessage('Nenhum voo selecionado!');
end;


constructor TFormComissarioCheckIn.create(owner: TForm; aUsuario: TUsuario);
begin
  inherited create(owner);
  usuario := aUsuario;
end;

procedure TFormComissarioCheckIn.FormCreate(Sender: TObject);
begin
  DBGridAtribuidos.DataSource := DataModuleConn.DataSourceAtribuidos;

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

end.

