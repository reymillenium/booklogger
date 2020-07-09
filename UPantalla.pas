unit UPantalla;

interface

uses
  Classes;
  
type
  TPantalla = Class(TObject)
  private
    FAnchoOriginalPantalla: Integer;
    FAltoOriginalPantalla: Integer;


  public
    Constructor Create;
    Destructor Destroy;

    //propertys de acceso a los campos del Puesto de Trabajo (5 campos)
	  property AnchoOriginalPantalla: Integer read FAnchoOriginalPantalla write FAnchoOriginalPantalla;
    property AltoOriginalPantalla: Integer read FAltoOriginalPantalla write FAltoOriginalPantalla;


end;

implementation

{ TPuestoDeTrabajo }

Constructor TPantalla.Create;
begin
  inherited Create;
end;

Destructor TPantalla.Destroy;
begin
   inherited Destroy;
end;

end.
