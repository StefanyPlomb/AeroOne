unit UPilotoIniciadoVooView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFormPilotoIniciadoVooView = class(TForm)
    pnlLateral: TPanel;
    pnlVoltar: TPanel;
    imgVoltarRed: TImage;
    pnlMainFrame: TPanel;
    Panel1: TPanel;
    Timer1: TTimer;
    pnlTimer: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel17: TPanel;
    Label1: TLabel;
    pnlIniciar: TPanel;
    imgIniciarGreen: TImage;
    pnlParar: TPanel;
    imgPararRed: TImage;
    imgVoltarWhite: TImage;
    ImgIniciarWhite: TImage;
    ImgPararWhite: TImage;
    Panel2: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure imgPararWhiteClick(Sender: TObject);
    procedure imgIniciarWhiteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPilotoIniciadoVooView: TFormPilotoIniciadoVooView;
  Segundos: Integer;

implementation

{$R *.dfm}

procedure TFormPilotoIniciadoVooView.imgIniciarWhiteClick(Sender: TObject);
begin
    Timer1.Enabled := True;
end;

procedure TFormPilotoIniciadoVooView.imgPararWhiteClick(Sender: TObject);
begin
    Timer1.Enabled := False;
end;

procedure TFormPilotoIniciadoVooView.Timer1Timer(Sender: TObject);
var
  h, m, s: Integer;
begin
  Inc(Segundos);

  h := Segundos div 3600;
  m := (Segundos mod 3600) div 60;
  s := Segundos mod 60;

  pnlTimer.Caption := Format('%.2d:%.2d:%.2d', [h, m, s]);
end;

end.
