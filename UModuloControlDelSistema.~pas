unit UModuloControlDelSistema;

interface

uses

  Windows, Classes, DB, Dialogs, Winsock, SysUtils, StrUtils,

  {Units echas por mi}
  UPuestodeTrabajo, UCapaSeguridad,

  {DataModules echos por mi.}
  UDataModuleConexionGeneral, UDataModuleControlDelSistema;

type
  TModuloControlDelSistema = Class(TObject)

  
  //*** Procedimientos comunes a todos los módulos ***

  procedure EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet: WideString);
  procedure EliminarConexionConLaBD;
  function ExisteConexionConLaBD: Boolean;
  procedure SalvarBaseDeDatosHostalWare(aCamino: String);
  procedure RestaurarBaseDeDatosHostalWare(aCamino: String);


  function ObtenerIP: String;
  function ObtenerNombrePC: String;
  function ObtenerFechaDelSistema: String;
  function ObtenerHoraDelSistema: String;
  
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



  //** Procedimientos de la pestaña de Trazas del Sistema **

  procedure GuardarTrazaDelSistema(aAccion: AnsiString);
  procedure MostrarTodasLasTrazas;
  function CantidadDeTrazas: Integer;


  //** Procedimientos de seguridad
  function EncriptarSeudoaleatorio(aFrase: String): String;
  function DesencriptarSeudoaleatorio(aFrase: String): String;
    
  private
    { Private declarations }

  public
    { Public declarations }
end;

implementation

uses ConvUtils;

var
 TempCapaSeguridad: TCapaSeguridad;
 FLoggin: TPuestoDeTrabajo;


//------------- *** Procedimientos comunes a todos los módulos *** -------------


procedure TModuloControlDelSistema.EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet: WideString);
var
  CadenaDeConexion: WideString;
begin
  //ConnectionString de PC-1 en el Allende
  //Provider=SQLOLEDB.1;Password=desfasator;Persist Security Info=True;User ID=reinier;Initial Catalog=HCCAP;Data Source=PC-1;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=PC-1;Use Encryption for Data=False;Tag with column collation when possible=False

  //ConnectionString de PC-2 en mi casa
  //Provider=SQLOLEDB.1;Password=desfasator;Persist Security Info=True;User ID=reinier;Initial Catalog=HCCAP;Data Source=PC-2
  
  //Verifico primero de dónde proviene el CoonectionString
  if (aIntranet = 'Casa')
    then
      begin
        //Lleno la cadena de conexión (ConnectionString) con los parámetros de conexión de la PC de mi casa
        CadenaDeConexion:= 'Provider=SQLOLEDB.1;Password='+aContrasenna+';Persist Security Info=True;User ID='+aUsuario+';Initial Catalog='+aNombreBaseDeDatos+';Data Source='+aNombreServer;
      end
        else
          begin
            if (aIntranet = 'Allende')
              then
                begin
                  //Lleno la cadena de conexión (ConnectionString) con los parámetros de conexión de la Intranet del Allende (mi trabajo)
                  CadenaDeConexion:= 'Provider=SQLOLEDB.1;Password='+aContrasenna+';Persist Security Info=True;User ID='+aUsuario+';Initial Catalog='+aNombreBaseDeDatos+';Data Source='+aNombreServer+';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID='+aNombreServer+';Use Encryption for Data=False;Tag with column collation when possible=False';
                end
                  else
                    begin
                      //Lleno la cadena de conexión (ConnectionString) con los parámetros de conexión de otra Intranet  (temporal, no precizado aun)
                      CadenaDeConexion:= 'Provider=SQLOLEDB.1;Password='+aContrasenna+';Persist Security Info=True;User ID='+aUsuario+';Initial Catalog='+aNombreBaseDeDatos+';Data Source='+aNombreServer+';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID='+aNombreServer+';Use Encryption for Data=False;Tag with column collation when possible=False';
                    end;
          end;

  //Le paso la cadena de conexión (ConnectionString) al AdoConnection
  DataModuleConexionGeneral.ADOConnectionGeneral.ConnectionString:= CadenaDeConexion;

  //Me conecto a la BD (lo intento)
  DataModuleConexionGeneral.ADOConnectionGeneral.Open;
end;



