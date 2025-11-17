unit UPilotoIniciarVooView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls, Vcl.WinXPanels,
  UUsuario, UVoo;

type
  TFormPilotoIniciarVoo = class(TForm)
    pnlMainFrame: TPanel;
    cardPiloto: TCardPanel;
    cardPilotoVoos: TCard;
    cardPilotoVooEmAndamento: TCard;
    DBGridVoos: TDBGrid;
    pnlVoosAtribuidos: TPanel;
    pnlVoo: TPanel;
    pnlNumeroVoo: TPanel;
    pnlVooText: TPanel;
    pnlBoxOrigem: TPanel;
    pnlBoxDestino: TPanel;
    pnlFooter: TPanel;
    btnFinalizar: TPanel;
    pnlDataPartida: TPanel;
    pnlDataPartidaText: TPanel;
    pnlDataPartidaDisplay: TPanel;
    pnlDivDataPartida: TPanel;
    pnlHoraPartida: TPanel;
    pnlHoraPartidaText: TPanel;
    pnlHoraPartidaDisplay: TPanel;
    pnlDataChegada: TPanel;
    pnlDataChegadaText: TPanel;
    pnlDataChegadaDisplay: TPanel;
    pnlHoraChegada: TPanel;
    pnlHoraChegadaText: TPanel;
    pnlHoraChegadaDisplay: TPanel;
    pnlDivHoraChegada: TPanel;
    pnlFrameOrigem: TPanel;
    pnlOrigem: TPanel;
    pnlDivOrigem: TPanel;
    pnlOrigemText: TPanel;
    pnlFrameDestino: TPanel;
    pnlDestino: TPanel;
    pnlDivDestino: TPanel;
    pnlDestinoText: TPanel;
    imgFlecha: TImage;
    pnlID: TPanel;
    pnlIDText: TPanel;
    pnlIDDisplay: TPanel;
    pnlHeader: TPanel;
    pnlSearch: TPanel;
    imgSearch: TImage;
    edtSearch: TEdit;
    pnlDiv1: TPanel;
    pnlLateral: TPanel;
    pnlInciar: TPanel;
    imgIniciarGreen: TImage;
    imgIniciarWhite: TImage;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure cardPilotoVoosEnter(Sender: TObject);
    procedure imgIniciarWhiteMouseLeave(Sender: TObject);
    procedure imgIniciarGreenMouseEnter(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure imgIniciarWhiteClick(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
    voo: TVoo;
    procedure loadGrid(searchBar: String);
    procedure loadVooEmAndamento;
    procedure mudarParaVooEmAndamento;
    procedure mudarParaVoosAtribuidos;
  public
    { Public declarations }
    constructor create(owner: TForm; aUsuario: TUsuario);
  end;

var
  FormPilotoIniciarVoo: TFormPilotoIniciarVoo;

implementation

uses UVooController, UConn;

{$R *.dfm}

procedure TFormPilotoIniciarVoo.btnFinalizarClick(Sender: TObject);
begin
  try
    if MessageDlg('Tem certeza que deseja finalizar este voo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      TVooController.finalizarVoo(voo.getId);
      mudarParaVoosAtribuidos;
    end;
  except
    on e: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TFormPilotoIniciarVoo.cardPilotoVoosEnter(Sender: TObject);
begin
  loadGrid(edtSearch.Text);
end;

constructor TFormPilotoIniciarVoo.create(owner: TForm; aUsuario: TUsuario);
begin
  inherited create(owner);
  usuario := aUsuario;
end;

procedure TFormPilotoIniciarVoo.edtSearchChange(Sender: TObject);
begin
  loadGrid(edtSearch.Text);
end;

procedure TFormPilotoIniciarVoo.FormCreate(Sender: TObject);
var
  vooBD: TVoo;
begin
  vooBD := TVooController.getVooEmAndamento(usuario.getId);
  if vooBD <> nil then begin
    cardPiloto.ActiveCard := cardPilotoVooEmAndamento;
    voo := vooBD;
    loadVooEmAndamento;
  end else begin
    cardPiloto.ActiveCard := cardPilotoVoos;
    loadGrid(edtSearch.Text);
  end;
end;

procedure TFormPilotoIniciarVoo.imgIniciarGreenMouseEnter(Sender: TObject);
begin
  imgIniciarWhite.Visible := true;
  imgIniciarGreen.Visible := false;
end;

procedure TFormPilotoIniciarVoo.imgIniciarWhiteClick(Sender: TObject);
var
  ds: TDataSet;
begin
  try
    ds := DBGridVoos.DataSource.DataSet;

    if ds.IsEmpty then begin
      ShowMessage('Nenhum registro selecionado');
      exit;
    end;

    if MessageDlg('Tem certeza que deseja iniciar este voo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      TVooController.iniciarVoo(ds.FieldByName('id').AsInteger);
      mudarParaVooEmAndamento;
    end;
  except
    on e: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TFormPilotoIniciarVoo.imgIniciarWhiteMouseLeave(Sender: TObject);
begin
  imgIniciarWhite.Visible := false;
  imgIniciarGreen.Visible := true;
end;

procedure TFormPilotoIniciarVoo.loadGrid(searchBar: String);
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

procedure TFormPilotoIniciarVoo.loadVooEmAndamento;
begin
  pnlNumeroVoo.Caption := voo.getNumeroVoo;
  pnlIDText.Caption := IntToStr(voo.getId);
  pnlOrigemText.Caption := voo.getOrigem;
  pnlDestinoText.Caption := voo.getDestino;
  pnlDataPartidaText.Caption := voo.getDataPartida;
  pnlHoraPartidaText.Caption := voo.getHoraPartida;
  pnlDataChegadaText.Caption := voo.getDataChegada;
  pnlHoraChegadaText.Caption := voo.getHoraChegada;
end;

procedure TFormPilotoIniciarVoo.mudarParaVooEmAndamento;
var
  vooBD: TVoo;
begin
  vooBD := TVooController.getVooEmAndamento(usuario.getId);
  if vooBD <> nil then begin
    voo := vooBD;
    loadVooEmAndamento;
    cardPiloto.ActiveCard := cardPilotoVooEmAndamento;
  end;
end;

procedure TFormPilotoIniciarVoo.mudarParaVoosAtribuidos;
begin
  cardPiloto.ActiveCard := cardPilotoVoos;
  loadGrid(edtSearch.Text);
end;

end.
