unit UCheckin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, UDash;
type
  TFormCheckin = class(TForm)
    PaneleCentral_AeroMo: TPanel;
    LabelSubtituloCheck: TLabel;
    LabelTituloCheck: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    ButBuscar_Aeromo: TPanel;
    Button1: TButton;
    PanelAbrir: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    procedure AbrirDash(AFormClass: TFormClass);
  public
  end;

var
  FormCheckin: TFormCheckin;

implementation

{$R *.dfm}

procedure TFormCheckin.AbrirDash(AFormClass: TFormClass);
var
  Frm: TForm;
begin
  if PanelAbrir.ControlCount > 0 then
    PanelAbrir.Controls[0].Free;

  Frm := AFormClass.Create(Self);
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Parent := PanelAbrir;
  Frm.Show;
end;

procedure TFormCheckin.FormCreate(Sender: TObject);
begin
  AbrirDash(TFormDash);
end;

end.

