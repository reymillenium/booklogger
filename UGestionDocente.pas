unit UGestionDocente;

interface

uses
  Classes, DB, Dialogs,

  {Units echas por mi, clases entidad}
  UPuestodeTrabajo,
  UPlanilla1164_01,  

  {Módulos del Sistema HCCAP (Units) echos por mi}
  UModuloControlDelSistema, UModuloInformes;

type
  TGestionDocente = Class(TObject)

  
//***********************************************************
// ***  Procedimientos del Módulo de Control del Sistema  ***
//***********************************************************

  //** Procedimientos Imprescindibles **
  procedure EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet: WideString);
  procedure EliminarConexionConLaBD;
  function ExisteConexionConLaBD: Boolean;
  procedure SalvarBaseDeDatosHostalWare(aCamino: String);
  procedure RestaurarBaseDeDatosHostalWare(aCamino: String);
  
  procedure LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido: AnsiString);
  procedure ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido: AnsiString);
  procedure DesloggearAlUsuario;
  procedure BorrarFalsoLoggeo;
  procedure BuscarAlLoggeado;
  procedure ActualizarPermanencia;
  function ElUsuarioEstaLoggeado(aID_Usuario: AnsiString): Boolean;
  function HayAlguienLoggeado: Boolean;
  function ElLoggeadoEsAdministrador: Boolean;
  function NombreCompletoDelLoggeado: AnsiString;

  
  // ** Procedimientos agregados a última hora a esta Unit
  function ObtenerFechaDelSistema: String;
  function ObtenerHoraDelSistema: String;

  //** Procedimientos de la pestaña de Puestos de Trabajo **

  procedure MostrarPuestosDeTrabajo;
  Procedure BuscarPuestoDeTrabajo(aID_Usuario: String);
  procedure SelecAdministrador(id_Usuario: String);

  function ExisteElPuestoDeTrabajoConUsuario(id_Usuario: String): Boolean;
  function ElTrabajadorEsAdministrador: Boolean;
  function CantidadDePuestosDeTrabajo: Integer;

  procedure InsertarPuestoDeTrabajo(aPuestoDeTrabajo: TPuestoDeTrabajo);
  procedure ModificarPuestoDeTrabajo(aViejoID_Usuario: String; aNuevoPuestoDeTrabajo: TPuestoDeTrabajo);
  procedure EliminarPuestoDeTrabajo(aID_Usuario:AnsiString);

  function EncriptarSeudoaleatorio(aFrase: String): String;
  function DesencriptarSeudoaleatorio(aFrase: String): String;


  //** Procedimientos de la pestaña de Trazas del Sistema **
  procedure GuardarTrazaDelSistema(aAccion: AnsiString);
  procedure MostrarTodasLasTrazas;
  function CantidadDeTrazas: Integer;



//************************************************
// ***  Procedimientos del Módulo de Informes  ***
//************************************************

  //** Procedimientos de la pestaña de la Planilla 1164-01 **
  procedure MostrarPlanillas1164_01Todas;
  procedure MostrarPlanillas1164_01PorAnno(aAnno: Integer);
  procedure MostrarPlanillas1164_01PorProvincia(aProvincia: AnsiString);
  procedure MostrarPlanillas1164_01PorProvinciaYAnno(aProvincia: AnsiString; aAnno: Integer);

  function CantidadPlanillas1164_01Todas: Integer;
  function CantidadPlanillas1164_01PorAnno: Integer;
  function CantidadPlanillas1164_01PorProvincia: Integer;
  function CantidadPlanillas1164_01PorProvinciaYAnno: Integer;
    

  procedure BuscarPlanilla1164_01PorCodigoYAnno(aCodigoCentroInformante: AnsiString; aAnno: Integer);
  procedure BuscarPlanilla1164_01PorID_Planilla(aID_Planilla: Integer);
  
  function ExistePlanilla1164_01PorCodigoYAnno: Boolean;

  procedure MostrarSumatoriaPlanillas1164_01PorAnno(aAnno: Integer);
  
  procedure InsertarPlanilla1164_01(aPlanilla: TPlanilla1164_01);
  procedure EliminarPlanilla1164_01PorID_Planilla(aID_Planilla: Integer);
  procedure ModificarPlanilla1164_01PorID_Planilla(aPlanilla: TPlanilla1164_01);
  
  procedure MostrarMunicipiosParaPlanilla1164_01PorNombreProvincia(aNombreProvincia: AnsiString);
  procedure BuscarID_MunicipioParaPlanilla1164_01PorNombreMunicipio(aNombreMunicipio: AnsiString);

  private
    { Private declarations }

  public
    { Public declarations }

    

