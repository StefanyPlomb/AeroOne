unit FVgestor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  FVfuncionario, FVCadastroFuncionarios, FVreservas, Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    PanelFundo_Gestor: TPanel;
    PanelLateral_Gestor: TPanel;
    PanelSuperior_Gestor: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    LabelSaida_Gestor: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PanelConteudo: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure PanelClick(Sender: TObject);

  private
    PainelAtivo: TPanel;
    procedure AbrirFormulario(FrmClass: TFormClass);

  public
    { Public declarations }

  end;

var
  Form2: TForm2;


implementation

{$R *.dfm}

procedure TForm2.AbrirFormulario(FrmClass: TFormClass);
var
  Frm: TForm;
begin

  if PanelConteudo.ControlCount > 0 then
    PanelConteudo.Controls[0].Free;

  Frm := FrmClass.Create(Self);
  Frm.Parent := PanelConteudo;
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Show;
end;

procedure TForm2.Panel1Click(Sender: TObject);
begin
  AbrirFormulario(TForm6);
end;

procedure TForm2.Panel2Click(Sender: TObject);
begin
  AbrirFormulario(TForm7);
end;

 // Não ta funcionando

procedure TForm2.PanelClick(Sender: TObject);
var
  PainelAnterior: TPanel;
  CorOriginal: TColor;
begin
  PainelAnterior := PainelAtivo;
  PainelAtivo := TPanel(Sender);

  if Assigned(PainelAnterior) and (PainelAnterior <> PainelAtivo) then
  begin
    CorOriginal := $005B2E00;
    PainelAnterior.Color := CorOriginal;
  end;

  PainelAtivo.Color := clHighlight;
end;
end.
