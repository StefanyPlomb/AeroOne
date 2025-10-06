unit UCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBGrids,
  Vcl.Grids, Vcl.ExtCtrls;

type
  TFormCadastroFuncionaris = class(TForm)
    PanelCentral_Funcionarios: TPanel;
    LabelTituloFuncionarios: TLabel;
    LabelSubtituloFuncionarios: TLabel;
    PanelNovoFuncionario: TPanel;
    EditBuscaFuncionarios: TEdit;
    PanelExcluirFuncionario: TPanel;
    PanelEditarFuncionario: TPanel;
    PanelGridFuncionario: TPanel;
    DBGridFuncionarios: TDBGrid;
    ButSalvarFuncionarios: TButton;
    EditViewEmail: TEdit;
    EditViewCodigo: TEdit;
    EditCargosFuncionarios: TEdit;
    EditNomeFuncionarios: TEdit;
    ButVoltarFuncionarios: TButton;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFuncionaris: TFormCadastroFuncionaris;

implementation

{$R *.dfm}



end.
