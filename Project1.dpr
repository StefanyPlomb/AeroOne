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
  FVreservas in 'View\FVreservas.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  // Só os forms que realmente abrem na inicialização
  Application.CreateForm(TForm2, Form2); // gestor
  Application.CreateForm(TForm1, Form1); // login
  Application.CreateForm(TForm3, Form3); // funcionario
  Application.CreateForm(TForm4, Form4); // passageiros
  Application.CreateForm(TForm5, Form5); // piloto

  Application.Run;
end.

