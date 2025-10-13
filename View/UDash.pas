unit UDash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormDash = class(TForm)
    PanelDash_AeroMo: TPanel;
    LabelDash_Aeromo: TLabel;
    PanelDashCheck_Aeromo: TPanel;
    LabelDashCheck_Aeromo: TLabel;
    NumDashCheck_Aeromo: TLabel;
    PanelDashVoo_Aeromo: TPanel;
    LabelDashVoo_Aeromo: TLabel;
    NumDashVoo_Aeromo: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDash: TFormDash;

implementation

{$R *.dfm}

end.
