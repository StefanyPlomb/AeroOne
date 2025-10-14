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
    Edit1: TEdit;
    Edit2: TEdit;
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
  IDSelecionado: Integer = 0;

implementation

{$R *.dfm}



procedure TFormCadastroVoos.FormCreate(Sender: TObject);
begin

 with DBGridCadastroVoos.Columns.Add do
  begin
    FieldName := 'origem';
    Title.Caption := 'Partida';
    Title.Font.Style := [fsBold];
    Title.Font.Size := 15;
  end;

  with DBGridCadastroVoos.Columns.Add do
  begin
    FieldName := 'destino';
    Title.Caption := 'Destino';
    Title.Font.Style := [fsBold];
    Title.Font.Size := 15;
  end;

  with DBGridCadastroVoos.Columns.Add do
  begin
    FieldName := 'data_partida';
    Title.Caption := 'Data Partida';
    Title.Font.Style := [fsBold];
    Title.Font.Size := 15;
  end;

  with DBGridCadastroVoos.Columns.Add do
  begin
    FieldName := 'hora_partida';
    Title.Caption := 'Hora Partida';
    Title.Font.Style := [fsBold];
    Title.Font.Size := 15;
  end;

  with DBGridCadastroVoos.Columns.Add do
  begin
    FieldName := 'hora_chegada';
    Title.Caption := 'Hora Chegada';
    Title.Font.Style := [fsBold];
    Title.Font.Size := 15;
  end;

  AbrirVoos;
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
      DataModule1.FDQueryVoos.FieldByName('codigo_voo').AsString := EditCodigoVoos.Text;
      DataModule1.FDQueryVoos.FieldByName('origem').AsString := EditPartidaVoos.Text;
      DataModule1.FDQueryVoos.FieldByName('destino').AsString := EditDestinoVoos.Text;
      DataModule1.FDQueryVoos.FieldByName('data_partida').AsString := EditDataPartida.Text;
      DataModule1.FDQueryVoos.FieldByName('data_chegada').AsString := Edit2.Text;
      DataModule1.FDQueryVoos.FieldByName('hora_partida').AsString := EditHorarioVoos.Text;
      DataModule1.FDQueryVoos.FieldByName('hora_chegada').AsString := Edit1.Text;
      DataModule1.FDQueryVoos.Post;

      DataModule1.FDQueryVoos.Refresh;
      AbrirVoos;

      EditPartidaVoos.Clear;
      EditDestinoVoos.Clear;
      EditDataPartida.Clear;
      EditHorarioVoos.Clear;
      EditPartidaVoos.SetFocus;

    end else  // === EDITAR EXISTENTE ===
  begin

    DataModule1.FDQueryVoos.Edit;
    DataModule1.FDQueryVoos.FieldByName('origem').AsString := EditPartidaVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('destino').AsString := EditDestinoVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('data_partida').AsString := EditDataPartida.Text;
    DataModule1.FDQueryVoos.FieldByName('hora_chegada').AsString := EditHorarioVoos.Text;
    DataModule1.FDQueryVoos.Post;

    ShowMessage('Voo atualizado com sucesso!');
    DataModule1.FDQueryVoos.Refresh;
  end;

end;

procedure TFormCadastroVoos.PanelAlterarCadVoosClick(Sender: TObject);
begin

  EditPartidaVoos.Text :=  DataModule1.FDQueryVoos.FieldByName('origem').AsString;
  EditDestinoVoos.Text :=  DataModule1.FDQueryVoos.FieldByName('destino').AsString;
  EditDataPartida.Text :=  DataModule1.FDQueryVoos.FieldByName('data_partida').AsString;
  EditHorarioVoos.Text :=  DataModule1.FDQueryVoos.FieldByName('hora_chegada').AsString;

  IDSelecionado := DataModule1.FDQueryVoos.FieldByName('id_voo').AsInteger;
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
