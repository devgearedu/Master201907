program Week3TestTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  VariableForm in '..\VariableTest\VariableForm.pas',
  ConditionForm in '..\ConditionTest\ConditionForm.pas' {frmCondition},
  TestVariableForm in 'TestVariableForm.pas',
  TestConditionForm in 'TestConditionForm.pas',
  TestLoopForm in 'TestLoopForm.pas',
  LoopForm in '..\LoopTest\LoopForm.pas' {frmLoop},
  ConditionModule in '..\ConditionTest\ConditionModule.pas' {dmDB: TDataModule},
  ServerMethodClient in '..\LoopTest\ServerMethodClient.pas',
  VariableDllUnit in '..\VariableTest\VariableDllUnit.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

