unit UGestorVooView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels,
  Vcl.WinXPickers;

type
  TFormGestorVoo = class(TForm)
    pnlMain: TPanel;
    cardGestorVoo: TCardPanel;
    cardMainVoo: TCard;
    cardAddOrUpdateVoo: TCard;
    pnlFooter: TPanel;
    pnlSeparador: TPanel;
    btnVoltar: TPanel;
    btnSalvar: TPanel;
    pnlDivDataChegada: TPanel;
    pnlDivDataPartida: TPanel;
    edtOrigem: TEdit;
    edtDestino: TEdit;
    pnlDivOrigem: TPanel;
    pnlDivHoraChegada: TPanel;
    edtDataChegada: TMaskEdit;
    edtHoraChegada: TMaskEdit;
    edtDataPartida: TMaskEdit;
    edtHoraPartida: TMaskEdit;
    pnlDivHoraPartida: TPanel;
    pnlLateral: TPanel;
    pnlCadastrar: TPanel;
    imgCadastrarGreen: TImage;
    imgCadastrarWhite: TImage;
    pnlStatus: TPanel;
    imgStatusRed: TImage;
    imgStatusWhite: TImage;
    pnlEditar: TPanel;
    imgEditarYellow: TImage;
    imgEditarWhite: TImage;
    pnlMainFrame: TPanel;
    DBGridVoos: TDBGrid;
    pnlHeader: TPanel;
    pnlSearch: TPanel;
    imgSearch: TImage;
    edtSearch: TEdit;
    pnlDiv1: TPanel;
    edtNumeroVoo: TMaskEdit;
    pnlDivNumeroVoo: TPanel;
    cbxAeronave: TComboBox;
    pnlDivAeronave: TPanel;
    procedure edtDataPartidaEnter(Sender: TObject);
    procedure edtHoraPartidaEnter(Sender: TObject);
    procedure edtDataChegadaEnter(Sender: TObject);
    procedure edtHoraChegadaEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure imgCadastrarGreenMouseEnter(Sender: TObject);
    procedure imgCadastrarWhiteMouseLeave(Sender: TObject);
    procedure imgCadastrarWhiteClick(Sender: TObject);
    procedure imgEditarWhiteClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure imgEditarWhiteMouseLeave(Sender: TObject);
    procedure imgEditarYellowMouseEnter(Sender: TObject);
    procedure imgStatusWhiteMouseLeave(Sender: TObject);
    procedure imgStatusRedMouseEnter(Sender: TObject);
    procedure imgStatusWhiteClick(Sender: TObject);
  private
    { Private declarations }
    operacao: String;
    idVooGrid: Integer;
    statusVooGrid: String;
    procedure loadGrid(searchBar: String);
    procedure loadAeronaves;
    procedure loadEditsFromGrid;
    procedure limparEdits;
  public
    { Public declarations }
  end;

var
  FormGestorVoo: TFormGestorVoo;

implementation

uses UVooController, UVoo, UAeronaveController, UAeronave, UConn, System.Generics.Collections, System.StrUtils;

{$R *.dfm}

procedure TFormGestorVoo.btnSalvarClick(Sender: TObject);
var
  novoVoo: TVoo;
begin
  try
    novoVoo := TVoo.Create;
    novoVoo.setNumeroVoo(edtNumeroVoo.Text);
    if cbxAeronave.ItemIndex < 0 then begin
      raise Exception.Create('Favor selecionar uma aeronave');
    end;
    novoVoo.setIdAeronave(TAeronave(cbxAeronave.Items.Objects[cbxAeronave.ItemIndex]).getId);
    novoVoo.setOrigem(edtOrigem.Text);
    novoVoo.setDestino(edtDestino.Text);
    novoVoo.setDataPartida(edtDataPartida.Text);
    novoVoo.setHoraPartida(edtHoraPartida.Text);
    novoVoo.setDataChegada(edtDataChegada.Text);
    novoVoo.setHoraChegada(edtHoraChegada.Text);
    if operacao = 'Inserir' then begin
      TVooController.cadastrar(novoVoo);
    end else begin
      edtNumeroVoo.SetFocus;
      TVooController.update(novoVoo, TVooController.getVoo(idVooGrid));
    end;
    limparEdits;
    loadGrid(edtSearch.Text);
    cardGestorVoo.ActiveCard := cardMainVoo;
    novoVoo.Free;
  except
    on E: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TFormGestorVoo.btnVoltarClick(Sender: TObject);
