unit FVLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.ComCtrls; // <- PageControl

type
  TForm1 = class(TForm)
    ImgLogin_Fundo: TImage;
    PanelLogin_fundo: TPanel;
    PanelLogin_cadastro: TPanel;
    EditLogin_Usuario: TEdit;
    EditLogin_Senha: TEdit;
    Panel1: TPanel; // pode trocar por TButton
    Label1: TLabel;
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheetLogin: TTabSheet;
    TabSheetMenu: TTabSheet;
    procedure Panel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Panel1Click(Sender: TObject);
begin
  if (Trim(EditLogin_Usuario.Text) = 'admin') and (Trim(EditLogin_Senha.Text) = '123') then
    PageControl1.ActivePage := TabSheetMenu
  else
    ShowMessage('Usuário ou senha incorretos');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheetLogin;
end;

end.

