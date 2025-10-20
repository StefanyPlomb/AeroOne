unit UGestor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg,FVLogin,UCadastroFuncionarios, UCadastroVoo, FVrelatorios,UData, UDados;

type
  TFormGestor = class(TForm)
    PanelSuperior_Gestor: TPanel;
    LabelSaida_Gestor: TLabel;
    LabelCargo_Gestor: TLabel;
    LabelName_Gestor: TLabel;
    LabelHome_Gestor: TLabel;
    PanelLogout_Gestor: TPanel;
    ImgLogout_Gestor: TImage;
    PanelLateral_Gestor: TPanel;
    PanelFuncionarios_Gestor: TPanel;
    PanelVoos_Gestor: TPanel;
    PanelRelatorios_Gestor: TPanel;
    PanelCentral_Gestor: TPanel;
    ImgHome_Gestor: TImage;
    PanelDashVoo_Gestor: TPanel;
    LabelDashVoo_Gestor: TLabel;
    NumDashVoo_Gestor: TLabel;
    PanelDashCheck_Gestor: TPanel;
    LabelDashCheck_Gestor: TLabel;
    NumDashCheck_Gestor: TLabel;
    LabelDash_Gestor: TLabel;
    PanelDados_Gestor: TPanel;
    procedure PanelFuncionarios_GestorClick(Sender: TObject);
    procedure AbrirForm (FrmClass: TFormClass);
    procedure PanelLogout_GestorClick(Sender: TObject);
    procedure PanelVoos_GestorClick(Sender: TObject);
    procedure PanelRelatorios_GestorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PanelDados_GestorClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGestor: TFormGestor;

implementation

{$R *.dfm}



procedure TFormGestor.FormCreate(Sender: TObject);
begin
  with DataModule1.FDQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT nome FROM usuarios WHERE id_usuario = :id');
    ParamByName('id').AsInteger := DataModule1.UsuarioLogadoID;
    Open;

    if not IsEmpty then
    begin
      LabelName_Gestor.Caption := FieldByName('nome').AsString;

    end
    else
    begin
      LabelName_Gestor.Caption := 'Usuário não encontrado';

    end;
  end;
end;

procedure TFormGestor.PanelDados_GestorClick(Sender: TObject);
begin
  AbrirForm(TFormMeusDados);
end;

procedure TFormGestor.PanelFuncionarios_GestorClick(Sender: TObject);
begin

  AbrirForm(TFormCadastroFuncionaris);

end;

procedure TFormGestor.PanelLogout_GestorClick(Sender: TObject);
begin
   FormLogin.Show;
   Self.Close;
end;

procedure TFormGestor.PanelRelatorios_GestorClick(Sender: TObject);
begin
  AbrirForm(TFormRelatorios);
end;

procedure TFormGestor.PanelVoos_GestorClick(Sender: TObject);
begin
  AbrirForm(TFormCadastroVoos);
end;

procedure TFormGestor.AbrirForm(FrmClass: TFormClass);
var
  Frm: TForm;
begin

  if PanelCentral_Gestor.ControlCount > 0 then
    PanelCentral_Gestor.Controls[0].Free;

  Frm := FrmClass.Create(Self);
  Frm.Parent := PanelCentral_Gestor;
  Frm.BorderStyle := bsNone;
  Frm.Align := alClient;
  Frm.Show;
end;


end.
