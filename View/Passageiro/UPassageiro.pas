unit UPassageiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFormPassageiro = class(TForm)
    PanelCentral_Gestor: TPanel;
    ImgHome_Gestor: TImage;
    PanelLateral_Gestor: TPanel;
    PanelVoos_Gestor: TPanel;
    PanelDados_Gestor: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    PanelSuperior_Gestor: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPassageiro: TFormPassageiro;

implementation

{$R *.dfm}

end.
