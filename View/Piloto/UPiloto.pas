unit UPiloto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  UData, UDados,UVoos;

type
  TFormPiloto = class(TForm)
    PanelCentral_Piloto: TPanel;
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
    procedure AbrirForm (FrmClass: TFormClass);
    procedure PanelVoos_GestorClick(Sender: TObject);
    procedure PanelDados_GestorClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPiloto: TForm;

implementation

{$R *.dfm}

{ TFormPiloto }

procedure TFormPiloto.AbrirForm(FrmClass: TFormClass);
var
Frm: TForm;
begin
 if PanelCentral_Piloto.ControlCount > 0 then
    PanelCentral_Piloto.Controls[0].Free;

  Frm := FrmClass.Create(Self);
  Frm.Parent := PanelCentral_Piloto;
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Show;
end;

procedure TFormPiloto.PanelDados_GestorClick(Sender: TObject);
begin
   AbrirForm(TFormMeusDados);
end;

procedure TFormPiloto.PanelVoos_GestorClick(Sender: TObject);
begin
   AbrirForm(TFormVoosAeroMo);
end;

end.
