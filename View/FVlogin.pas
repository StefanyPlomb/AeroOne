unit FVLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls; // <- PageControl

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.