procedure TModuloControlDelSistema.EliminarConexionConLaBD;
begin
  //Me desconecto de la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= False;
end;



function TModuloControlDelSistema.ExisteConexionConLaBD: Boolean;
begin
  Result:= DataModuleConexionGeneral.ADOConnectionGeneral.Connected;
end;



function TModuloControlDelSistema.ObtenerIP: String;
var
  p : PHostEnt;
  s : array[0..128] of char;
  p2 : pchar;
begin
  {Get the computer name}
  GetHostName(@s, 128);
  p := GetHostByName(@s);

  {Get the IpAddress}
  p2 := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
  //Memo1.Lines.Add(p2);
  Result:= p2;
end;



function TModuloControlDelSistema.ObtenerNombrePC: String;
var
  p : PHostEnt;
  s : array[0..128] of char;
begin
  {Get the computer name}
  GetHostName(@s, 128);
  p := GetHostByName(@s);
  //Memo1.Lines.Add(p^.h_Name);
  Result:= p^.h_Name;
end;



function TModuloControlDelSistema.ObtenerFechaDelSistema: String;
var 
   stSystemTime : TSystemTime;
begin 
   Windows.GetLocalTime( stSystemTime );
   Result := AnsiLeftStr(   DateTimeToStr( SystemTimeToDateTime( stSystemTime ) ), 10   );
end;



function TModuloControlDelSistema.ObtenerHoraDelSistema: String;
var 
   stSystemTime : TSystemTime;
begin 
   Windows.GetLocalTime( stSystemTime );
   Result := AnsiRightStr(   DateTimeToStr( SystemTimeToDateTime( stSystemTime ) ), 8   );
end;


procedure TModuloControlDelSistema.LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido: AnsiString);
begin
  //Creo el Loggin
  FLoggin:= TPuestoDeTrabajo.Create;
  
  //Relleno sus campos
  //FLoggin.NombrePC:= ObtenerNombrePC;
  //FLoggin.NumeroIP:= ObtenerIP;

  FLoggin.ID_Usuario:= aID_Usuario;
  FLoggin.Privilegios:= aPrivilegio;
  FLoggin.Nombre:= aNombreUsuario;
  FLoggin.PrimerApellido:= aPrimerApellido;
  FLoggin.SegundoApellido:= aSegundoApellido;

  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Active:= False;

  //Le pasamos los parámetros al StoredProc
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vFechaEntrada').Value:= ObtenerFechaDelSistema;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vFechaActual').Value:= ObtenerFechaDelSistema;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vHoraEntrada').Value:= ObtenerHoraDelSistema;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vHoraActual').Value:= ObtenerHoraDelSistema;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vNombrePC').Value:= ObtenerNombrePC;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vNumeroIP').Value:= ObtenerIP;

  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vid_Usuario').Value:= FLoggin.ID_Usuario;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vPrivilegio').Value:= FLoggin.Privilegios;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vNombreUsuario').Value:= FLoggin.Nombre;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vPrimerApellido').Value:= FLoggin.PrimerApellido;
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Parameters.ParamByName('@vSegundoApellido').Value:= FLoggin.SegundoApellido;

  //Aquí se hace la inserción en la BD
  //DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.ADOStoredProcInsertarLoggeado.ExecProc;
end;



procedure TModuloControlDelSistema.ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido: AnsiString);
begin
  //Se Modifican los datos del Loggin
  FLoggin.ID_Usuario:= aNuevoID_Usuario;
  FLoggin.Privilegios:= aNuevoPrivilegio;
  FLoggin.Nombre:= aNuevoNombreUsuario;
  FLoggin.PrimerApellido:= aNuevoPrimerApellido;
  FLoggin.SegundoApellido:= aNuevoSegundoApellido;

  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcModificarLoggeado.Active:= False;

  //Le pasamos los parámetros al StoredProc
  DataModuleControlDelSistema.ADOStoredProcModificarLoggeado.Parameters.ParamByName('@vViejoid_Usuario').Value:= aViejoID_Usuario;
  DataModuleControlDelSistema.ADOStoredProcModificarLoggeado.Parameters.ParamByName('@vNuevoid_Usuario').Value:= FLoggin.ID_Usuario;
  DataModuleControlDelSistema.ADOStoredProcModificarLoggeado.Parameters.ParamByName('@vNuevoPrivilegio').Value:= FLoggin.Privilegios;
  DataModuleControlDelSistema.ADOStoredProcModificarLoggeado.Parameters.ParamByName('@vNuevoNombre').Value:= FLoggin.Nombre;
  DataModuleControlDelSistema.ADOStoredProcModificarLoggeado.Parameters.ParamByName('@vNuevoPrimerApellido').Value:= FLoggin.PrimerApellido;
  DataModuleControlDelSistema.ADOStoredProcModificarLoggeado.Parameters.ParamByName('@vNuevoSegundoApellido').Value:= FLoggin.SegundoApellido;

  //Aquí se hace la modificación en la BD
  //DataModuleControlDelSistema.ADOStoredProcModificarLoggeado.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.ADOStoredProcModificarLoggeado.ExecProc;
  
