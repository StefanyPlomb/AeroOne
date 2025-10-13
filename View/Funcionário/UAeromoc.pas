unit UAeromoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, FVLogin, UVoosAeroMo, UCheckin, UDash;

type
  TFormAeroMoc = class(TForm)
    PanelCentral_Aeromo: TPanel;
    ImgHome_Aeromo: TImage;
    PanelLateral_Aeromo: TPanel;
    PanelReservas_Aeromo: TPanel;
    PanelVoos_Aeromo: TPanel;
    PanelDados_Aeromo: TPanel;
    PanelSuperior_Aeromo: TPanel;
    LabelSaida_Aeromo: TLabel;
    LabelCargo_Aeromo: TLabel;
    LabelName_Aeromo: TLabel;
    LabelHome_Aeromo: TLabel;
    PanelLogout_Aeromo: TPanel;
    ImgLogout_Aeromo: TImage;
    PanelDash_AeroMo: TPanel;
    procedure PanelLogout_AeromoClick(Sender: TObject);
    procedure AbrirForm (FrmClass: TFormClass);
     procedure AbrirDash (FrmClass: TFormClass);
    procedure PanelVoos_AeromoClick(Sender: TObject);
    procedure PanelReservas_AeromoClick(Sender: TObject);
    procedure PanelDados_AeromoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAeroMoc: TFormAeroMoc;

implementation

{$R *.dfm}

procedure TFormAeroMoc.PanelDados_AeromoClick(Sender: TObject);
begin
  //AbrirForm(TFormMeusDados);
end;

procedure TFormAeroMoc.PanelLogout_AeromoClick(Sender: TObject);
begin
   FormLogin.Show;
   Self.Close;
end;


procedure TFormAeroMoc.PanelReservas_AeromoClick(Sender: TObject);
begin
  AbrirForm(TFormCheckin);
end;

procedure TFormAeroMoc.PanelVoos_AeromoClick(Sender: TObject);
begin
 AbrirForm(TFormVoosAeromo);
end;

procedure TFormAeroMoc.AbrirForm;
var
Frm: TForm;
begin
 if PanelCentral_Aeromo.ControlCount > 0 then
    PanelCentral_Aeromo.Controls[0].Free;

  Frm := FrmClass.Create(Self);
  Frm.Parent := PanelCentral_Aeromo;
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Show;
end;

procedure TFormAeroMoc.FormCreate(Sender: TObject);
begin
  AbrirDash (TFormDash);
end;

procedure TFormAeroMoc.AbrirDash;
var
Frm: TForm;
begin
 if PanelDash_AeroMo.ControlCount > 0 then
    PanelDash_AeroMo.Controls[0].Free;

  Frm := FrmClass.Create(Self);
  Frm.Parent := PanelDash_AeroMo;
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Show;
end;

end.