end;

implementation

uses SysUtils, ConvUtils;

var
 ModuloControlDelSistema: TModuloControlDelSistema;
 ModuloInformes: TModuloInformes;


//---------------- *** Módulo de Control del Sistema *** ------------------------


  //** Procedimientos Imprescindibles **

procedure TGestionDocente.EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet: WideString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet);
end;



procedure TGestionDocente.EliminarConexionConLaBD;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.EliminarConexionConLaBD;
end;



function TGestionDocente.ExisteConexionConLaBD: Boolean;
begin
  //Se invoca a la función del del Módulo correspondiente
  Result:= ModuloControlDelSistema.ExisteConexionConLaBD;
end;



function TGestionDocente.EncriptarSeudoaleatorio(aFrase: String): String;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.EncriptarSeudoaleatorio(aFrase)
end;



function TGestionDocente.DesencriptarSeudoaleatorio(aFrase: String): String;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.DesencriptarSeudoaleatorio(aFrase)
end;



procedure TGestionDocente.LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido);
end;



procedure TGestionDocente.ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido);
end;



procedure TGestionDocente.DesloggearAlUsuario;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.DesloggearAlUsuario;
end;



procedure TGestionDocente.BorrarFalsoLoggeo;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.BorrarFalsoLoggeo;
end;



function TGestionDocente.ElUsuarioEstaLoggeado(aID_Usuario: AnsiString): Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.ElUsuarioEstaLoggeado(aID_Usuario)
end;



function TGestionDocente.HayAlguienLoggeado: Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.HayAlguienLoggeado;
end;



function TGestionDocente.ElLoggeadoEsAdministrador: Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.ElLoggeadoEsAdministrador;
end;



Procedure TGestionDocente.BuscarAlLoggeado;
begin
  //Se invoca a la función del Módulo correspondiente
  ModuloControlDelSistema.BuscarAlLoggeado;
end;



procedure TGestionDocente.ActualizarPermanencia;
begin
  //Se invoca a la función del Módulo correspondiente
  ModuloControlDelSistema.ActualizarPermanencia;
end;



  // ** Procedimientos agregados a última hora a esta Unit
function TGestionDocente.ObtenerFechaDelSistema;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.ObtenerFechaDelSistema;
end;



function TGestionDocente.ObtenerHoraDelSistema: String;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.ObtenerHoraDelSistema;
end;



  //** Procedimientos de la pestaña de Puestos de Trabajo **

procedure TGestionDocente.MostrarPuestosDeTrabajo;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.MostrarPuestosDeTrabajo;
end;



