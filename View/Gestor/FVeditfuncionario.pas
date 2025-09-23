unit FVeditfuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,UMcadastrofuncionario, Vcl.ExtCtrls;

type
  TForm10 = class(TForm)
    EditNome_cadastro: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
  Operacao: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;



implementation

{$R *.dfm}


procedure TForm10.Button1Click(Sender: TObject);
begin
    Operacao := 'Adiconar';
    //Salvarlista;
   // LimparEditsEstudantes;
end;

end.
