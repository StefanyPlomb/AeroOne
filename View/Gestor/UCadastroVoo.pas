unit UCadastroVoo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls,
  Data.DB, UData, Vcl.DBGrids,CBloquear;

type
  TFormCadastroVoos = class(TForm)
    PanelCentralVoos: TPanel;
    EditBuscaVoos: TEdit;
    EditPartidaVoos: TEdit;
    EditDestinoVoos: TEdit;
    PanelSalvarCadVoos: TPanel;
    PanelAlterarCadVoos: TPanel;
    PanelExcluirCadVoos: TPanel;
    PanelNovoCadVoos: TPanel;
    DBGridCadastroVoos: TDBGrid;
    EditDataPartida: TEdit;
    EditHorarioVoos: TEdit;
    EditHorarioChegada: TEdit;
    EditDataChegada: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    PanelSuperiorTitulos: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure PanelNovoCadVoosClick(Sender: TObject);
    procedure PanelSalvarCadVoosClick(Sender: TObject);
    procedure PanelAlterarCadVoosClick(Sender: TObject);
    procedure PanelExcluirCadVoosClick(Sender: TObject);
    procedure EditBuscaVoosChange(Sender: TObject);
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


procedure TFormCadastroVoos.EditBuscaVoosChange(Sender: TObject);
begin
with DataModule1.FDQueryVoos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM voos WHERE origem ILIKE :filtro or destino ILIKE :filtro or CAST(data_partida AS VARCHAR) ILIKE :filtro or CAST (id_piloto AS VARCHAR) ILIKE :filtro ORDER BY data_partida DESC, hora_partida DESC');
    ParamByName('filtro').AsString := '%' + EditBuscaVoos.Text + '%';
    Open;
  end;
end;

procedure TFormCadastroVoos.FormCreate(Sender: TObject);
var
  ControllerBloquear : TFormBloquear;
begin

 with DBGridCadastroVoos.Columns.Add do
  begin
    FieldName := 'origem';
    Title.Caption := 'Partida';
    Title.Font.Style := [fsBold];
    Title.Font.Size := 15;
    Width := 100;
  end;

  with DBGridCadastroVoos.Columns.Add do
  begin
    FieldName := 'destino';
    Title.Caption := 'Destino';
    Title.Font.Style := [fsBold];
    Title.Font.Size := 15;
    Width := 100;
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

  ControllerBloquear.BloquearEdits([EditPartidaVoos, EditDestinoVoos,EditDataPartida, EditHorarioVoos, EditDataChegada, EditHorarioChegada]);
end;

procedure TFormCadastroVoos.AbrirVoos;
begin
    DataModule1.FDQueryVoos.Close;
    DataModule1.FDQueryVoos.SQL.Text := 'SELECT * FROM voos ORDER BY data_partida DESC, hora_partida DESC';
    DataModule1.FDQueryVoos.Open;
end;

procedure TFormCadastroVoos.PanelNovoCadVoosClick(Sender: TObject);
begin

  EditPartidaVoos.SetFocus;
  OpcoesSalvar := False;

end;

procedure TFormCadastroVoos.PanelSalvarCadVoosClick(Sender: TObject);
var
 ProximoID: Integer;
begin
  // === INSERIR NOVO ===
  if OpcoesSalvar = False then
  begin

    if (Trim(EditPartidaVoos.Text) = '') or (Trim(EditDestinoVoos.Text) = '') then
    begin
      ShowMessage('Informe Local de Partida e Destino.');
      Exit;
    end;

    DataModule1.FDQueryVoos.Append;
    DataModule1.FDQueryVoos.FieldByName('origem').AsString := EditPartidaVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('destino').AsString := EditDestinoVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('data_partida').AsString := EditDataPartida.Text;
    DataModule1.FDQueryVoos.FieldByName('data_chegada').AsString := EditDataChegada.Text;
    DataModule1.FDQueryVoos.FieldByName('hora_partida').AsString := EditHorarioVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('hora_chegada').AsString := EditHorarioChegada.Text;
    DataModule1.FDQueryVoos.Post;

    DataModule1.FDQueryVoos.Refresh;
    AbrirVoos;


    EditPartidaVoos.Clear;
    EditDestinoVoos.Clear;
    EditDataPartida.Clear;
    EditHorarioVoos.Clear;
    EditPartidaVoos.SetFocus;

    ShowMessage('Voo cadastrado com sucesso!');
  end
  else
  begin
    // === EDITAR EXISTENTE ===
    DataModule1.FDQueryVoos.Edit;
    DataModule1.FDQueryVoos.FieldByName('origem').AsString := EditPartidaVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('destino').AsString := EditDestinoVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('data_partida').AsString := EditDataPartida.Text;
    DataModule1.FDQueryVoos.FieldByName('data_chegada').AsString := EditDataChegada.Text;
    DataModule1.FDQueryVoos.FieldByName('hora_partida').AsString := EditHorarioVoos.Text;
    DataModule1.FDQueryVoos.FieldByName('hora_chegada').AsString := EditHorarioChegada.Text;
    DataModule1.FDQueryVoos.Post;

    ShowMessage('Voo atualizado com sucesso!');
    DataModule1.FDQueryVoos.Refresh;
  end;
end;


procedure TFormCadastroVoos.PanelAlterarCadVoosClick(Sender: TObject);
var
  ControllerBloquear: TFormBloquear;
begin

  EditPartidaVoos.Text :=  DataModule1.FDQueryVoos.FieldByName('origem').AsString;
  EditDestinoVoos.Text :=  DataModule1.FDQueryVoos.FieldByName('destino').AsString;
  EditDataPartida.Text :=  DataModule1.FDQueryVoos.FieldByName('data_partida').AsString;
  EditHorarioVoos.Text :=  DataModule1.FDQueryVoos.FieldByName('hora_chegada').AsString;

  IDSelecionado := DataModule1.FDQueryVoos.FieldByName('id_voo').AsInteger;
   OpcoesSalvar := True;

   ControllerBloquear.BloquearEdits([EditPartidaVoos, EditDestinoVoos,EditDataPartida, EditHorarioVoos, EditDataChegada, EditHorarioChegada]);

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
