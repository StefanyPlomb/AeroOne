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
    DBGridFuncionarios: TDBGrid;
    pnlHeader: TPanel;
    pnlSearch: TPanel;
    Image1: TImage;
    edtSearch: TEdit;
    pnlDiv1: TPanel;
    pnlStatus: TPanel;
    imgAtivo: TImage;
    imgIndeterminado: TImage;
    imgInativo: TImage;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGestorVoo: TFormGestorVoo;

implementation

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

end.