begin
  cardGestorVoo.ActiveCard := cardMainVoo;
  limparEdits;
end;

procedure TFormGestorVoo.edtDataChegadaEnter(Sender: TObject);
begin
  edtDataChegada.EditMask := '99/99/9999';
  edtDataChegada.SelStart := 0;
  edtDataChegada.SelLength := 0;
end;

procedure TFormGestorVoo.edtDataPartidaEnter(Sender: TObject);
begin
  edtDataPartida.EditMask := '99/99/9999';
  edtDataPartida.SelStart := 0;
  edtDataPartida.SelLength := 0;
end;

procedure TFormGestorVoo.edtHoraChegadaEnter(Sender: TObject);
begin
  edtHoraChegada.EditMask := '99:99:99';
  edtHoraChegada.SelStart := 0;
  edtHoraChegada.SelLength := 0;
end;

procedure TFormGestorVoo.edtHoraPartidaEnter(Sender: TObject);
begin
  edtHoraPartida.EditMask := '99:99:99';
  edtHoraPartida.SelStart := 0;
  edtHoraPartida.SelLength := 0;
end;

procedure TFormGestorVoo.edtSearchChange(Sender: TObject);
begin
  loadGrid(edtSearch.Text);
end;

procedure TFormGestorVoo.FormCreate(Sender: TObject);
begin
  operacao := 'Inserir';
  cardGestorVoo.ActiveCard := cardMainVoo;
  loadGrid(edtSearch.Text);
  loadAeronaves;
end;

procedure TFormGestorVoo.imgCadastrarGreenMouseEnter(Sender: TObject);
begin
  imgCadastrarWhite.Visible := true;
  imgCadastrarGreen.Visible := false;
end;

procedure TFormGestorVoo.imgCadastrarWhiteClick(Sender: TObject);
begin
  operacao := 'Inserir';
  cardGestorVoo.ActiveCard := cardAddOrUpdateVoo;
end;

procedure TFormGestorVoo.imgCadastrarWhiteMouseLeave(Sender: TObject);
begin
  imgCadastrarWhite.Visible := false;
  imgCadastrarGreen.Visible := true;
end;

procedure TFormGestorVoo.imgEditarWhiteClick(Sender: TObject);
begin
  if DBGridVoos.DataSource.DataSet.IsEmpty then begin
    ShowMessage('Nenhum registro selecionado');
    exit;
  end;
  operacao := 'Atualizar';
  loadEditsFromGrid;
  cardGestorVoo.ActiveCard := cardAddOrUpdateVoo;
end;

procedure TFormGestorVoo.imgEditarWhiteMouseLeave(Sender: TObject);
begin
  imgEditarWhite.Visible := false;
  imgEditarYellow.Visible := true;
end;

procedure TFormGestorVoo.imgEditarYellowMouseEnter(Sender: TObject);
begin
  imgEditarWhite.Visible := true;
  imgEditarYellow.Visible := false;
end;

procedure TFormGestorVoo.imgStatusRedMouseEnter(Sender: TObject);
begin
  imgStatusWhite.Visible := true;
  imgStatusRed.Visible := false;
end;

procedure TFormGestorVoo.imgStatusWhiteClick(Sender: TObject);
var
  novoVoo: TVoo;
