unit UViewVoo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormVoos = class(TForm)
    PanelCentral_Gestor: TPanel;
    LabelTitulo_Gestor: TLabel;
    LabelSubtitulo_Gestor: TLabel;
    PanelAlterarVoo: TPanel;
    PanelExcluirVoo: TPanel;
    StringGridVoo: TStringGrid;
    PanelNovoVoo: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVoos: TFormVoos;

implementation

{$R *.dfm}

end.
