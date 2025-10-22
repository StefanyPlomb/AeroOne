unit UDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, MEndereco, CEnderecoController,
  UData, CBloquear;

type
  TFormMeusDados = class(TForm)
    PanelCentralDados: TPanel;
    PanelSuperiorTitulo: TPanel;
    LabelSubTitulo: TLabel;
    PanelDados: TPanel;
    EditNome: TEdit;
    EditCPF: TEdit;
    EditEmail: TEdit;
    EditTelefone: TEdit;
    LabelEndereço: TLabel;
    EditCEP: TEdit;
    EditRua: TEdit;
    EditNumero: TEdit;
    EditBairro: TEdit;
    EditCidade: TEdit;
    ButSalvar: TPanel;
    ButCancelar: TPanel;
    ButEditar: TPanel;
    LabelNome: TLabel;
    LabelCPF: TLabel;
    LabelEmail: TLabel;
    LabelTelefone: TLabel;
    LabelCEP: TLabel;
    LabelRua: TLabel;
    LabelNumero: TLabel;
    LabelBairro: TLabel;
    LabelCidade: TLabel;
    PanelLateralDados: TPanel;
    EditRG: TEdit;
    Label12: TLabel;
    EditPassaporte: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    LabelIcon: TLabel;
    procedure EditCEPExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButEditarClick(Sender: TObject);


  private
    procedure ExibirDados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMeusDados: TFormMeusDados;

implementation

{$R *.dfm}


procedure TFormMeusDados.ButEditarClick(Sender: TObject);
var
  Controller: TFormBloquear;
begin
   Controller.DesbloquearEdits([EditNome, EditEmail, EditCPF, EditRG, EditPassaporte]);
   EditNome.SetFocus;
end;

procedure TFormMeusDados.EditCEPExit(Sender: TObject);
var
  Endereco: TEndereco;
begin
  if Trim(EditCEP.Text) = '' then Exit;

  Endereco := TEnderecoController.BuscarPorCEP(EditCEP.Text);

  if Assigned(Endereco) then
  begin
    EditRua.Text := Endereco.Logradouro;
    EditBairro.Text := Endereco.Bairro;
    EditCidade.Text := Endereco.Cidade;
  end
  else
    ShowMessage('Endereço não encontrado.');

  Endereco.Free;

end;

procedure TFormMeusDados.ExibirDados;
begin
  with DataModule1.FDQueryFuncionarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM usuarios WHERE id_usuario = :id');
    ParamByName('id').AsInteger := DataModule1.UsuarioLogadoID;
    Open;

    if not IsEmpty then
    begin
      EditNome.text := FieldByName('nome').AsString;
      EditEmail.text := FieldByName('email').AsString;
      EditTelefone.text := FieldByName('telefone').AsString;
      EditRG.text := FieldByName('rg').AsString;
      EditPassaporte.text := FieldByName('passaporte').AsString;
      EditCPF.text := FieldByName('cpf').AsString;

    end
    else
    begin
      ShowMessage('Erro ao exibir dados salvos');
    end;
  end;

end;

procedure TFormMeusDados.FormCreate(Sender: TObject);
var Controller : TFormBloquear;
begin
  Controller.BloquearEdits([EditNome, EditEmail, EditCPF, EditRG, EditPassaporte]);
end;

end.