end;



procedure TModuloControlDelSistema.DesloggearAlUsuario;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcEliminarLoggeado.Active:= False;

  //No hay que pasarle parámetros al StoredProc

  //Aquí se hace la eliminación en la BD
  //DataModuleControlDelSistema.ADOStoredProcEliminarLoggeado.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.ADOStoredProcEliminarLoggeado.ExecProc;

  //Destruyo el Loggin
  FLoggin.Destroy;
end;



procedure TModuloControlDelSistema.BorrarFalsoLoggeo;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcEliminarLoggeado.Active:= False;

  //No hay que pasarle parámetros al StoredProc

  //Aquí se hace la eliminación en la BD
  //DataModuleControlDelSistema.ADOStoredProcEliminarLoggeado.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.ADOStoredProcEliminarLoggeado.ExecProc;
end;

function TModuloControlDelSistema.ElUsuarioEstaLoggeado(aID_Usuario: AnsiString): Boolean;
begin
{  //Se invoca al procedimiento del Módulo correspondiente
  if (FLoggin.ID_Usuario = aID_Usuario)
    then
      Result:= True
        else
          Result:= False;
}

  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcBuscarLoggeadoPorID_USuario.Active:= False;

  //Se le pasa el parámetro al StoredProc
  DataModuleControlDelSistema.ADOStoredProcBuscarLoggeadoPorID_USuario.Parameters.ParamByName('@vID_Usuario').Value:= aID_Usuario;

  //Aquí se hace la selección en la BD
  DataModuleControlDelSistema.ADOStoredProcBuscarLoggeadoPorID_USuario.Open;  //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleControlDelSistema.ADOStoredProcBuscarLoggeadoPorID_USuario.ExecProc;

  //Verifico si está ese usuario loggeado en la BD
  if (DataModuleControlDelSistema.DataSourceBuscarLoggeadoPorID_USuario.DataSet.RecordCount <> 0)
    then
      Result:= True
        else
          Result:= False;
end;



function TModuloControlDelSistema.HayAlguienLoggeado: Boolean;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcSelecLoggeado.Active:= False;

  //No hay que pasarle parámetros al StoredProc

  //Aquí se hace la selección en la BD
  DataModuleControlDelSistema.ADOStoredProcSelecLoggeado.Open;  //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleControlDelSistema.ADOStoredProcSelecLoggeado.ExecProc;

  //Verifico si hay alguien loggeado en la BD
  if (DataModuleControlDelSistema.DataSourceSelecLoggeado.DataSet.RecordCount<>0)
    then
      Result:= True
        else
          Result:= False;
end;



function TModuloControlDelSistema.ElLoggeadoEsAdministrador: Boolean;
begin
  //Se comprueba los privilegios del Loggin
  {if (FLoggin.Privilegios = 'Administrador')
    then
      Result:= True
        else
          Result:= False;
   }
   
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcBuscarAdministradorLoggeado.Active:= False;

  //No le pasamos parámetros al StoredProc

  //Aquí se hace la actualización en la BD
  DataModuleControlDelSistema.ADOStoredProcBuscarAdministradorLoggeado.Open;  //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleControlDelSistema.ADOStoredProcBuscarAdministradorLoggeado.ExecProc;

  //Verifico si el loggeado en la BD es Administrdor
  if (DataModuleControlDelSistema.DataSourceBuscarAdministradorLoggeado.DataSet.RecordCount<>0)
    then
      Result:= True
        else
          Result:= False;
