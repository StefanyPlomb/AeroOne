unit FVgestor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, FVfuncionario,
  FVCadastroFuncionarios;

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
    Label1: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PanelConteudo: TPanel;
    Label7: TLabel;
    procedure AbrirFormulario (Frm: TForm);
    procedure Panel1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AbrirFormulario(Frm: TForm);

begin
  Frm.Parent := PanelConteudo;
  Frm.BorderStyle := bsNone;    // Tira bordas
  Frm.Align := alClient;        // Ocupa todo o espaço do painel
  Frm.Show;
end;


procedure TForm2.Panel1Click(Sender: TObject);
begin
  AbrirFormulario(TForm6.Create(Self));
   Panel1.Color := clSkyBlue;
end;

end.
