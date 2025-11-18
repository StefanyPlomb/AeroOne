unit UGestorAeronaveView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.WinXPanels,UAeronave;

type
  TFormGestorAeronaves = class(TForm)
    pnlMain: TPanel;
    cardGestorAeronave: TCardPanel;
    cardMainAeronave: TCard;
    pnlLateral: TPanel;
    pnlCadastrar: TPanel;
    imgCadastrarGreen: TImage;
    imgCadastrarWhite: TImage;
    pnlEditar: TPanel;
    imgEditarYellow: TImage;
    imgEditarWhite: TImage;
    pnlMainFrame: TPanel;
    DBGridAeronaves: TDBGrid;
    pnlHeader: TPanel;
    pnlSearch: TPanel;
    imgSearch: TImage;
    edtSearch: TEdit;
    pnlDiv1: TPanel;
    cardAddOrUpdateAeronave: TCard;
    pnlFooter: TPanel;
    pnlSeparador: TPanel;
    btnVoltar: TPanel;
    btnSalvar: TPanel;
    edtComissariosMax: TEdit;
    edtModelo: TEdit;
    pnlDivComissariosMax: TPanel;
    pnlDivModelo: TPanel;
    pnlDivFabricante: TPanel;
    edtPilotosMax: TEdit;
    pnlDivPilotosMax: TPanel;
    edtPassageirosMax: TEdit;
    pnlDivPassageirosMax: TPanel;
    edtFabricante: TEdit;
    pnlStatus: TPanel;
    imgStatusRed: TImage;
    imgStatusWhite: TImage;
    procedure imgCadastrarWhiteMouseLeave(Sender: TObject);
    procedure imgCadastrarGreenMouseEnter(Sender: TObject);
    procedure imgEditarWhiteMouseLeave(Sender: TObject);
    procedure imgEditarYellowMouseEnter(Sender: TObject);
   // procedure imgStatusWhiteClick(Sender: TObject);
    procedure imgStatusWhiteMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure imgCadastrarWhiteClick(Sender: TObject);
    procedure imgEditarWhiteClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure imgStatusRedClick(Sender: TObject);
  private
    { Private declarations }
    operacao: String;
    idAeronaveGrid: Integer;
    aeronave: TAeronave;
    statusAeronaveGrid: String;
    procedure loadGrid(searchBar: String);
    procedure loadEditsFromGrid;
    procedure limparEdits;
  public
    { Public declarations }
  end;

var
  FormGestorAeronaves: TFormGestorAeronaves;

implementation

uses UAeronaveController, UConn;

{$R *.dfm}

procedure TFormGestorAeronaves.btnSalvarClick(Sender: TObject);
var
  novaAeronave: TAeronave;
begin
  try
    novaAeronave := TAeronave.Create;

    novaAeronave.setFabricante(edtFabricante.Text);
    novaAeronave.setModelo(edtModelo.Text);
    novaAeronave.setPassageirosMax(StrToIntDef(edtPassageirosMax.Text, 0));
    novaAeronave.setPilotosMax(StrToIntDef(edtPilotosMax.Text, 0));
    novaAeronave.setComissariosMax(StrToIntDef(edtComissariosMax.Text, 0));

    if operacao = 'Inserir' then begin
      TAeronaveController.cadastrar(novaAeronave);
    end else begin
      edtFabricante.SetFocus;
      TAeronaveController.update(novaAeronave, TAeronaveController.getAeronave(idAeronaveGrid));
    end;

    limparEdits;
    loadGrid(edtSearch.Text);
    cardGestorAeronave.ActiveCard := cardMainAeronave;

    novaAeronave.Free;

  except
    on E: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TFormGestorAeronaves.btnVoltarClick(Sender: TObject);
begin
  cardGestorAeronave.ActiveCard := cardMainAeronave;
  limparEdits;
end;


procedure TFormGestorAeronaves.edtSearchChange(Sender: TObject);
begin
  loadGrid(edtSearch.Text);
end;

procedure TFormGestorAeronaves.FormCreate(Sender: TObject);
begin
  operacao := 'Inserir';
  cardGestorAeronave.ActiveCard := cardMainAeronave;
  loadGrid(edtSearch.Text);
