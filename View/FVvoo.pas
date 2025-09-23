unit FVvoo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Panelvoogestor: TPanel;
    Panel2: TPanel;
    procedure AbrirFormulario(FrmClass: TFormClass);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses
  FVgestor,FVpainelvoogestor;

procedure TForm8.AbrirFormulario(FrmClass: TFormClass);
var
  Frm: TForm;
begin

  if Panelvoogestor.ControlCount > 0 then
    Panelvoogestor.Controls[0].Free;

  Frm := FrmClass.Create(Self);
  Frm.Parent := Panelvoogestor;
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Show;
end;

procedure TForm8.Panel2Click(Sender: TObject);
begin
  AbrirFormulario(TForm11);
end;

end.
