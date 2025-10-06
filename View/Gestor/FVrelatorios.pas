unit FVrelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormRelatorios = class(TForm)
    PanelCentralRelatorios: TPanel;
    StringGridRelatorios: TStringGrid;
    LabelTituloRelatorios: TLabel;
    LabelSubtituloRelatorios: TLabel;
    BoxFiltroRelaorios: TComboBox;
    EditBuscaRelatorios: TEdit;
    PanelBuscarRelatorios: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorios: TFormRelatorios;

implementation

{$R *.dfm}

end.
