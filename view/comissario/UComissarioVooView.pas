unit UComissarioVooView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids, UUsuario;

type
  TFormComissarioVoo = class(TForm)
    pnlLateral: TPanel;
    pnlConectarDesconectar: TPanel;
    imgConectarDesconectarGreen: TImage;
    imgConectarDesconectarWhite: TImage;
    pnlMainFrame: TPanel;
    DBGridVoos: TDBGrid;
    pnlHeader: TPanel;
    pnlSearch: TPanel;
    imgSearch: TImage;
    edtSearch: TEdit;
    pnlDiv1: TPanel;
    pnlVoosAtribuidos: TPanel;
    DBGridVoosAtribuidos: TDBGrid;
    pnlVoosDisponiveis: TPanel;
    procedure imgConectarDesconectarWhiteMouseLeave(Sender: TObject);
    procedure imgConectarDesconectarGreenMouseEnter(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
  public
    { Public declarations }
    procedure open(owner: TForm; aUsuario: TUsuario);
    constructor create(owner: TForm; aUsuario: TUsuario);
  end;

var
  FormComissarioVoo: TFormComissarioVoo;

implementation

{$R *.dfm}

{ TFormComissarioVoo }

constructor TFormComissarioVoo.create(owner: TForm; aUsuario: TUsuario);
begin
  inherited create(owner);
  usuario := aUsuario;
end;

procedure TFormComissarioVoo.imgConectarDesconectarGreenMouseEnter(Sender: TObject);
begin
  imgConectarDesconectarWhite.Visible := true;
  imgConectarDesconectarGreen.Visible := false;
end;

procedure TFormComissarioVoo.imgConectarDesconectarWhiteMouseLeave(Sender: TObject);
begin
  imgConectarDesconectarWhite.Visible := false;
  imgConectarDesconectarGreen.Visible := true;
end;

procedure TFormComissarioVoo.open(owner: TForm; aUsuario: TUsuario);
var
  form: TFormComissarioVoo;
begin
  form := TFormComissarioVoo.create(owner, aUsuario);
  form.ShowModal;
end;

end.

