unit UDataModuleConexionGeneral;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient;

type
  TDataModuleConexionGeneral = class(TDataModule)
    ADOConnectionGeneral: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleConexionGeneral: TDataModuleConexionGeneral;

implementation

{$R *.dfm}

end.
