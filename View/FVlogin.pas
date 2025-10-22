unit FVLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,Vcl.ComCtrls;

type
  TFormLogin = class(TForm)
    ImgLogin_Fundo: TImage;
    PanelLogin_fundo: TPanel;
    PanelLogin_cadastro: TPanel;
    EditLogin_Usuario: TEdit;
    EditLogin_Senha: TEdit;
    butEntrar: TPanel;
    Label1: TLabel;
    Image2: TImage;
    procedure butEntrarClick(Sender: TObject);
    procedure EditLogin_SenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses
  Ugestor, UData, UAeromoc,UPiloto, UPassageiro;


procedure TFormLogin.EditLogin_SenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
   Self.butEntrarClick(nil);
  end;
end;

procedure TFormLogin.butEntrarClick(Sender: TObject);
var
  cargo : string;
begin
  DataModule1.FDQuery1.Close;
  DataModule1.FDQuery1.SQL.Clear;
  DataModule1.FDQuery1.SQL.Add('SELECT id_usuario, nome, cargo ');
  DataModule1.FDQuery1.SQL.Add('FROM usuarios ');
  DataModule1.FDQuery1.SQL.Add('WHERE email = :email AND senha = :senha'); // SQL injection

  DataModule1.FDQuery1.ParamByName('email').AsString := EditLogin_Usuario.Text;
  DataModule1.FDQuery1.ParamByName('senha').AsString := EditLogin_Senha.Text;
  DataModule1.FDQuery1.Open;

  if not DataModule1.FDQuery1.IsEmpty then
  begin
    cargo := Trim(DataModule1.FDQuery1.FieldByName('cargo').AsString);
    DataModule1.UsuarioLogadoID := DataModule1.FDQuery1.FieldByName('id_usuario').AsInteger;

    if cargo = 'Gestor' then
    begin
      Application.CreateForm(TFormGestor, FormGestor);
      FormGestor.Show;
      FormLogin.Hide;
    end
    else if cargo = 'AeroMoço(a)' then
    begin
      Application.CreateForm(TFormAeroMoc, FormAeroMoc);
      FormAeroMoc.Show;
      FormLogin.Hide;
    end
    else if cargo = 'Piloto' then
    begin
      Application.CreateForm(TFormPiloto, FormPiloto);
      FormPiloto.Show;
      FormLogin.Hide;
    end
    else
    begin
      Application.CreateForm(TFormPassageiro, FormPassageiro);
      FormPassageiro.Show;
      FormLogin.Hide;
    end;
  end
  else
    ShowMessage('Login inválido!');

  end;

end.
