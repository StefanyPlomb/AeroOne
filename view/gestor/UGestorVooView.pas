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
    pnlDivDataOrigem: TPanel;
    edtOrigem: TEdit;
    pnlDivOrigem: TPanel;
    pnlDivHoraChegada: TPanel;
    edtDataChegada: TMaskEdit;
    edtHoraChegada: TMaskEdit;
    edtDataOrigem: TMaskEdit;
    edtHoraOrigem: TMaskEdit;
    pnlDivHoraOrigem: TPanel;
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
    pnlDivCargo: TPanel;
    procedure edtDataOrigemEnter(Sender: TObject);
    procedure edtHoraOrigemEnter(Sender: TObject);
    procedure edtDataChegadaEnter(Sender: TObject);
    procedure edtHoraChegadaEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure imgCadastrarGreenMouseEnter(Sender: TObject);
    procedure imgCadastrarWhiteMouseLeave(Sender: TObject);
    procedure imgCadastrarWhiteClick(Sender: TObject);
    procedure imgEditarWhiteClick(Sender: TObject);
    procedure edtNumeroVooEnter(Sender: TObject);
    procedure edtNumeroVooExit(Sender: TObject);
  private
    { Private declarations }
    operacao: String;
    idVooGrid: Integer;
    procedure loadGrid(searchBar: String);
    procedure loadEditsFromGrid;
  public
    { Public declarations }
  end;

var
  FormGestorVoo: TFormGestorVoo;

implementation

uses UVooController, UConn;

{$R *.dfm}

procedure TFormGestorVoo.edtDataChegadaEnter(Sender: TObject);
begin
  edtDataChegada.EditMask := '99/99/9999';
  edtDataChegada.SelStart := 0;
  edtDataChegada.SelLength := 0;
end;

procedure TFormGestorVoo.edtDataOrigemEnter(Sender: TObject);
begin
  edtDataOrigem.EditMask := '99/99/9999';
  edtDataOrigem.SelStart := 0;
  edtDataOrigem.SelLength := 0;
end;

procedure TFormGestorVoo.edtHoraChegadaEnter(Sender: TObject);
begin
  edtHoraChegada.EditMask := '99:99:99';
  edtHoraChegada.SelStart := 0;
  edtHoraChegada.SelLength := 0;
end;

procedure TFormGestorVoo.edtHoraOrigemEnter(Sender: TObject);
begin
  edtHoraOrigem.EditMask := '99:99:99';
  edtHoraOrigem.SelStart := 0;
  edtHoraOrigem.SelLength := 0;
end;

procedure TFormGestorVoo.edtNumeroVooEnter(Sender: TObject);
begin
  edtNumeroVoo.EditMask := '??9999';
  edtNumeroVoo.SelStart := 0;
  edtNumeroVoo.SelLength := 0;
end;

procedure TFormGestorVoo.edtNumeroVooExit(Sender: TObject);
begin
   edtNumeroVoo.EditMask := '';
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

procedure TFormGestorVoo.loadEditsFromGrid;
var
  ds: TDataSet;
  cargo: String;
begin
  ds := DBGridVoos.DataSource.DataSet;
  idVooGrid := ds.FieldByName('id').AsInteger;
//  edt.Text := ds.FieldByName('nome').AsString;
//  edtEmail.Text := ds.FieldByName('email').AsString;
//  edtTelefone.Text := ds.FieldByName('telefone').AsString;
//  cargo := ds.FieldByName('cargo').AsString;
//  edtCPF.Text := ds.FieldByName('cpf').AsString;
//  edtPassaporte.Text := ds.FieldByName('passaporte').AsString;
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
    status := 'I';
  end else if searchBar.ToUpper.Contains('ATIVO') then begin
    status := 'A';
  end;

  TVooController.getVoos(id, numeroVoo, status);
end;

end.
