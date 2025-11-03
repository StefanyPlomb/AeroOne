unit UCheckin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, UDash, UIniciarCheckin,UData;
type
  TFormCheckin = class(TForm)
    PaneleCentral_AeroMo: TPanel;
    LabelSubtituloCheck: TLabel;
    LabelTituloCheck: TLabel;
    DBGridAtribuidos: TDBGrid;
    Edit1: TEdit;
    ButBuscar_Aeromo: TPanel;
    ButtonIniciar: TButton;
    PanelAbrir: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ButtonIniciarClick(Sender: TObject);
  private
    procedure AbrirDash(AFormClass: TFormClass);
  public
  end;

var
  FormCheckin: TFormCheckin;

implementation

uses
  UAeromoc;

{$R *.dfm}

procedure TFormCheckin.AbrirDash(AFormClass: TFormClass);
var
  Frm: TForm;
begin
  if PanelAbrir.ControlCount > 0 then
    PanelAbrir.Controls[0].Free;

  Frm := AFormClass.Create(Self);
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Parent := PanelAbrir;
  Frm.Show;
end;

procedure TFormCheckin.ButtonIniciarClick(Sender: TObject);
var
  Form2: TFormCheckin_Iniciado;
  VooID: Integer;
begin

  if not DBGridAtribuidos.DataSource.DataSet.IsEmpty then
  begin

    VooID := DBGridAtribuidos.DataSource.DataSet.FieldByName('id').AsInteger;


    Form2 := TFormCheckin_Iniciado.Create(Self);
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


procedure TFormCheckin.FormCreate(Sender: TObject);
begin
  AbrirDash(TFormDash);
  DBGridAtribuidos.DataSource := DataModule1.DataSourceAtribuidos;

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

