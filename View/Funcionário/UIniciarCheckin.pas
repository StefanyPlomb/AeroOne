unit UIniciarCheckin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TFormCheckin_Iniciado = class(TForm)
    Panel1: TPanel;
    LabelSubtituloCheck: TLabel;
    LabelTituloCheck: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Button2: TButton;
    Button3: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheckin_Iniciado: TFormCheckin_Iniciado;

implementation

{$R *.dfm}

end.
