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
    pnlMainFrame: TPanel;
    DBGridVoos: TDBGrid;
    pnlHeader: TPanel;
    pnlSearch: TPanel;
    Image1: TImage;
    edtSearch: TEdit;
    pnlDiv1: TPanel;
    pnlLateral: TPanel;
    imgCadastrar: TImage;
    imgStatus: TImage;
    imgEditar: TImage;
    cardAddOrUpdateVoo: TCard;
    pnlFooter: TPanel;
    pnlSeparador: TPanel;
    btnVoltar: TPanel;
    btnSalvar: TPanel;
    pnlDivPassaporte: TPanel;
    pnlDivDataDestino: TPanel;
    edtDestino: TEdit;
    pnlDivDataOrigem: TPanel;
    edtOrigem: TEdit;
    pnlDivDestino: TPanel;
    pnlDivOrigem: TPanel;
    pnlDivHoraDestino: TPanel;
    edtDataDestino: TMaskEdit;
    edtPassaporte: TMaskEdit;
    edtHoraDestino: TMaskEdit;
    edtCEP: TEdit;
    pnlDivCEP: TPanel;
    edtDataOrigem: TMaskEdit;
    edtHoraOrigem: TMaskEdit;
    pnlDivHoraOrigem: TPanel;
    procedure edtDataOrigemEnter(Sender: TObject);
    procedure edtHoraOrigemEnter(Sender: TObject);
    procedure edtDataDestinoEnter(Sender: TObject);
    procedure edtHoraDestinoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    operacao: String;
    procedure loadGrid(searchBar: String);
  public
    { Public declarations }
  end;

var
  FormGestorVoo: TFormGestorVoo;

implementation

uses UVooController, UConn;

{$R *.dfm}

procedure TFormGestorVoo.edtDataDestinoEnter(Sender: TObject);
begin
  edtDataDestino.EditMask := '00/00/0000';
  edtDataDestino.SelStart := 0;
  edtDataDestino.SelLength := 0;
end;

procedure TFormGestorVoo.edtDataOrigemEnter(Sender: TObject);
begin
  edtDataOrigem.EditMask := '00/00/0000';
  edtDataOrigem.SelStart := 0;
  edtDataOrigem.SelLength := 0;
end;

procedure TFormGestorVoo.edtHoraDestinoEnter(Sender: TObject);
begin
  edtHoraDestino.EditMask := '00:00:00';
  edtHoraDestino.SelStart := 0;
  edtHoraDestino.SelLength := 0;
end;

procedure TFormGestorVoo.edtHoraOrigemEnter(Sender: TObject);
begin
  edtHoraOrigem.EditMask := '00:00:00';
  edtHoraOrigem.SelStart := 0;
  edtHoraOrigem.SelLength := 0;
end;

procedure TFormGestorVoo.FormCreate(Sender: TObject);
begin
  operacao := 'Inserir';
  cardGestorVoo.ActiveCard := cardMainVoo;
  loadGrid(edtSearch.Text);
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