Procedure TGestionDocente.BuscarPuestoDeTrabajo(aID_Usuario: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.BuscarPuestoDeTrabajo(aID_Usuario);
end;



function TGestionDocente.ExisteElPuestoDeTrabajoConUsuario(id_Usuario: String): Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.ExisteElPuestoDeTrabajoConUsuario(id_Usuario);
end;



procedure TGestionDocente.SelecAdministrador(id_Usuario: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.SelecAdministrador(id_Usuario);
end;



function TGestionDocente.ElTrabajadorEsAdministrador: Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.ElTrabajadorEsAdministrador;
end;


procedure TGestionDocente.InsertarPuestoDeTrabajo(aPuestoDeTrabajo: TPuestoDeTrabajo);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.InsertarPuestoDeTrabajo(aPuestoDeTrabajo);
end;



procedure TGestionDocente.ModificarPuestoDeTrabajo(aViejoID_Usuario: String; aNuevoPuestoDeTrabajo: TPuestoDeTrabajo);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.ModificarPuestoDeTrabajo(aViejoID_Usuario, aNuevoPuestoDeTrabajo);
end;



procedure TGestionDocente.EliminarPuestoDeTrabajo(aID_Usuario:AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.EliminarPuestoDeTrabajo(aID_Usuario);
end;



function TGestionDocente.CantidadDePuestosDeTrabajo: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.CantidadDePuestosDeTrabajo;
end;

  //** Procedimientos de la pestaña de Trazas del Sistema **

procedure TGestionDocente.GuardarTrazaDelSistema(aAccion: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.GuardarTrazaDelSistema(aAccion);
end;



procedure TGestionDocente.MostrarTodasLasTrazas;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.MostrarTodasLasTrazas;
end;



procedure TGestionDocente.SalvarBaseDeDatosHostalWare(aCamino: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.SalvarBaseDeDatosHostalWare(aCamino);
end;



procedure TGestionDocente.RestaurarBaseDeDatosHostalWare(aCamino: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.RestaurarBaseDeDatosHostalWare(aCamino);
end;



function TGestionDocente.CantidadDeTrazas: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.CantidadDeTrazas;
end;



function TGestionDocente.NombreCompletoDelLoggeado: AnsiString;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.NombreCompletoDelLoggeado;
end;



procedure TGestionDocente.MostrarPlanillas1164_01Todas;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.MostrarPlanillas1164_01Todas;
end;



procedure TGestionDocente.InsertarPlanilla1164_01(aPlanilla: TPlanilla1164_01);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.InsertarPlanilla1164_01(aPlanilla);
end;



procedure TGestionDocente.MostrarMunicipiosParaPlanilla1164_01PorNombreProvincia(aNombreProvincia: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.MostrarMunicipiosParaPlanilla1164_01PorNombreProvincia(aNombreProvincia);
end;



procedure TGestionDocente.BuscarPlanilla1164_01PorCodigoYAnno(aCodigoCentroInformante: AnsiString; aAnno: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.BuscarPlanilla1164_01PorCodigoYAnno(aCodigoCentroInformante, aAnno);
end;



function TGestionDocente.ExistePlanilla1164_01PorCodigoYAnno: Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloInformes.ExistePlanilla1164_01PorCodigoYAnno;
end;



function TGestionDocente.CantidadPlanillas1164_01PorAnno: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloInformes.CantidadPlanillas1164_01PorAnno;
end;



function TGestionDocente.CantidadPlanillas1164_01PorProvincia: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloInformes.CantidadPlanillas1164_01PorProvincia;
end;



function TGestionDocente.CantidadPlanillas1164_01PorProvinciaYAnno: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloInformes.CantidadPlanillas1164_01PorProvinciaYAnno;
end;



function TGestionDocente.CantidadPlanillas1164_01Todas: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloInformes.CantidadPlanillas1164_01Todas;
end;



procedure TGestionDocente.MostrarPlanillas1164_01PorAnno(aAnno: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.MostrarPlanillas1164_01PorAnno(aAnno);
end;



procedure TGestionDocente.MostrarPlanillas1164_01PorProvincia(aProvincia: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.MostrarPlanillas1164_01PorProvincia(aProvincia);
end;



procedure TGestionDocente.MostrarPlanillas1164_01PorProvinciaYAnno(aProvincia: AnsiString; aAnno: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.MostrarPlanillas1164_01PorProvinciaYAnno(aProvincia, aAnno);
end;



procedure TGestionDocente.EliminarPlanilla1164_01PorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.EliminarPlanilla1164_01PorID_Planilla(aID_Planilla);
end;



procedure TGestionDocente.BuscarPlanilla1164_01PorID_Planilla(aID_Planilla: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.BuscarPlanilla1164_01PorID_Planilla(aID_Planilla);
end;



procedure TGestionDocente.BuscarID_MunicipioParaPlanilla1164_01PorNombreMunicipio(aNombreMunicipio: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.BuscarID_MunicipioParaPlanilla1164_01PorNombreMunicipio(aNombreMunicipio);
end;



procedure TGestionDocente.ModificarPlanilla1164_01PorID_Planilla(aPlanilla: TPlanilla1164_01);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.ModificarPlanilla1164_01PorID_Planilla(aPlanilla);
end;



procedure TGestionDocente.MostrarSumatoriaPlanillas1164_01PorAnno(aAnno: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloInformes.MostrarSumatoriaPlanillas1164_01PorAnno(aAnno);
end;

end.
