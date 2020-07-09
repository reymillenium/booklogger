unit UCapaSeguridad;

interface
uses
  Classes, Windows;

type

  TCapaSeguridad = class
    private
    public
      constructor Create();
      destructor Destroy; override;

      function EncriptarSeudoaleatorio(aFrase: String): String;
      function DesencriptarSeudoaleatorio(aFrase: String): String;
  end;



implementation

uses
  SysUtils,
  Forms;

{ TCapaSeguridad }
constructor TCapaSeguridad.Create();
begin
  inherited Create;
end;


destructor TCapaSeguridad.Destroy;
begin
  inherited Destroy;
end;


//Encripta una frase
function TCapaSeguridad.EncriptarSeudoaleatorio(aFrase: String): String;
var
  aa: integer;
  clave: Integer;
begin
  clave:= 89213478;

  Result:= '';
  RandSeed:=clave;
  for aa:=1 to Length(aFrase) do
    Result:=Result+Chr(Byte(aFrase[aa]) xor random(256));
end;


//Desencripta una frase
function TCapaSeguridad.DesencriptarSeudoaleatorio(aFrase: String): String;
var
  aa: integer;
  clave: integer;
begin
  clave:= 89213478;

  Result:= '';
  RandSeed:=clave;
  for aa:=1 to Length(aFrase) do
    Result:=Result+Chr(Byte(aFrase[aa]) xor random(256));
end;



end.
