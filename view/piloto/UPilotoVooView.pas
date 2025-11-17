unit UPilotoVooView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, UUsuario, UVoo;

type
  TFormPilotoVoo = class(TForm)
    pnlLateral: TPanel;
    pnlConectarDesconectar: TPanel;
    imgConectarDesconectarGreen: TImage;
    imgConectarDesconectarWhite: TImage;
    pnlMainFrame: TPanel;
    DBGridVoosDisponiveis: TDBGrid;
    pnlHeader: TPanel;
    pnlSearch: TPanel;
    imgSearch: TImage;
    edtSearch: TEdit;
    pnlDiv1: TPanel;
    pnlVoosAtribuidos: TPanel;
    DBGridVoosAtribuidos: TDBGrid;
    pnlVoosDisponiveis: TPanel;
    pnlHeaderVoosAtribuidos: TPanel;
    pnlSearchVoosAtribuidos: TPanel;
    imgSearchVoosAtribuidos: TImage;
    edtSearchVoosAtribuidos: TEdit;
    pnlDiv2: TPanel;
    procedure edtSearchVoosAtribuidosChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgConectarDesconectarWhiteClick(Sender: TObject);
    procedure DBGridVoosDisponiveisEnter(Sender: TObject);
    procedure DBGridVoosAtribuidosEnter(Sender: TObject);
    procedure imgConectarDesconectarWhiteMouseLeave(Sender: TObject);
    procedure imgConectarDesconectarGreenMouseEnter(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
    gridSelecionado: TDBGrid;
    procedure loadGridDisponiveis(searchBar: String);
    procedure loadGridAtribuidos(searchBar: String);
    function getVooSelecionadoGrid: TVoo;
  public
    { Public declarations }
    constructor create(owner: TForm; aUsuario: TUsuario);
  end;

var
  FormPilotoVoo: TFormPilotoVoo;

implementation

uses UVooController, UConn;

{$R *.dfm}

constructor TFormPilotoVoo.create(owner: TForm; aUsuario: TUsuario);
begin
  inherited create(owner);
  usuario := aUsuario;
end;

procedure TFormPilotoVoo.DBGridVoosAtribuidosEnter(Sender: TObject);
begin
  gridSelecionado := DBGridVoosAtribuidos;
end;
procedure TFormPilotoVoo.DBGridVoosDisponiveisEnter(Sender: TObject);
begin
  gridSelecionado := DBGridVoosDisponiveis;
end;

procedure TFormPilotoVoo.edtSearchChange(Sender: TObject);
begin
  loadGridDisponiveis(edtSearch.Text);
end;

procedure TFormPilotoVoo.edtSearchVoosAtribuidosChange(Sender: TObject);
begin
  loadGridAtribuidos(edtSearchVoosAtribuidos.Text);
end;

procedure TFormPilotoVoo.FormCreate(Sender: TObject);
begin
  loadGridDisponiveis(edtSearch.Text);
  loadGridAtribuidos(edtSearchVoosAtribuidos.Text);
end;

function TFormPilotoVoo.getVooSelecionadoGrid: TVoo;
var
  ds: TDataSet;
  voo: TVoo;
begin
  if gridSelecionado = DBGridVoosDisponiveis then begin
    ds := DBGridVoosDisponiveis.DataSource.DataSet;
  end else begin
    ds := DBGridVoosAtribuidos.DataSource.DataSet;
  end;

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

procedure TFormPilotoVoo.imgConectarDesconectarGreenMouseEnter(Sender: TObject);
begin
  imgConectarDesconectarWhite.Visible := true;
  imgConectarDesconectarGreen.Visible := false;
end;

procedure TFormPilotoVoo.imgConectarDesconectarWhiteClick(Sender: TObject);
begin
  if gridSelecionado = DBGridVoosDisponiveis then begin
    if MessageDlg('Tem certeza que deseja se conectar a este voo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      TVooController.conectar(usuario, getVooSelecionadoGrid);
    end;
  end else begin
    if MessageDlg('Tem certeza que deseja se desconectar deste voo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      TVooController.desconectar(usuario, getVooSelecionadoGrid);
    end;
  end;
  loadGridDisponiveis(edtSearch.Text);
  loadGridAtribuidos(edtSearchVoosAtribuidos.Text);
end;

procedure TFormPilotoVoo.imgConectarDesconectarWhiteMouseLeave(Sender: TObject);
begin
  imgConectarDesconectarWhite.Visible := false;
  imgConectarDesconectarGreen.Visible := true;
end;

procedure TFormPilotoVoo.loadGridAtribuidos(searchBar: String);
var
  id: Integer;
  numeroVoo, status: String;
begin
  DBGridVoosAtribuidos.DataSource := DataModuleConn.DataSourceVoosAtribuidos;

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

procedure TFormPilotoVoo.loadGridDisponiveis(searchBar: String);
var
  id: Integer;
  numeroVoo, status: String;
begin
  DBGridVoosDisponiveis.DataSource := DataModuleConn.DataSourceVoosDisponiveis;

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

  TVooController.getVoosDisponiveis(id, usuario.getId, numeroVoo, status);
end;

end.
