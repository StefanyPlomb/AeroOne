unit FVreservas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    StringGrid1: TStringGrid;
    Panel4: TPanel;
    procedure Panel4Click(Sender: TObject); // clique no painel 4 abre próximo form
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses
  FVgestor, FVvoo; // importa gestor (Form2) e o próximo form (Form8)

procedure TForm7.Panel4Click(Sender: TObject);
begin
  if Assigned(Form2) then   // Form2 = FVgestor
    Form2.AbrirFormulario(TForm8); // abre TForm8 dentro do PanelConteudo
end;

end.

