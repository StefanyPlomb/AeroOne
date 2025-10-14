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
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    procedure Panel1Click(Sender: TObject);

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
  Ugestor, UData, UAeromoc;


procedure TFormLogin.Panel1Click(Sender: TObject);
begin
  DataModule1.FDQuery1.Close;
  DataModule1.FDQuery1.SQL.Clear;
  DataModule1.FDQuery1.SQL.Add('SELECT id_usuario, nome, cargo ');
  DataModule1.FDQuery1.SQL.Add('FROM usuarios ');
  DataModule1.FDQuery1.SQL.Add('WHERE email = :email AND senha = :senha');

  DataModule1.FDQuery1.ParamByName('email').AsString := EditLogin_Usuario.Text;
  DataModule1.FDQuery1.ParamByName('senha').AsString := EditLogin_Senha.Text;
  DataModule1.FDQuery1.Open;

  if not DataModule1.FDQuery1.IsEmpty then
  begin
    DataModule1.UsuarioLogadoID := DataModule1.FDQuery1.FieldByName('id_usuario').AsInteger;
    if DataModule1.FDQuery1.FieldByName('cargo').AsString = 'Gestor' then
    begin
      Application.CreateForm(TFormGestor, FormGestor);
      FormGestor.Show;
      FormLogin.Hide;
    end
    else if DataModule1.FDQuery1.FieldByName('cargo').AsString = 'AeroMoca' then
    begin
       Application.CreateForm(TFormAeroMoc, FormAeroMoc);
       FormAeroMoc.Show;
       FormLogin.Hide;
    end
    else if DataModule1.FDQuery1.FieldByName('cargo').AsString = 'Piloto' then
    begin
      // Application.CreateForm(TFormGestor, FormGestor);
      //FormGestor.Show;
      //FormLogin.Hide;
       ShowMessage('Abrir tela da Piloto')
    end
    else
     begin
      // Application.CreateForm(TFormGestor, FormGestor);
      //FormGestor.Show;
      //FormLogin.Hide;
       ShowMessage('Abrir tela do Passageiro')
    end

  end
  else
    ShowMessage('Login inválido!');

  end;

end.

