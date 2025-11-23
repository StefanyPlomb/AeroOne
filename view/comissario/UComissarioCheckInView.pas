unit UComissarioCheckInView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.WinXPanels,
  UUsuario, UVoo;

type
  TFormComissarioCheckIn = class(TForm)
    cardComissarioCheckIn: TCardPanel;
    cardVoos: TCard;
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
    cardCheckIn: TCard;
    pnlLateralCheckIn: TPanel;
    pnlVoltar: TPanel;
    imgVoltarRed: TImage;
    imgVoltarWhite: TImage;
    pnlLiberar: TPanel;
    imgLiberarGreen: TImage;
    imgLiberarWhite: TImage;
    pnlMainFrameCheckIn: TPanel;
    pnlVoosAtribuidos: TPanel;
    DBGridVoosPassageiros: TDBGrid;
    pnlSearchCheckIn: TPanel;
    pnlSearchCheckInFrame: TPanel;
    imgSearchCheckIn: TImage;
    edtSearchCheckIn: TEdit;
    pnlDivSearchCheckIn: TPanel;
    pnlVoo: TPanel;
    pnlNumeroVooText: TPanel;
    pnlVooText: TPanel;
    pnlQuantidades: TPanel;
    pnlTodos: TPanel;
    pnlTodosText: TPanel;
    pnlDivTodos: TPanel;
    pnlTodosQuantidade: TPanel;
    pnlLiberados: TPanel;
    pnlLiberadosText: TPanel;
    pnlDivLiberados: TPanel;
    pnlLiberadosQuantidade: TPanel;
    pnlFaltantes: TPanel;
    pnlFaltantesText: TPanel;
    pnlDivFaltantes: TPanel;
    pnlFaltantesQuantidade: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure imgVoltarWhiteMouseLeave(Sender: TObject);
    procedure imgVoltarRedMouseEnter(Sender: TObject);
    procedure imgLiberarWhiteMouseLeave(Sender: TObject);
    procedure imgLiberarGreenMouseEnter(Sender: TObject);
    procedure imgVoltarWhiteClick(Sender: TObject);
    procedure imgIniciarGreenMouseEnter(Sender: TObject);
    procedure imgIniciarWhiteMouseLeave(Sender: TObject);
    procedure imgIniciarWhiteClick(Sender: TObject);
    procedure cardCheckInEnter(Sender: TObject);
    procedure edtSearchCheckInChange(Sender: TObject);
    procedure imgLiberarWhiteClick(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
    voo: TVoo;
    procedure loadGrid(searchBar: String);
    procedure loadGridPassageiros(searchBar: String);
    procedure loadVooEmAndamento;
    procedure mudarParaVoosAtribuidos;
    function getVooSelecionadoGrid: TVoo;
    procedure updateQuantidades;
  public
    { Public declarations }
  constructor create(owner: TForm; aUsuario: TUsuario);
  end;

var
  FormComissarioCheckIn: TFormComissarioCheckIn;

implementation

uses UVooController, UConn;

{$R *.dfm}

procedure TFormComissarioCheckIn.cardCheckInEnter(Sender: TObject);
begin
  loadGridPassageiros(edtSearchCheckIn.Text);
end;

constructor TFormComissarioCheckIn.create(owner: TForm; aUsuario: TUsuario);
begin
  inherited create(owner);
  usuario := aUsuario;
end;

procedure TFormComissarioCheckIn.edtSearchCheckInChange(Sender: TObject);
begin
  loadGridPassageiros(edtSearchCheckIn.Text);
end;

procedure TFormComissarioCheckIn.FormCreate(Sender: TObject);
var
  vooBD: TVoo;
begin
  vooBD := TVooController.getVooEmAndamento(usuario.getId);
  if vooBD <> nil then begin
    cardComissarioCheckIn.ActiveCard := cardCheckIn;
    voo := vooBD;
    loadVooEmAndamento;
  end else begin
    cardComissarioCheckIn.ActiveCard := cardVoos;
    loadGrid(edtSearch.Text);
  end;
end;

function TFormComissarioCheckIn.getVooSelecionadoGrid: TVoo;
var
  ds: TDataSet;
  voo: TVoo;
begin
  ds := DBGridVoos.DataSource.DataSet;

  voo := TVoo.Create;
  voo.setId(ds.FieldByName('id').AsInteger );
  voo.setNumeroVoo(ds.FieldByName('numeroVoo').AsString );
  voo.setIdAeronave(ds.FieldByName('idAeronave').AsInteger );
  voo.setOrigem(ds.FieldByName('origem').AsString );
  voo.setDestino(ds.FieldByName('destino').AsString );
  voo.setDataPartida(ds.FieldByName('dataPartida').AsString );
  voo.setHoraPartida(ds.FieldByName('horaPartida').AsString );
  voo.setDataChegada(ds.FieldByName('dataChegada').AsString );
  voo.setHoraChegada(ds.FieldByName('horaChegada').AsString );
  voo.setStatus(ds.FieldByName('status').AsString );
  result := voo;
end;

procedure TFormComissarioCheckIn.imgIniciarGreenMouseEnter(Sender: TObject);
begin
  imgIniciarWhite.Visible := true;
  imgIniciarGreen.Visible := false;
end;

procedure TFormComissarioCheckIn.imgIniciarWhiteClick(Sender: TObject);
begin
  voo := getVooSelecionadoGrid;
  loadVooEmAndamento;
  cardComissarioCheckIn.ActiveCard := cardCheckIn;
end;

procedure TFormComissarioCheckIn.imgIniciarWhiteMouseLeave(Sender: TObject);
begin
  imgIniciarWhite.Visible := false;
  imgIniciarGreen.Visible := true;
end;

procedure TFormComissarioCheckIn.imgLiberarGreenMouseEnter(Sender: TObject);
begin
  imgLiberarWhite.Visible := true;
  imgLiberarGreen.Visible := false;
end;

procedure TFormComissarioCheckIn.imgLiberarWhiteClick(Sender: TObject);
var
  ds: TDataSet;
begin
  if MessageDlg('Tem certeza que deseja liberar este passageiro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    ds := DBGridVoosPassageiros.DataSource.DataSet;

    if ds.IsEmpty then begin
      ShowMessage('Nenhum passageiro selecionado');
      exit;
    end;

    try
      TVooController.liberarPassageiro(ds.FieldByName('idUsuario').AsInteger, voo.getId);
      updateQuantidades;
      loadGridPassageiros(edtSearchCheckIn.Text);
    except
      on e: Exception do begin
        ShowMessage(e.Message);
      end;
    end;
  end;
end;

procedure TFormComissarioCheckIn.imgLiberarWhiteMouseLeave(Sender: TObject);
begin
  imgLiberarWhite.Visible := false;
  imgLiberarGreen.Visible := true;
end;

procedure TFormComissarioCheckIn.imgVoltarRedMouseEnter(Sender: TObject);
begin
  imgVoltarWhite.Visible := true;
  imgVoltarRed.Visible := false;
end;

procedure TFormComissarioCheckIn.imgVoltarWhiteClick(Sender: TObject);
begin
  mudarParaVoosAtribuidos;
end;

procedure TFormComissarioCheckIn.imgVoltarWhiteMouseLeave(Sender: TObject);
begin
  imgVoltarWhite.Visible := false;
  imgVoltarRed.Visible := true;
end;

procedure TFormComissarioCheckIn.loadGrid(searchBar: String);
var
  id: Integer;
  numeroVoo, status: String;
begin
  DBGridVoos.DataSource := DataModuleConn.DataSourceVoosAtribuidos;

  try
    id := StrToInt(searchBar);
  except
    id := 0;
    numeroVoo := searchBar;
  end;

  status := '';
  if (searchBar.ToUpper.Contains('INATIVO')) or (searchBar.ToUpper.Contains('CANCELADO')) then begin
    status := 'C';
  end else if searchBar.ToUpper.Contains('ATIVO') then begin
    status := 'A';
  end else if searchBar.ToUpper.Contains('CHECK-IN') then begin
    status := 'I';
  end else if searchBar.ToUpper.Contains('EM ANDAMENTO') then begin
    status := 'E';
  end else if searchBar.ToUpper.Contains('FINALIZADO') then begin
    status := 'F';
  end;

  TVooController.getVoosAtribuidos(id, usuario.getId, numeroVoo, status);
end;

procedure TFormComissarioCheckIn.loadGridPassageiros(searchBar: String);
var
  nome, assento: String;
begin
  DBGridVoosPassageiros.DataSource := DataModuleConn.DataSourceVoos;

  if searchBar.Contains('-') then begin
    nome := '';
    assento := searchBar;
  end else begin
    nome := searchBar;
    assento := '';
  end;

  TVooController.getPassageiros(nome, assento);
end;

procedure TFormComissarioCheckIn.loadVooEmAndamento;
begin
  pnlNumeroVooText.Caption := voo.getNumeroVoo;
  updateQuantidades;
end;

procedure TFormComissarioCheckIn.mudarParaVoosAtribuidos;
begin
  cardComissarioCheckIn.ActiveCard := cardVoos;
  loadGrid(edtSearch.Text);
end;

procedure TFormComissarioCheckIn.updateQuantidades;
var
  quantidadePassageiros, quantidadeLiberados: Integer;
begin
  quantidadePassageiros := TVooController.getQtdePassageiros(voo.getId);
  quantidadeLiberados := TVooController.getQtdePassageirosLiberados(voo.getId);

  pnlTodosQuantidade.Caption := IntToStr(quantidadePassageiros);
  pnlLiberadosQuantidade.Caption := IntToStr(quantidadeLiberados);
  pnlFaltantesQuantidade.Caption := IntToStr(quantidadePassageiros - quantidadeLiberados);
end;

end.
