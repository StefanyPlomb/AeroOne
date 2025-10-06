unit UCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBGrids,
  Vcl.Grids, Vcl.ExtCtrls, UData;

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
    procedure FormCreate(Sender: TObject);
    procedure PanelNovoFuncionarioClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFuncionaris: TFormCadastroFuncionaris;

implementation

{$R *.dfm}

procedure TFormCadastroFuncionaris.FormCreate(Sender: TObject);
begin
  DataModule1.FDQueryFuncionarios.Close;
  DataModule1.FDQueryFuncionarios.SQL.Clear;
  DataModule1.FDQueryFuncionarios.SQL.Text := 'SELECT * FROM usuarios';
  DataModule1.FDQueryFuncionarios.Open;
  //DataModule1DBGridFuncionarios.DataSource1 := DataModule.DataSource1;

end;


procedure TFormCadastroFuncionaris.PanelNovoFuncionarioClick(Sender: TObject);
begin
 if Trim(EditNomeFuncionarios.Text) = '' then
  begin
    ShowMessage('Digite um nome.');
    Exit;
  end;

  DataModule1.FDQueryFuncionarios.Append;
  DataModule1.FDQueryFuncionarios.FieldByName('nome').AsString := EditNomeFuncionarios.Text;
  DataModule1.FDQueryFuncionarios.Post;

  EditNomeFuncionarios.Clear;
  EditNomeFuncionarios.SetFocus;
end;

end.
