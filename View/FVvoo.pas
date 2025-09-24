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
    Panel3: TPanel;
    Panel4: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Panel5: TPanel;
   //procedure AbrirFormulario(FrmClass: TFormClass);
   //procedure Panel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: LongInt;
      Rect: TRect; State: TGridDrawState);

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
  FVgestor;

procedure TForm8.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0]:= 'ID';
  StringGrid1.Cells[1,0]:= 'Partida';
  StringGrid1.Cells[2,0]:= 'Chegada';
  StringGrid1.Cells[3,0]:= 'Piloto';
  StringGrid1.Cells[4,0]:= 'AeroMoça';
end;

procedure TForm8.Panel4Click(Sender: TObject);
begin
  Edit2.SetFocus;
end;

procedure TForm8.Panel5Click(Sender: TObject);
var
  novaLinha:Integer;
begin
  novaLinha := StringGrid1.RowCount;
  StringGrid1.RowCount := novaLinha + 1;

  StringGrid1.Cells[1,novaLinha]:= Edit2.Text;
  StringGrid1.Cells[2,novaLinha]:= Edit5.Text;
  StringGrid1.Cells[3,novaLinha]:= Edit6.Text;
  StringGrid1.Cells[4,novaLinha]:= Edit4.Text;



end;

procedure TForm8.StringGrid1DrawCell(Sender: TObject; ACol, ARow: LongInt;
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

//procedure TForm8.AbrirFormulario(FrmClass: TFormClass);
//var
//  Frm: TForm;
//begin
//
//  if Panelvoogestor.ControlCount > 0 then
//    Panelvoogestor.Controls[0].Free;
//
//  Frm := FrmClass.Create(Self);
//  Frm.Parent := Panelvoogestor;
//  Frm.BorderStyle := bsNone;
//  Frm.Align := alClient;
//  Frm.Show;
//end;
//
//
//procedure TForm8.Panel2Click(Sender: TObject);
//begin
//  AbrirFormulario(TForm11);
//end;



end.
