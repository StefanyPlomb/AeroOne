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
    Panel1: TPanel;
    pnlVoltar: TPanel;
    imgVoltarRed: TImage;
    imgVoltarWhite: TImage;
    pnlLiberar: TPanel;
    imgLiberarGreen: TImage;
    imgLiberarWhite: TImage;
    Panel2: TPanel;
    pnlVoosAtribuidos: TPanel;
    DBGridVoosAtribuidos: TDBGrid;
    Panel3: TPanel;
    Panel8: TPanel;
    Panel11: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Image1: TImage;
    Edit1: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel13: TPanel;
    Panel12: TPanel;
    Panel14: TPanel;
    Panel17: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure imgVoltarWhiteMouseLeave(Sender: TObject);
    procedure imgVoltarRedMouseEnter(Sender: TObject);
    procedure imgLiberarWhiteMouseLeave(Sender: TObject);
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
  FormComissarioCheckIn: TFormComissarioCheckIn;

implementation

uses UVooController, UConn;

{$R *.dfm}

constructor TFormComissarioCheckIn.create(owner: TForm; aUsuario: TUsuario);
begin
  inherited create(owner);
  usuario := aUsuario;
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

procedure TFormComissarioCheckIn.loadVooEmAndamento;
begin

end;

procedure TFormComissarioCheckIn.mudarParaVooEmAndamento;
var
  vooBD: TVoo;
begin
  vooBD := TVooController.getVooEmAndamento(usuario.getId);
  if vooBD <> nil then begin
    voo := vooBD;
    loadVooEmAndamento;
    cardComissarioCheckIn.ActiveCard := cardCheckIn;
  end;
end;

procedure TFormComissarioCheckIn.mudarParaVoosAtribuidos;
begin
  cardComissarioCheckIn.ActiveCard := cardVoos;
  loadGrid(edtSearch.Text);
end;

end.
