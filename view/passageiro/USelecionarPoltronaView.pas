unit USelecionarPoltronaView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UVoo, UUsuario,
  Vcl.Imaging.jpeg;

type
  TFormSelecionarPoltrona = class(TForm)
    imgAssentos: TImage;
    pnlMain: TPanel;
    cbxZona: TComboBox;
    cbxAssento: TComboBox;
    pnlConfirmar: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxZonaChange(Sender: TObject);
    procedure pnlConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    voo: TVoo;
    usuario: TUsuario;
    listaZonaA: TStringList;
    listaZonaB: TStringList;
    listaZonaC: TStringList;
    listaZonaD: TStringList;
    procedure loadListas;
    procedure safeDelete(lista: TStringList; poltrona: String);
  public
    { Public declarations }
    class procedure open(owner: TForm; aUsuario: TUsuario; aVoo: TVoo);
    constructor create(owner: TForm; aUsuario: TUsuario; aVoo: TVoo);
  end;

var
  FormSelecionarPoltrona: TFormSelecionarPoltrona;

implementation

uses UAeronaveController, UVooController, UAeronave;

{$R *.dfm}

{ TFormSelecionarPoltrona }

procedure TFormSelecionarPoltrona.cbxZonaChange(Sender: TObject);
begin
  if cbxZona.Text = 'Zona A' then begin
    cbxAssento.Items := listaZonaA;
  end else if cbxZona.Text = 'Zona B' then begin
    cbxAssento.Items := listaZonaB;
  end else if cbxZona.Text = 'Zona C' then begin
    cbxAssento.Items := listaZonaC;
  end else begin
    cbxAssento.Items := listaZonaD;
  end;
end;

constructor TFormSelecionarPoltrona.create(owner: TForm; aUsuario: TUsuario; aVoo: TVoo);
begin
  inherited Create(owner);
  usuario := aUsuario;
  voo := aVoo;
end;

procedure TFormSelecionarPoltrona.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  listaZonaA.Free;
  listaZonaB.Free;
  listaZonaC.Free;
  listaZonaD.Free;
end;

procedure TFormSelecionarPoltrona.FormCreate(Sender: TObject);
begin
  listaZonaA := TStringList.Create;
  listaZonaB := TStringList.Create;
  listaZonaC := TStringList.Create;
  listaZonaD := TStringList.Create;
  loadListas;
end;

procedure TFormSelecionarPoltrona.loadListas;
var
  aeronave: TAeronave;
  ocupadas: TStringList;
  I: Integer;
begin
  aeronave := TAeronaveController.getAeronave(voo.getIdAeronave);

  for I := 1 to (aeronave.getPassageirosMax div 4) do begin
    listaZonaA.Add(Format('%d-A', [i]));
    listaZonaB.Add(Format('%d-B', [i]));
    listaZonaC.Add(Format('%d-C', [i]));
    listaZonaD.Add(Format('%d-D', [i]));
  end;

  ocupadas := TVooController.getPoltronasOcupadas(voo.getId);
  for I := 0 to ocupadas.Count - 1 do begin
    SafeDelete(listaZonaA, ocupadas[I]);
    SafeDelete(listaZonaB, ocupadas[I]);
    SafeDelete(listaZonaC, ocupadas[I]);
    SafeDelete(listaZonaD, ocupadas[I]);
  end;
  ocupadas.Free;

  cbxZona.ItemIndex := 0;
  cbxAssento.Items := listaZonaA;
end;

class procedure TFormSelecionarPoltrona.open(owner: TForm; aUsuario: TUsuario; aVoo: TVoo);
var
  form: TFormSelecionarPoltrona;
begin
  form := TFormSelecionarPoltrona.create(owner, aUsuario, aVoo);
  form.ShowModal;
end;

procedure TFormSelecionarPoltrona.pnlConfirmarClick(Sender: TObject);
begin
  try
    TVooController.conectarPassageiro(usuario, voo, cbxAssento.Text);
  except
    on e: Exception do begin
      ShowMessage(e.Message);
    end;
  end;
  self.Close;
end;

procedure TFormSelecionarPoltrona.safeDelete(lista: TStringList; poltrona: String);
var
  idx: Integer;
begin
  idx := lista.IndexOf(poltrona);
  if idx <> -1 then begin
    lista.Delete(idx);
  end;
end;

end.
