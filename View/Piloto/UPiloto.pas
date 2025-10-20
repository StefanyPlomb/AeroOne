unit UPiloto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    PanelCentral_Gestor: TPanel;
    ImgHome_Gestor: TImage;
    PanelLateral_Gestor: TPanel;
    PanelVoos_Gestor: TPanel;
    PanelRelatorios_Gestor: TPanel;
    PanelDados_Gestor: TPanel;
    PanelSuperior_Gestor: TPanel;
    LabelSaida_Gestor: TLabel;
    LabelCargo_Gestor: TLabel;
    LabelName_Gestor: TLabel;
    LabelHome_Gestor: TLabel;
    PanelLogout_Gestor: TPanel;
    ImgLogout_Gestor: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
