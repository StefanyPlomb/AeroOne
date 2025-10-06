unit UCadastroVoo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls;

type
  TFormCadastroVoos = class(TForm)
    PanelCentralVoos: TPanel;
    LabelTituloVoos: TLabel;
    LabelSubtituloVoos: TLabel;
    StringGridCadVoos: TStringGrid;
    EditBuscaVoos: TEdit;
    EditPartidaVoos: TEdit;
    EditCodigoVoos: TEdit;
    EditAeroMVoos: TEdit;
    EditDestinoVoos: TEdit;
    EditPVoos: TEdit;
    PanelSalvarCadVoos: TPanel;
    PanelAlterarCadVoos: TPanel;
    PanelExcluirCadVoos: TPanel;
    PanelNovoCadVoos: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVoos: TFormCadastroVoos;

implementation

{$R *.dfm}

end.
