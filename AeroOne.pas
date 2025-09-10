unit AeroOne;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ImgLogin_Fundo: TImage;
    PanelLogin_fundo: TPanel;
    PanelLogin_cadastro: TPanel;
    EditLogin_Usuario: TEdit;
    EditLogin_Senha: TEdit;


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
