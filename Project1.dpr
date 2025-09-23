program Project1;

uses
  Vcl.Forms,
  UMgestor in 'Model\UMgestor.pas',
  UCgestor in 'Controller\UCgestor.pas',
  FVfuncionario in 'View\FVfuncionario.pas' {Form3},
  UMfuncionario in 'Model\UMfuncionario.pas',
  UCfuncionario in 'Controller\UCfuncionario.pas',
  FVpassageiros in 'View\FVpassageiros.pas' {Form4},
  UMpassageiros in 'Model\UMpassageiros.pas',
  UCpassageiros in 'Controller\UCpassageiros.pas',
  FVpiloto in 'View\FVpiloto.pas' {Form5},
  UMpiloto in 'Model\UMpiloto.pas',
  UCpiloto in 'Controller\UCpiloto.pas',
  FVlogin in 'View\FVlogin.pas' {Form1},
  FVcadastrofuncionarios in 'View\FVcadastrofuncionarios.pas' {Form6},
  FVgestor in 'View\FVgestor.pas' {Form2},
  FVreservas in 'View\FVreservas.pas' {Form7},
  FVvoo in 'View\FVvoo.pas' {Form8},
  FVcadastrovoo in 'View\Gestor\FVcadastrovoo.pas' {Form9},
  FVpainelvoogestor in 'View\Gestor\FVpainelvoogestor.pas' {Form11},
  FVpainelvoofuncionario in 'View\Funcionário\FVpainelvoofuncionario.pas' {Form12},
  UData in 'Data\UData.pas' {DataModule1: TDataModule},
  FVrelatorios in 'View\Gestor\FVrelatorios.pas' {Form13},
  UMcadastrofuncionario in 'Model\Gestor\UMcadastrofuncionario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  // Só os forms que realmente abrem na inicialização
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm13, Form13);
  // login
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  // gestor
  Application.CreateForm(TForm3, Form3); // funcionario
  Application.CreateForm(TForm4, Form4); // passageiros
  Application.CreateForm(TForm5, Form5); // piloto

  Application.Run;
end.