end;

procedure TFormGestorAeronaves.imgCadastrarGreenMouseEnter(Sender: TObject);
begin
  imgCadastrarWhite.Visible := true;
  imgCadastrarGreen.Visible := false;
end;

procedure TFormGestorAeronaves.imgCadastrarWhiteClick(Sender: TObject);
begin
  operacao := 'Inserir';
  cardGestorAeronave.ActiveCard := cardAddOrUpdateAeronave;
end;

procedure TFormGestorAeronaves.imgCadastrarWhiteMouseLeave(Sender: TObject);
begin
  imgCadastrarWhite.Visible := false;
  imgCadastrarGreen.Visible := true;
end;

procedure TFormGestorAeronaves.imgEditarWhiteClick(Sender: TObject);
begin
  if DBGridAeronaves.DataSource.DataSet.IsEmpty then begin
    ShowMessage('Nenhum registro selecionado');
    exit;
  end;
  operacao := 'Atualizar';
  loadEditsFromGrid;
  cardGestorAeronave.ActiveCard := cardAddOrUpdateAeronave;
end;

procedure TFormGestorAeronaves.imgEditarWhiteMouseLeave(Sender: TObject);
begin
  imgEditarWhite.Visible := false;
  imgEditarYellow.Visible := true;
end;

procedure TFormGestorAeronaves.imgEditarYellowMouseEnter(Sender: TObject);
begin
  imgEditarWhite.Visible := true;
  imgEditarYellow.Visible := false;
end;






// ================================= Arrumando ================================
procedure TFormGestorAeronaves.imgStatusRedClick(Sender: TObject);
var
  novaAeronave: TAeronave;
begin
  try
    loadEditsFromGrid;
    if aeronave.getId <> idAeronaveGrid then
    begin
      novaAeronave := TAeronave.Create;
      novaAeronave.setFabricante(edtFabricante.Text);
      novaAeronave.setModelo(edtModelo.Text);
     // novaAeronave.setPassageirosMax(edtPassageirosMax.Text);
     // novaAeronave.setPilotosMax(edtPilotosMax.Text);
     // novaAeronave.setComissariosMax(edtComissariosMax.Text);
      if statusAeronaveGrid = 'A' then
        novaAeronave.setStatus('I')
      else
        novaAeronave.setStatus('A');
       TAeronaveController.update(novaAeronave, TAeronaveController.getAeronave(idAeronaveGrid));

      novaAeronave.Free;
    end;

    limparEdits;
    loadGrid(edtSearch.Text);

  except
    on E: Exception do
      ShowMessage('Erro: ' + E.Message);
  end;
end;

procedure TFormGestorAeronaves.imgStatusWhiteMouseLeave(Sender: TObject);
begin
  imgStatusWhite.Visible := false;
  imgStatusRed.Visible := true;
end;

procedure TFormGestorAeronaves.limparEdits;
begin
  edtFabricante.Text := '';
  edtModelo.Text := '';
  edtPassageirosMax.Text := '';
  edtPilotosMax.Text := '';
  edtComissariosMax.Text := '';
end;

procedure TFormGestorAeronaves.loadEditsFromGrid;
var
  ds: TDataSet;
  cargo: String;
begin
  ds := DBGridAeronaves.DataSource.DataSet;
  idAeronaveGrid := ds.FieldByName('id').AsInteger;
  edtFabricante.Text := ds.FieldByName('fabricante').AsString;
  edtModelo.Text := ds.FieldByName('modelo').AsString;
  edtPassageirosMax.Text := ds.FieldByName('passageirosMax').AsString;
  edtPilotosMax.Text := ds.FieldByName('pilotosMax').AsString;
  edtComissariosMax.Text := ds.FieldByName('comissariosMax').AsString;
end;

procedure TFormGestorAeronaves.loadGrid(searchBar: String);
var
  id: Integer;
  modelo: String;
begin
  DBGridAeronaves.DataSource := DataModuleConn.DataSourceAeronave;

  try
    id := StrToInt(searchBar);
  except
    id := 0;
    modelo := searchBar;
  end;

  TAeronaveController.getAeronaves(id, modelo);
end;

end.
