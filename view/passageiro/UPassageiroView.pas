unit UPassageiroView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, UUsuario, Data.DB, Vcl.Grids, Vcl.DBGrids, UVoo;

type
  TFormPassageiro = class(TForm)
    pnlMain: TPanel;
    pnlSuperior: TPanel;
    imgUsuario: TImage;
    pnlInfoUsuario: TPanel;
    imgLogo: TImage;
    edtSearch: TEdit;
    imgSearch: TImage;
    pnlInfoUsuarioName: TPanel;
    pnlLateral: TPanel;
    pnlConectarDesconectar: TPanel;
    imgConectarDesconectarGreen: TImage;
    imgConectarDesconectarWhite: TImage;
    pnlMainFrame: TPanel;
    DBGridVoosDisponiveis: TDBGrid;
    pnlVoosAtribuidos: TPanel;
    DBGridVoosAtribuidos: TDBGrid;
    pnlVoosDisponiveis: TPanel;
    pnlLogout: TPanel;
    imgLogout: TImage;
    pnlMeusDados: TPanel;
    imgClose: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgLogoutClick(Sender: TObject);
    procedure imgConectarDesconectarWhiteMouseLeave(Sender: TObject);
    procedure imgConectarDesconectarGreenMouseEnter(Sender: TObject);
    procedure imgConectarDesconectarWhiteClick(Sender: TObject);
    procedure DBGridVoosDisponiveisEnter(Sender: TObject);
    procedure DBGridVoosAtribuidosEnter(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure imgUsuarioClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
    isLogout: Boolean;
    formAberto: TForm;
    gridSelecionado: TDBGrid;
    procedure logout;
    procedure updateInfoUsuario;
    function getVooSelecionadoGrid: TVoo;
    procedure loadGrids(searchBar: String);
  public
    { Public declarations }
    class procedure open(aUsuario: TUsuario);
    constructor create(aUsuario: TUsuario);
  end;

var
  FormPassageiro: TFormPassageiro;

implementation

uses ULoginView, UMeusDadosView, USelecionarPoltronaView, UVooController, UConn;

{$R *.dfm}

constructor TFormPassageiro.create(aUsuario: TUsuario);
begin
  inherited create(nil);
  usuario := aUsuario;
end;

procedure TFormPassageiro.DBGridVoosAtribuidosEnter(Sender: TObject);
begin
  gridSelecionado := DBGridVoosAtribuidos;
end;

procedure TFormPassageiro.DBGridVoosDisponiveisEnter(Sender: TObject);
begin
  gridSelecionado := DBGridVoosDisponiveis;
end;

procedure TFormPassageiro.edtSearchChange(Sender: TObject);
begin
  loadGrids(edtSearch.Text);
end;

procedure TFormPassageiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if not isLogout then begin
    Application.Terminate;
  end;
end;

procedure TFormPassageiro.FormCreate(Sender: TObject);
var
  exStyle: LongInt;
begin
  exStyle := GetWindowLong(Handle, GWL_EXSTYLE);
  exStyle := exStyle or WS_EX_APPWINDOW;
  exStyle := exStyle and not WS_EX_TOOLWINDOW;
  SetWindowLong(Handle, GWL_EXSTYLE, exStyle);
  ShowWindow(Handle, SW_SHOW);
  isLogout := false;
  formAberto := nil;
  updateInfoUsuario;
  loadGrids(edtSearch.Text);
end;

function TFormPassageiro.getVooSelecionadoGrid: TVoo;
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

procedure TFormPassageiro.imgCloseClick(Sender: TObject);
begin
  if Assigned(formAberto) then begin
    formAberto.Close;
  end;

  imgUsuario.Visible := true;
  imgClose.Visible := false;
end;

procedure TFormPassageiro.imgConectarDesconectarGreenMouseEnter(Sender: TObject);
begin
  imgConectarDesconectarWhite.Visible := true;
  imgConectarDesconectarGreen.Visible := false;
end;

procedure TFormPassageiro.imgConectarDesconectarWhiteClick(Sender: TObject);
begin
  if gridSelecionado = DBGridVoosDisponiveis then begin
    if MessageDlg('Tem certeza que deseja se conectar a este voo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      TFormSelecionarPoltrona.open(self, usuario, getVooSelecionadoGrid);
    end;
  end else begin
    if MessageDlg('Tem certeza que deseja se desconectar deste voo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      TVooController.desconectar(usuario, getVooSelecionadoGrid);
    end;
  end;
  loadGrids(edtSearch.Text);
end;

procedure TFormPassageiro.imgConectarDesconectarWhiteMouseLeave(Sender: TObject);
begin
  imgConectarDesconectarWhite.Visible := false;
  imgConectarDesconectarGreen.Visible := true;
end;

procedure TFormPassageiro.imgLogoutClick(Sender: TObject);
begin
  logout;
end;

procedure TFormPassageiro.imgUsuarioClick(Sender: TObject);
begin
  if formAberto <> nil then begin
    formAberto.Close;
    formAberto.Free;
  end;
  formAberto := TFormMeusDados.create(self, usuario);
  formAberto.Parent := pnlMain;
  formAberto.Align := alClient;
  formAberto.Show;

  imgUsuario.Visible := false;
  imgClose.Visible := true;
end;

procedure TFormPassageiro.loadGrids(searchBar: String);
var
  id: Integer;
  numeroVoo, status: String;
begin
  DBGridVoosDisponiveis.DataSource := DataModuleConn.DataSourceVoosDisponiveis;
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

  TVooController.getVoosDisponiveis(id, usuario.getId, numeroVoo, status);
  TVooController.getVoosAtribuidos(id, usuario.getId, numeroVoo, status);
end;

procedure TFormPassageiro.logout;
begin
  isLogout := true;
  FormLogin.Show;
  self.Close;
end;

class procedure TFormPassageiro.open(aUsuario: TUsuario);
var
  form: TForm;
begin
  form := TFormPassageiro.Create(aUsuario);
  form.Show;
end;

procedure TFormPassageiro.updateInfoUsuario;
var
  nome: String;
begin
  nome := Trim(usuario.getNome);
  if nome.Contains(' ') then begin
    nome.Substring(0, nome.IndexOf(' '));
  end;

  pnlInfoUsuarioName.Caption := nome;
end;

end.
