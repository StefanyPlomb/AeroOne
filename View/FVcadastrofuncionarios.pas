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
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    EditNome_cadastro: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: LongInt;
      Rect: TRect; State: TGridDrawState);
  private
    //procedure adicionar;     controll do model de add
  public
  end;

implementation

{$R *.dfm}

uses
  FVgestor, UMcadastrofuncionario;

procedure TForm6.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0] := 'ID';
  StringGrid1.Cells[1,0] := 'Nome';
  StringGrid1.Cells[2,0] := 'E-mail';
  StringGrid1.Cells[3,0] := 'Funcao';
  StringGrid1.Cells[4,0] := 'CPF';
end;


procedure TForm6.Panel1Click(Sender: TObject);
begin
  //AbrirFormulario(TForm10);  controll do model de add
  EditNome_cadastro.Setfocus;

end;


procedure TForm6.StringGrid1DrawCell(Sender: TObject; ACol, ARow: LongInt; // zebra
  Rect: TRect; State: TGridDrawState);
begin
  with (Sender as TStringGrid).Canvas do
  begin
    // Cabeçalho
    if ARow = 0 then
    begin
      Brush.Color := clGray;
      Font.Color := clWhite;
      Font.Style := [fsBold];
    end
    else
    begin
      // Linhas alternadas
      if Odd(ARow) then
        Brush.Color := $00C08000
      else
        Brush.Color := clWhite;

      Font.Color := clBlack;
      Font.Style := [];
    end;

    FillRect(Rect);
    TextRect(Rect, Rect.Left+4, Rect.Top+2, (Sender as TStringGrid).Cells[ACol, ARow]);
  end;
end;


//GERENTE - CADASTRO ADD


  procedure TForm6.Button1Click(Sender: TObject);
begin
var
  novaLinha: Integer;
begin
  novaLinha := StringGrid1.RowCount;
  StringGrid1.RowCount := novaLinha + 1;

  StringGrid1.Cells[0, novaLinha] := EditNome_cadastro.Text;
  StringGrid1.Cells[1, novaLinha] := Edit2.Text;
  StringGrid1.Cells[2, novaLinha] := Edit3.Text;

  EditNome_cadastro.Clear;
  Edit2.Clear;
  Edit3.Clear;
 end;

end;

end.