begin
  try
    loadEditsFromGrid;

    if (statusVooGrid = 'E') then begin
      raise Exception.Create('Não permitido ativar/desativar um voo que ainda está em andamento');
      limparEdits;
      exit;
    end;

    if (statusVooGrid = 'F') then begin
      raise Exception.Create('Não permitido ativar/desativar um voo que já foi finalizado');
      limparEdits;
      exit;
    end;

    novoVoo := TVoo.Create;
    novoVoo.setNumeroVoo(edtNumeroVoo.Text);
    novoVoo.setOrigem(edtOrigem.Text);
    novoVoo.setDestino(edtDestino.Text);
    novoVoo.setDataPartida(edtDataPartida.Text);
    novoVoo.setHoraPartida(edtHoraPartida.Text);
    novoVoo.setDataChegada(edtDataChegada.Text);
    novoVoo.setHoraChegada(edtHoraChegada.Text);

    if statusVooGrid = 'A' then begin
      novoVoo.setStatus('C');
    end else begin
      novoVoo.setStatus('A');
    end;

    if cbxAeronave.ItemIndex >= 0 then begin
      novoVoo.setIdAeronave(TAeronave(cbxAeronave.Items.Objects[cbxAeronave.ItemIndex]).getId);
    end;

    TVooController.update(novoVoo, TVooController.getVoo(idVooGrid));

    limparEdits;
    novoVoo.Free;
  except
    on E: Exception do begin
      ShowMessage(E.Message);
    end;
  end;
  loadGrid(edtSearch.Text);
end;

procedure TFormGestorVoo.imgStatusWhiteMouseLeave(Sender: TObject);
begin
  imgStatusWhite.Visible := false;
  imgStatusRed.Visible := true;
end;

procedure TFormGestorVoo.limparEdits;
begin
  edtNumeroVoo.Text := '';
  cbxAeronave.Text := '';
  edtOrigem.Text := '';
  edtDestino.Text := '';
  edtDataPartida.Text := '';
  edtHoraPartida.Text := '';
  edtDataChegada.Text := '';
  edtHoraChegada.Text := '';
end;

procedure TFormGestorVoo.loadAeronaves;
var
  lista: TObjectList<TAeronave>;
  aeronave: TAeronave;
begin
  lista := TAeronaveController.getAeronaves;
  for aeronave in lista do begin
    cbxAeronave.Items.AddObject(aeronave.getFabricante + ' - ' + aeronave.getModelo, aeronave);
  end;
end;

procedure TFormGestorVoo.loadEditsFromGrid;
var
  ds: TDataSet;
  idAeronave, i: Integer;
  aeronave: TAeronave;
begin
  ds := DBGridVoos.DataSource.DataSet;
  idVooGrid := ds.FieldByName('id').AsInteger;
  statusVooGrid := ds.FieldByName('status').AsString;
  edtNumeroVoo.Text := ds.FieldByName('numeroVoo').AsString;

  idAeronave := ds.FieldByName('idAeronave').AsInteger;
  for i := 0 to cbxAeronave.Items.Count - 1 do
  begin
    aeronave := TAeronave(cbxAeronave.Items.Objects[i]);

    if aeronave.getId = idAeronave then
    begin
      cbxAeronave.ItemIndex := i;
      Break;
    end;
  end;

  edtOrigem.Text := ds.FieldByName('origem').AsString;
  edtDestino.Text := ds.FieldByName('destino').AsString;
  edtDataPartida.Text := ReplaceStr(ds.FieldByName('dataPartida').AsString, '/', '');
  edtHoraPartida.Text := ReplaceStr(ds.FieldByName('horaPartida').AsString, ':', '');
  edtDataChegada.Text := ReplaceStr(ds.FieldByName('dataChegada').AsString, '/', '');
  edtHoraChegada.Text := ReplaceStr(ds.FieldByName('horaChegada').AsString, ':', '');
end;

procedure TFormGestorVoo.loadGrid(searchBar: String);
var
  id: Integer;
  numeroVoo, status: String;
begin
  DBGridVoos.DataSource := DataModuleConn.DataSourceVoos;

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

  TVooController.getVoos(id, numeroVoo, status);
end;

end.