end;


Procedure TModuloControlDelSistema.BuscarAlLoggeado;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcSelecLoggeado.Active:= False;

  //No hay que pasarle parámetros al StoredProc

  //Aquí se hace la selección en la BD
  DataModuleControlDelSistema.ADOStoredProcSelecLoggeado.Open;  //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleControlDelSistema.ADOStoredProcSelecLoggeado.ExecProc;
end;



procedure TModuloControlDelSistema.ActualizarPermanencia;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcActualizarPermanencia.Active:= False;

  //Le pasamos los parámetros al StoredProc
  DataModuleControlDelSistema.ADOStoredProcActualizarPermanencia.Parameters.ParamByName('@vFechaActual').Value:= ObtenerFechaDelSistema;
  DataModuleControlDelSistema.ADOStoredProcActualizarPermanencia.Parameters.ParamByName('@vHoraActual').Value:= ObtenerHoraDelSistema;

  //Aquí se hace la actualización en la BD
  //DataModuleControlDelSistema.ADOStoredProcActualizarPermanencia.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.ADOStoredProcActualizarPermanencia.ExecProc;
end;


function TModuloControlDelSistema.EncriptarSeudoaleatorio(aFrase: String): String;
begin
  //Accedo a la capa de seguridad para encriptar
  TempCapaSeguridad:= TCapaSeguridad.Create;
  Result:= TempCapaSeguridad.EncriptarSeudoaleatorio(aFrase);
  TempCapaSeguridad.Destroy;
end;



function TModuloControlDelSistema.DesencriptarSeudoaleatorio(aFrase: String): String;
begin
  //Accedo a la capa de seguridad para desencriptar
  TempCapaSeguridad:= TCapaSeguridad.Create;
  Result:= TempCapaSeguridad.DesencriptarSeudoaleatorio(aFrase);
  TempCapaSeguridad.Destroy;
end;



//*** ---------- Pestaña de Puestos de Trabajo *** ----------------------------


procedure TModuloControlDelSistema.MostrarPuestosDeTrabajo;
begin
  DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo.Active:= False;
  DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo.Open;
  DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo.ExecProc;
end;



