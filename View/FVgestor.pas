unit FVgestor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,FVlogin, Vcl.Imaging.pngimage;

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
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure PanelClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
  private
    PainelAtivo: TPanel;
    DefaultPanelColor: TColor;
    procedure SelecionarPainel(APainel: TPanel);
  public
    procedure AbrirFormulario(FrmClass: TFormClass);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses
  FVCadastroFuncionarios, FVreservas, FVvoo; // <-- esses ficam só no implementation

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin
  // guarda cor padrão (assume que todos os painéis laterais têm mesma cor)
  if Assigned(Panel1) then
    DefaultPanelColor := Panel1.Color
  else
    DefaultPanelColor := clBtnFace;
end;

procedure TForm2.SelecionarPainel(APainel: TPanel);
begin
  if not Assigned(APainel) then Exit;

  if Assigned(PainelAtivo) and (PainelAtivo <> APainel) then
    PainelAtivo.Color := DefaultPanelColor;

  PainelAtivo := APainel;
  PainelAtivo.Color := clHighlight;
end;

procedure TForm2.PanelClick(Sender: TObject);
begin
  if not (Sender is TPanel) then Exit;
  SelecionarPainel(TPanel(Sender));
end;

procedure TForm2.AbrirFormulario(FrmClass: TFormClass);
var
  Frm: TForm;
begin
  // libera controle anterior
  if PanelConteudo.ControlCount > 0 then
    PanelConteudo.Controls[0].Free;

  // cria o form como filho do gestor (Owner = Self)
  Frm := FrmClass.Create(Self);
  Frm.Parent := PanelConteudo;
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Show;
end;

procedure TForm2.Panel1Click(Sender: TObject);
begin
  AbrirFormulario(TForm6); // TForm6 declarado em FVCadastroFuncionarios
  SelecionarPainel(Panel1);
end;

procedure TForm2.Panel2Click(Sender: TObject);
begin
  AbrirFormulario(TForm7); // TForm7 declarado em FVreservas
  SelecionarPainel(Panel2);
end;

procedure TForm2.Panel3Click(Sender: TObject);
begin
  AbrirFormulario(TForm8); // TForm8 declarado em FVvoo (exemplo)
  SelecionarPainel(Panel3);
end;

procedure TForm2.Panel7Click(Sender: TObject);
begin
  Form1.Show;   // mostra o form de login existente
  Self.Close;   // fecha o form do gestor
end;

end.

