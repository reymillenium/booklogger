unit UPuestoDeTrabajo;

interface

uses
  Classes;
  
type
  TPuestoDeTrabajo = Class(TObject)
  private
    FID_Usuario: AnsiString;
    FContrasenna: AnsiString;
    FNombre: AnsiString;
    FPrimerApellido: AnsiString;
    FSegundoApellido: AnsiString;
    FPrivilegios: AnsiString;

  public
    Constructor Create;
    Destructor Destroy;

    //propertys de acceso a los campos del Puesto de Trabajo (5 campos)
	  property ID_Usuario: AnsiString read FID_Usuario write FID_Usuario;
    property Contrasenna: AnsiString read FContrasenna write FContrasenna;
    property Nombre: AnsiString read FNombre write FNombre;
   	property PrimerApellido: AnsiString read FPrimerApellido write FPrimerApellido;
   	property SegundoApellido: AnsiString read FSegundoApellido write FSegundoApellido;
   	property Privilegios: AnsiString read FPrivilegios write FPrivilegios;

end;

implementation

{ TPuestoDeTrabajo }

Constructor TPuestoDeTrabajo.Create;
begin
  inherited Create;
end;

Destructor TPuestoDeTrabajo.Destroy;
begin
   inherited Destroy;
end;

end.