Procedure TModuloControlDelSistema.BuscarPuestoDeTrabajo(aID_Usuario: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcBuscarPuestoDeTrabajo.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleControlDelSistema.ADOStoredProcBuscarPuestoDeTrabajo.Parameters.ParamByName('@vid_Usuario').Value:= aID_Usuario;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleControlDelSistema.ADOStoredProcBuscarPuestoDeTrabajo.Open; //Genera datos de respuesta, por eso se pone
  DataModuleControlDelSistema.ADOStoredProcBuscarPuestoDeTrabajo.ExecProc;
end;



function TModuloControlDelSistema.ExisteElPuestoDeTrabajoConUsuario(id_Usuario: String): Boolean;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcExistePuestoDeTrabajo.Active:= False;

  //Le pasamos el usuario del Puesto de Trabajo, al StoredProc.
  DataModuleControlDelSistema.ADOStoredProcExistePuestoDeTrabajo.Parameters.ParamByName('@vid_Usuario').Value:= id_Usuario;

  //Aquí se hace la búsqueda en la BD
  DataModuleControlDelSistema.ADOStoredProcExistePuestoDeTrabajo.Open;
  DataModuleControlDelSistema.ADOStoredProcExistePuestoDeTrabajo.ExecProc;

  //Aquí se verifica si se halló algún Puesto de Trabajo
  if (DataModuleControlDelSistema.DataSourceExistePuestoDeTrabajo.DataSet.RecordCount<>0)
    then
      Result:= True
        else
          Result:= False;
end;



procedure TModuloControlDelSistema.SelecAdministrador(id_Usuario: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcSelecAdministrador.Active:= False;

  //Le pasamos el usuario del Puesto de Trabajo, al StoredProc.
  DataModuleControlDelSistema.ADOStoredProcSelecAdministrador.Parameters.ParamByName('@vid_Usuario').Value:= id_Usuario;

  //Aquí se hace la búsqueda en la BD
  DataModuleControlDelSistema.ADOStoredProcSelecAdministrador.Open;
  DataModuleControlDelSistema.ADOStoredProcSelecAdministrador.ExecProc;
end;



function TModuloControlDelSistema.ElTrabajadorEsAdministrador: Boolean;
begin
  //Aquí se verifica si el trabajador loggeado es Administrador o no
  if (DataModuleControlDelSistema.DataSourceSelecAdministrador.DataSet.RecordCount<>0)
    then
      Result:= True
        else
          Result:= False;
end;



procedure TModuloControlDelSistema.InsertarPuestoDeTrabajo(aPuestoDeTrabajo: TPuestoDeTrabajo);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcInsertarPuestoDeTrabajo.Active:= False;

  //Le pasamos los parámetros al StoredProc
  DataModuleControlDelSistema.ADOStoredProcInsertarPuestoDeTrabajo.Parameters.ParamByName('@vid_Usuario').Value:= aPuestoDeTrabajo.ID_Usuario;
  DataModuleControlDelSistema.ADOStoredProcInsertarPuestoDeTrabajo.Parameters.ParamByName('@vContrasenna').Value:= aPuestoDeTrabajo.Contrasenna;
  DataModuleControlDelSistema.ADOStoredProcInsertarPuestoDeTrabajo.Parameters.ParamByName('@vNombre').Value:= aPuestoDeTrabajo.Nombre;
  DataModuleControlDelSistema.ADOStoredProcInsertarPuestoDeTrabajo.Parameters.ParamByName('@vPrimerApellido').Value:= aPuestoDeTrabajo.PrimerApellido;
  DataModuleControlDelSistema.ADOStoredProcInsertarPuestoDeTrabajo.Parameters.ParamByName('@vSegundoApellido').Value:= aPuestoDeTrabajo.SegundoApellido;
  DataModuleControlDelSistema.ADOStoredProcInsertarPuestoDeTrabajo.Parameters.ParamByName('@vPrivilegio').Value:= aPuestoDeTrabajo.Privilegios;

  //Aquí se hace la inserción en la BD
  //DataModuleControlDelSistema.ADOStoredProcInsertarUsuario.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.ADOStoredProcInsertarPuestoDeTrabajo.ExecProc;
end;



procedure TModuloControlDelSistema.ModificarPuestoDeTrabajo(aViejoID_Usuario: String; aNuevoPuestoDeTrabajo: TPuestoDeTrabajo);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcModificarPuestoDeTrabajo.Active:= False;

  //Le pasamos los parámetros al StoredProc
  DataModuleControlDelSistema.ADOStoredProcModificarPuestoDeTrabajo.Parameters.ParamByName('@vViejoid_Usuario').Value:= aViejoID_Usuario;
  DataModuleControlDelSistema.ADOStoredProcModificarPuestoDeTrabajo.Parameters.ParamByName('@vNuevoid_Usuario').Value:= aNuevoPuestoDeTrabajo.ID_Usuario;
  DataModuleControlDelSistema.ADOStoredProcModificarPuestoDeTrabajo.Parameters.ParamByName('@vNuevaContrasenna').Value:= aNuevoPuestoDeTrabajo.Contrasenna;
  DataModuleControlDelSistema.ADOStoredProcModificarPuestoDeTrabajo.Parameters.ParamByName('@vNuevoNombre').Value:= aNuevoPuestoDeTrabajo.Nombre;
  DataModuleControlDelSistema.ADOStoredProcModificarPuestoDeTrabajo.Parameters.ParamByName('@vNuevoPrimerApellido').Value:= aNuevoPuestoDeTrabajo.PrimerApellido;
  DataModuleControlDelSistema.ADOStoredProcModificarPuestoDeTrabajo.Parameters.ParamByName('@vNuevoSegundoApellido').Value:= aNuevoPuestoDeTrabajo.SegundoApellido;
  DataModuleControlDelSistema.ADOStoredProcModificarPuestoDeTrabajo.Parameters.ParamByName('@vNuevoPrivilegio').Value:= aNuevoPuestoDeTrabajo.Privilegios;

  //Aquí se hace la modificación en la BD
  //DataModule1.ADOStoredProcModificarPuestoDeTrabajo.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.ADOStoredProcModificarPuestoDeTrabajo.ExecProc;
end;



procedure TModuloControlDelSistema.EliminarPuestoDeTrabajo(aID_Usuario:AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcEliminarPuestoDeTrabajo.Active:= False;

  //Le pasamos los parámetros al StoreProcedure.
  DataModuleControlDelSistema.ADOStoredProcEliminarPuestoDeTrabajo.Parameters.ParamByName('@vid_Usuario').Value:= aID_Usuario;

  //Aquí se hace la eliminación en la BD
  //DataModuleControlDelSistema.ADOStoredProcEliminarUsuario.Open;
  DataModuleControlDelSistema.ADOStoredProcEliminarPuestoDeTrabajo.ExecProc;
end;




function TModuloControlDelSistema.CantidadDePuestosDeTrabajo: Integer;
begin
  //Cuento la cantidad de Puestos de Trabajo que existen
  if (DataModuleControlDelSistema.DataSourceSelecPuestosDeTrabajo.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleControlDelSistema.DataSourceSelecPuestosDeTrabajo.DataSet.RecordCount
        else
          Result:= 0;
end;

  //---------- ** Pestaña de Trazas del Sistema ** -----------------------------

procedure TModuloControlDelSistema.GuardarTrazaDelSistema(aAccion: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Active:= False;
  
  //Le pasamos los parámetros al StoredProc
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vFecha').Value:= ObtenerFechaDelSistema;
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vHora').Value:= ObtenerHoraDelSistema;
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vNombrePC').Value:= ObtenerNombrePC;
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vNumeroIP').Value:= ObtenerIP;

  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vid_Usuario').Value:= FLoggin.ID_Usuario;
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vPrivilegio').Value:= FLoggin.Privilegios;
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vNombreUsuario').Value:= FLoggin.Nombre;
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vPrimerApellido').Value:= FLoggin.PrimerApellido;
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vSegundoApellido').Value:= FLoggin.SegundoApellido;

  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Parameters.ParamByName('@vAccionRealizada').Value:= aAccion;

  //Aquí se hace la inserción en la BD
  //DataModuleControlDelSistema.ADOStoredProcGuardarTraza.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.ADOStoredProcGuardarTraza.ExecProc;
end;



procedure TModuloControlDelSistema.MostrarTodasLasTrazas;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas.Active:= False;

  DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas.ExecProc;
end;



procedure TModuloControlDelSistema.SalvarBaseDeDatosHostalWare(aCamino: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.spSalvarBaseDeDatosHostalWare.Active:= False;
  
  //Le pasamos los parámetros al StoredProc
  DataModuleControlDelSistema.spSalvarBaseDeDatosHostalWare.Parameters.ParamByName('@vCamino').Value:= aCamino;

  //Aquí se hace la Salva de la BD
  //DataModuleControlDelSistema.spSalvarBaseDeDatosHostalWare.Open;  //<- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.spSalvarBaseDeDatosHostalWare.ExecProc;
end;



procedure TModuloControlDelSistema.RestaurarBaseDeDatosHostalWare(
  aCamino: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleControlDelSistema.spRestaurarBaseDeDatosHostalWare.Active:= False;
  
  //Le pasamos los parámetros al StoredProc
  DataModuleControlDelSistema.spRestaurarBaseDeDatosHostalWare.Parameters.ParamByName('@vCamino').Value:= aCamino;

  //Aquí se hace la Salva de la BD
  //DataModuleControlDelSistema.spRestaurarBaseDeDatosHostalWare.Open;  //<- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleControlDelSistema.spRestaurarBaseDeDatosHostalWare.ExecProc;
end;



function TModuloControlDelSistema.CantidadDeTrazas: Integer;
begin
  //Cuento la cantidad de trazas totales que existen
  if (DataModuleControlDelSistema.DataSourceSelecTodasLasTrazas.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleControlDelSistema.DataSourceSelecTodasLasTrazas.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloControlDelSistema.NombreCompletoDelLoggeado: AnsiString;
begin
  //Devuelvo el nombre completo del Usuario Loggeado
  Result:= FLoggin.Nombre + ' ' + FLoggin.PrimerApellido + ' ' + FLoggin.SegundoApellido;
end;



end.
