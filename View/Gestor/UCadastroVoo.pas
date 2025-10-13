unit UCadastroVoo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls,
  Data.DB, UData, Vcl.DBGrids;

type
  TFormCadastroVoos = class(TForm)
    PanelCentralVoos: TPanel;
    LabelTituloVoos: TLabel;
    LabelSubtituloVoos: TLabel;
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
    DBGridCadastroVoos: TDBGrid;
    EditDataPartida: TEdit;
    EditHorarioVoos: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure PanelNovoCadVoosClick(Sender: TObject);
    procedure PanelSalvarCadVoosClick(Sender: TObject);
    procedure PanelAlterarCadVoosClick(Sender: TObject);
    procedure PanelExcluirCadVoosClick(Sender: TObject);
  private
  procedure AbrirVoos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVoos: TFormCadastroVoos;
  OpcoesSalvar: Boolean = false;
  IDselecionado: Integer = 0;

implementation

{$R *.dfm}


procedure TFormCadastroVoos.FormCreate(Sender: TObject);
begin

 AbrirVoos;

with DBGridCadastroVoos.Columns.Add do
begin
  FieldName := 'id_voos';
  Title.Caption := 'ID';
   Title.Font.Style := [fsBold];
   Title.Font.size := 15;
end;
end;

procedure TFormCadastroVoos.AbrirVoos;
begin
 if not DataModule1.FDQueryVoos.Active then
  begin
    DataModule1.FDQueryVoos.Close;
    DataModule1.FDQueryVoos.SQL.Text := 'SELECT * FROM voos';
    DataModule1.FDQueryVoos.Open;
  end;

end;

procedure TFormCadastroVoos.PanelNovoCadVoosClick(Sender: TObject);
begin

  EditPartidaVoos.SetFocus;
  OpcoesSalvar := False;

end;

procedure TFormCadastroVoos.PanelSalvarCadVoosClick(Sender: TObject);
begin
          // === INSERIR NOVO ===
  if OpcoesSalvar = False then
    begin
     if (Trim(EditPartidaVoos.Text) = '') or    // VALIDAR
     (Trim(EditDestinoVoos.Text) = '')  then
    begin
      ShowMessage('Informe Local de Partina e Destino.');
      Exit;
    end;

      DataModule1.FDQueryVoos.Append;
      DataModule1.FDQueryVoos.FieldByName('partida').AsString := EditPartidaVoos.Text;
      DataModule1.FDQueryVoos.FieldByName('destino').AsString := EditDestinoVoos.Text;
      DataModule1.FDQueryVoos.FieldByName('data').AsString := EditDataPartida.Text;
      DataModule1.FDQueryVoos.FieldByName('horario').AsString := EditHorarioVoos.Text;
      DataModule1.FDQueryVoos.Post;

      DataModule1.FDQueryFuncionarios.Refresh;
      AbrirVoos;

      EditPartidaVoos.Clear;
      EditDestinoVoos.Clear;
      EditDataPartida.Clear;
      EditHorarioVoos.Clear;
      EditPartidaVoos.SetFocus;

    end else  // === EDITAR EXISTENTE ===
  begin

    DataModule1.FDQueryVoos.Edit;
    DataModule1.FDQueryVoos.FieldByName('partida').AsString := EditPartidaVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('destino').AsString := EditDestinoVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('data').AsString := EditDataPartida.Text;
    DataModule1.FDQueryVoos.FieldByName('horario').AsString := EditHorarioVoos.Text;
    DataModule1.FDQueryVoos.Post;

    ShowMessage('Voo atualizado com sucesso!');
    DataModule1.FDQueryVoos.Refresh;
  end;

end;

procedure TFormCadastroVoos.PanelAlterarCadVoosClick(Sender: TObject);
begin

  EditPartidaVoos.Text :=  DataModule1.FDQueryVoos.FieldByName('partida').AsString;
  EditDestinoVoos.Text :=  DataModule1.FDQueryVoos.FieldByName('destino').AsString;
  EditDataPartida.Text :=  DataModule1.FDQueryVoos.FieldByName('data').AsString;
  EditHorarioVoos.Text :=  DataModule1.FDQueryVoos.FieldByName('horario').AsString;

  IDSelecionado := DataModule1.FDQueryFuncionarios.FieldByName('id_voos').AsInteger;
   OpcoesSalvar := True;

end;

procedure TFormCadastroVoos.PanelExcluirCadVoosClick(Sender: TObject);
begin
   if MessageDlg('Deseja realmente excluir este Voo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DataModule1.FDQueryVoos.Delete;
    DataModule1.FDQueryVoos.Refresh;
    ShowMessage('Voo excluído com sucesso!');
  end;
end;

end.
