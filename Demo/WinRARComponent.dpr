program WinRARComponent;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  RAR_DLL in '..\RAR_DLL.pas',
  Replace in 'Replace.pas' {ReplaceForm};

{$R *.res}

begin
  {$WARN SYMBOL_PLATFORM OFF}
  {$WARN SYMBOL_PLATFORM ON}
  Application.Initialize;

  Application.CreateForm(TForm1, Form1);
  //Application.CreateForm(TReplaceForm, ReplaceForm);
  Application.Run;
end.
