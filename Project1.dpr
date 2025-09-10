program Project1;

uses
  Vcl.Forms,
  AeroOne in 'AeroOne.pas' {Form1},
  UMgestor in 'Model\UMgestor.pas',
  FVgestor in 'View\FVgestor.pas' {Form2},
  UCgestor in 'Controller\UCgestor.pas',
  FVfuncionario in 'View\FVfuncionario.pas' {Form3},
  UMfuncionario in 'Model\UMfuncionario.pas',
  UCfuncionario in 'Controller\UCfuncionario.pas',
  FVpassageiros in 'View\FVpassageiros.pas' {Form4},
  UMpassageiros in 'Model\UMpassageiros.pas',
  UCpassageiros in 'Controller\UCpassageiros.pas',
  FVpiloto in 'View\FVpiloto.pas' {Form5},
  UMpiloto in 'Model\UMpiloto.pas',
  UCpiloto in 'Controller\UCpiloto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
