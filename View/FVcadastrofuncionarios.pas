unit FVCadastrofuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TForm6 = class(TForm)
    PanelFundo_funcionarios: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    StringGrid1: TStringGrid;
    Paneledit: TPanel;
    procedure Panel1Click(Sender: TObject);
  private
    procedure AbrirFormulario(FrmClass: TFormClass);
  public
  end;

implementation

{$R *.dfm}

uses
  FVgestor, FVeditfuncionario; // 👈 aqui sim, não no interface

procedure TForm6.AbrirFormulario(FrmClass: TFormClass);
var
  Frm: TForm;
begin

  if Paneledit.ControlCount > 0 then
    Paneledit.Controls[0].Free;

  Frm := FrmClass.Create(Self);
  Frm.Parent := Paneledit;
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Show;
end;


procedure TForm6.Panel1Click(Sender: TObject);
begin
  AbrirFormulario(TForm10); // TForm10 declarado no FVeditfuncionario
end;

end.

