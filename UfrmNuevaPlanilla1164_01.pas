unit UfrmNuevaPlanilla1164_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils,

  UPlanilla1164_01, UGestionDocente, LbButton,

  //DataModules
  UDataModuleInformes,

  //Clases entidad confeccionadas por mí
  UFicheroPlanilla1164_01,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, AdvGroupBox, AdvOfficePager, AdvOfficePagerStylers, DBCtrls,
  ComCtrls, AdvOfficeComboBox, AdvGlassButton, CabSTComps, AppEvnts;

  
type
  TfrmNuevaPlanilla1164_01 = class(TForm)
    lblNombre: TLabel;
    edtNombreCentroInformante: TEdit;
    btnAceptar: TLbButton;
    btnLimpiar: TLbButton;
    btnCancelar: TLbButton;
    Label1: TLabel;
    edtCodigoCentroInformante: TEdit;
    Label4: TLabel;
    edtNombreDirectorEconomico: TEdit;
    Label5: TLabel;
    edtNombreRectorODirector: TEdit;
    lblProvincia: TLabel;
    DBlucmbxMunicipio: TDBLookupComboBox;
    lblMunicipio: TLabel;
    dtpAnno: TDateTimePicker;
    lblAnnoParte1PlanillasProvinciales: TLabel;
    Memo5: TMemo;
    Memo2: TMemo;
    edtDoctoresXCantParticip: TEdit;
    edtDoctoresXCantGrad: TEdit;
    Memo1: TMemo;
    Memo3: TMemo;
    edtDoctoresXTotal: TEdit;
    Edit7: TEdit;
    Memo4: TMemo;
    Memo32: TMemo;
    Memo33: TMemo;
    Memo34: TMemo;
    Memo35: TMemo;
    Memo36: TMemo;
    Memo37: TMemo;
    Memo38: TMemo;
    Memo39: TMemo;
    Memo40: TMemo;
    Memo41: TMemo;
    Memo42: TMemo;
    Memo43: TMemo;
    Memo44: TMemo;
    Memo45: TMemo;
    Memo46: TMemo;
    Memo47: TMemo;
    Memo48: TMemo;
    Memo49: TMemo;
    Memo50: TMemo;
    Memo51: TMemo;
    Memo52: TMemo;
    Memo53: TMemo;
    Memo54: TMemo;
    Memo55: TMemo;
    Memo56: TMemo;
    Memo57: TMemo;
    edtDiplomadosXCantActivUnivMun: TEdit;
    Edit82: TEdit;
    edtSubTotal2XCantGradProfTP: TEdit;
    edtSubTotal2XCantGradProfTC: TEdit;
    edtSubTotal2XCantGradExtranjeros: TEdit;
    edtSubTotal2XCantGradMujeres: TEdit;
    edtSubTotal2XCantGradTotal: TEdit;
    edtSubTotal2XCantParticipADistancia: TEdit;
    edtSubTotal2XCantParticipUnivMun: TEdit;
    edtSubTotal2XCantParticipProfTP: TEdit;
    edtSubTotal2XCantParticipProfTC: TEdit;
    edtSubTotal2XCantParticipExtranjeros: TEdit;
    edtSubTotal2XCantParticipMujeres: TEdit;
    edtSubTotal2XCantParticipTotal: TEdit;
    edtSubTotal2XCantActivExtranjero: TEdit;
    edtSubTotal2XCantActivADistancia: TEdit;
    edtSubTotal2XCantActivUnivMun: TEdit;
    edtSubTotal2XCantActivTotal: TEdit;
    edtCursosXCantGradProfTP: TEdit;
    edtCursosXCantGradProfTC: TEdit;
    edtCursosXCantGradExtranjeros: TEdit;
    edtCursosXCantGradMujeres: TEdit;
    edtCursosXCantGradTotal: TEdit;
    edtCursosXCantParticipADistancia: TEdit;
    edtCursosXCantParticipUnivMun: TEdit;
    edtCursosXCantParticipProfTP: TEdit;
    edtCursosXCantParticipProfTC: TEdit;
    edtCursosXCantParticipExtranjeros: TEdit;
    edtCursosXCantParticipMujeres: TEdit;
    edtCursosXCantParticipTotal: TEdit;
    edtCursosXCantActivExtranjero: TEdit;
    edtCursosXCantActivADistancia: TEdit;
    edtCursosXCantActivUnivMun: TEdit;
    edtCursosXCantActivTotal: TEdit;
    edtEntrenamientosXCantGradProfTP: TEdit;
    edtEntrenamientosXCantGradProfTC: TEdit;
    edtEntrenamientosXCantGradExtranjeros: TEdit;
    edtEntrenamientosXCantGradMujeres: TEdit;
    edtEntrenamientosXCantGradTotal: TEdit;
    edtEntrenamientosXCantParticipADistancia: TEdit;
    edtEntrenamientosXCantParticipUnivMun: TEdit;
    edtEntrenamientosXCantParticipProfTP: TEdit;
    edtEntrenamientosXCantParticipProfTC: TEdit;
    edtEntrenamientosXCantParticipExtranjeros: TEdit;
    edtEntrenamientosXCantParticipMujeres: TEdit;
    edtEntrenamientosXCantParticipTotal: TEdit;
    edtEntrenamientosXCantActivExtranjero: TEdit;
    edtEntrenamientosXCantActivADistancia: TEdit;
    edtEntrenamientosXCantActivUnivMun: TEdit;
    edtEntrenamientosXCantActivTotal: TEdit;
    Edit131: TEdit;
    Edit132: TEdit;
    Edit133: TEdit;
    Edit134: TEdit;
    Edit135: TEdit;
    Edit136: TEdit;
    Edit137: TEdit;
    Edit138: TEdit;
    edtDiplomadosXCantGradProfTP: TEdit;
    edtDiplomadosXCantGradProfTC: TEdit;
    edtDiplomadosXCantGradExtranjeros: TEdit;
    edtDiplomadosXCantGradTotal: TEdit;
    edtDiplomadosXCantActivTotal: TEdit;
    edtDiplomadosXCantGradMujeres: TEdit;
    edtDiplomadosXCantParticipADistancia: TEdit;
    edtDiplomadosXCantParticipUnivMun: TEdit;
    edtDiplomadosXCantParticipProfTP: TEdit;
    edtDiplomadosXCantParticipTotal: TEdit;
    edtDiplomadosXCantParticipMujeres: TEdit;
    edtDiplomadosXCantParticipExtranjeros: TEdit;
    edtDiplomadosXCantParticipProfTC: TEdit;
    edtDiplomadosXCantActivADistancia: TEdit;
    edtDiplomadosXCantActivExtranjero: TEdit;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    Memo9: TMemo;
    Memo10: TMemo;
    Memo11: TMemo;
    Memo12: TMemo;
    Memo13: TMemo;
    Memo14: TMemo;
    Memo15: TMemo;
    Memo16: TMemo;
    Memo17: TMemo;
    Memo18: TMemo;
    Memo19: TMemo;
    Memo20: TMemo;
    Memo21: TMemo;
    Memo22: TMemo;
    Memo23: TMemo;
    Memo24: TMemo;
    Memo25: TMemo;
    Memo26: TMemo;
    Memo27: TMemo;
    Memo28: TMemo;
    Memo29: TMemo;
    Memo30: TMemo;
    Memo31: TMemo;
    Memo58: TMemo;
    Memo59: TMemo;
    Memo60: TMemo;
    Memo61: TMemo;
    Memo62: TMemo;
    Memo63: TMemo;
    Memo64: TMemo;
    edtDoctoradosXCantActivTotal: TEdit;
    edtDoctoradosXCantActivUnivMun: TEdit;
    edtEspecialidadesXCantActivTotal: TEdit;
    edtMaestriasXCantActivTotal: TEdit;
    edtSubTotal3XCantActivTotal: TEdit;
    edtSubTotal3XCantActivUnivMun: TEdit;
    edtMaestriasXCantActivUnivMun: TEdit;
    edtEspecialidadesXCantActivUnivMun: TEdit;
    edtDoctoradosXCantActivADistancia: TEdit;
    edtEspecialidadesXCantActivADistancia: TEdit;
    edtMaestriasXCantActivADistancia: TEdit;
    edtSubTotal3XCantActivADistancia: TEdit;
    edtSubTotal3XCantActivExtranjero: TEdit;
    edtMaestriasXCantActivExtranjero: TEdit;
    edtEspecialidadesXCantActivExtranjero: TEdit;
    edtDoctoradosXCantActivExtranjero: TEdit;
    edtDoctoradosXCantParticipTotal: TEdit;
    edtEspecialidadesXCantParticipTotal: TEdit;
    edtMaestriasXCantParticipTotal: TEdit;
    edtSubTotal3XCantParticipTotal: TEdit;
    edtSubTotal3XCantParticipMujeres: TEdit;
    edtMaestriasXCantParticipMujeres: TEdit;
    edtEspecialidadesXCantParticipMujeres: TEdit;
    edtDoctoradosXCantParticipMujeres: TEdit;
    edtDoctoradosXCantParticipExtranjeros: TEdit;
    edtEspecialidadesXCantParticipExtranjeros: TEdit;
    edtMaestriasXCantParticipExtranjeros: TEdit;
    edtSubTotal3XCantParticipExtranjeros: TEdit;
    edtSubTotal3XCantParticipProfTC: TEdit;
    edtMaestriasXCantParticipProfTC: TEdit;
    edtEspecialidadesXCantParticipProfTC: TEdit;
    edtDoctoradosXCantParticipProfTC: TEdit;
    edtDoctoradosXCantParticipProfTP: TEdit;
    edtEspecialidadesXCantParticipProfTP: TEdit;
    edtMaestriasXCantParticipProfTP: TEdit;
    edtSubTotal3XCantParticipProfTP: TEdit;
    edtSubTotal3XCantParticipUnivMun: TEdit;
    edtMaestriasXCantParticipUnivMun: TEdit;
    edtEspecialidadesXCantParticipUnivMun: TEdit;
    edtDoctoradosXCantParticipUnivMun: TEdit;
    edtDoctoradosXCantParticipADistancia: TEdit;
    edtDoctoradosXCantGradTotal: TEdit;
    edtDoctoradosXCantGradMujeres: TEdit;
    edtDoctoradosXCantGradExtranjeros: TEdit;
    edtDoctoradosXCantGradProfTC: TEdit;
    edtDoctoradosXCantGradProfTP: TEdit;
    edtEspecialidadesXCantGradProfTP: TEdit;
    edtEspecialidadesXCantGradProfTC: TEdit;
    edtEspecialidadesXCantGradExtranjeros: TEdit;
    edtEspecialidadesXCantGradMujeres: TEdit;
    edtEspecialidadesXCantGradTotal: TEdit;
    edtEspecialidadesXCantParticipADistancia: TEdit;
    edtMaestriasXCantParticipADistancia: TEdit;
    edtSubTotal3XCantParticipADistancia: TEdit;
    edtSubTotal3XCantGradTotal: TEdit;
    edtSubTotal3XCantGradMujeres: TEdit;
    edtMaestriasXCantGradMujeres: TEdit;
    edtMaestriasXCantGradTotal: TEdit;
    edtMaestriasXCantGradExtranjeros: TEdit;
    edtSubTotal3XCantGradExtranjeros: TEdit;
    edtMaestriasXCantGradProfTC: TEdit;
    edtSubTotal3XCantGradProfTC: TEdit;
    edtMaestriasXCantGradProfTP: TEdit;
    edtSubTotal3XCantGradProfTP: TEdit;
    edtTotalXCantActivTotal: TEdit;
    edtTotalXCantActivUnivMun: TEdit;
    edtTotalXCantActivADistancia: TEdit;
    edtTotalXCantActivExtranjero: TEdit;
    edtTotalXCantParticipTotal: TEdit;
    edtTotalXCantParticipMujeres: TEdit;
    edtTotalXCantParticipExtranjeros: TEdit;
    edtTotalXCantParticipProfTC: TEdit;
    edtTotalXCantParticipProfTP: TEdit;
    edtTotalXCantParticipUnivMun: TEdit;
    edtTotalXCantParticipADistancia: TEdit;
    edtTotalXCantGradTotal: TEdit;
    edtTotalXCantGradMujeres: TEdit;
    edtTotalXCantGradExtranjeros: TEdit;
    edtTotalXCantGradProfTC: TEdit;
    edtTotalXCantGradProfTP: TEdit;
    cmbxProvincia: TAdvOfficeSelector;
    btnImportarPlanillaDesdeFichero: TAdvGlassButton;
    OpenDialog: TOpenDialog;
    STCabReader: TSTCabReader;
    DBtxtID_MunicipioBuscado: TDBText;
    ApplicationEvents1: TApplicationEvents;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;

    //Validaciones de pulsado de teclas
    procedure SoloNumerosSinEspaciosKeyPress(Sender: TObject; var Key: Char);  //Cantidades numericas enteras
    procedure SoloNumerosTelefonicosYExtensionKeyPress(Sender: TObject; var Key: Char); //Numeros telefonicos con su extension (ejemplo: 643-8782, Ext. 122)

    procedure SoloLetrasYNumerosSinPuntuacionNiEspaciosKeyPress(Sender: TObject; var Key: Char); //IDs cubanos (números) y extranjeros (letras y números)
    procedure SoloLetrasYNumerosConPuntuacionYEspaciosKeyPress(Sender: TObject; var Key: Char); //Nombre de Instituciones, que pueden incluir números
    procedure SoloCorreosElectronicosKeyPress(Sender: TObject; var Key: Char); //IDs cubanos (números) y extranjeros (letras y números)

    procedure SoloLetrasConEspaciosYPuntuacionKeyPress(Sender: TObject; var Key: Char); //Para nombres, apellidos, etc.
    procedure SoloLetrasSinEspaciosNiTildesKeyPress(Sender: TObject; var Key: Char);
    procedure cmbxProvinciaChange(Sender: TObject);
    procedure btnImportarPlanillaDesdeFicheroClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean); //Para usuarios
  private

    function EstanLlenosLosCampos: Boolean;
    function ElMunicipioFueSeleccionado: Boolean;

    procedure ImportarPlanilla1164_01DesdeFichero;

    procedure RellenarPlanillaTemporal;
    procedure RellenarComponentesDesdePlanilla1164_01(aPlanilla1164_01: TPlanilla1164_01);
    
    procedure LimpiarComponentes;
    procedure BlanquearEditsDeLaForma;
    procedure ColorearEditsVacios;
    procedure BlanquearEditsLlenos;

    function QuitaEn(Cadena, Esto: String): String;

    //Trabajo con ficheros *.P01
    procedure ExtraerFicheroP01(aPath: AnsiString);    
    
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNuevaPlanilla1164_01: TfrmNuevaPlanilla1164_01;

implementation
var
    BookLogger: TGestionDocente;
    PaisItemIndex, MunicipioItemIndex: Integer;
    TempPlanilla: TPlanilla1164_01;
    
    //*** Variables de trabajo con archivos ***
    FicheroPlanilla1164_01: TFicheroPlanilla1164_01;


    
{$R *.dfm}

procedure TfrmNuevaPlanilla1164_01.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevaPlanilla1164_01.Close;
end;



procedure TfrmNuevaPlanilla1164_01.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmNuevaPlanilla1164_01.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);

  //Limpio todos los componentes
  LimpiarComponentes;

  //Blanqueo todos los Edits
  BlanquearEditsDeLaForma;

  //Muestro los municipios de la provincia mostrada en el ComboBox
  BookLogger.MostrarMunicipiosParaPlanilla1164_01PorNombreProvincia(cmbxProvincia.Text);
end;



procedure TfrmNuevaPlanilla1164_01.btnAceptarClick(Sender: TObject);
var
  Codigo: AnsiString;
  Anno: Integer;
  mes, dia, ano :Word;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Valido que se haya escogido el municipio, a partir de la provincia
        if (ElMunicipioFueSeleccionado = True)
          then
            begin
              //Valido que todos los campos esten llenos
              if (EstanLlenosLosCampos = True)
                then
                  begin
                    //Recojo el codigo del centro informante
                    Codigo:= edtCodigoCentroInformante.Text;
                    
                    //Intento convertir parte de fecha hacia un número entero (año)
                    Anno:= StrToIntDef(   AnsiRightStr(DateToStr(dtpAnno.Date), 4 ), 0   );

                    //Verifico si tomó el valor default = 0 (no es entero)
                    if (Anno = 0)
                      then
                        begin
                          //Decodifico el DateTimePicker en porciones de fecha
                          DecodeDate(dtpAnno.Date, ano, mes, dia);

                          //Tomo lo que me interesa (el año)
                          Anno:= ano;
                        end;

                    //Busco una planilla con el mismo posicionamiento, para ver si ya existe
                    BookLogger.BuscarPlanilla1164_01PorCodigoYAnno(Codigo, Anno);
                    
                    //Valido que no exista una planilla igual en la BD
                    if (BookLogger.ExistePlanilla1164_01PorCodigoYAnno = False)
                      then
                        begin
                          //Creo una planilla 1164-01 temporal
                          TempPlanilla:= TPlanilla1164_01.Create;

                          //Relleno la planilla 1164-01 temporal
                          RellenarPlanillaTemporal;

                          //Inserto la planilla 1164-01 temporal
                          BookLogger.InsertarPlanilla1164_01(TempPlanilla);

                          //Libero memoria de la planilla 1164-01 temporal
                          TempPlanilla.Destroy;

                          //Inserto la traza
                          BookLogger.GuardarTrazaDelSistema('Agregó una planilla 1164-01, para la provincia de ' + cmbxProvincia.Text + ', municipio ' + DBlucmbxMunicipio.Text + ', año ' + IntToStr(TempPlanilla.Anno) + ' y referente al centro ' + TempPlanilla.NombreCentroInformante );

                          //Actualizo todas las trazas
                          BookLogger.MostrarTodasLasTrazas;
                    
                          //Cierro la forma
                          frmNuevaPlanilla1164_01.Close;
                        end
                          else
                            begin
                              MessageDlg('Ya existe una planilla con el mismo Código del Centro Informante,' + #13 + 'y para el mismo Año. La planilla no puede ser insertada.', mtError, [mbOk], 0);
                            end;
                  end
                    else
                      begin
                        MessageDlg('Quedan campos de la planilla por llenar.' + #13 + 'Los mismos estarán marcados en rojo.', mtError, [mbOk], 0);

                        //Blanqueo los Edits llenos
                        BlanquearEditsLlenos;

                        //Coloreo los Edits vacios
                        ColorearEditsVacios;
                      end;
            end
              else
                begin
                  MessageDlg('Antes debe seleccionar un municipio', mtError, [mbOk], 0);
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
            frmNuevaPlanilla1164_01.Close;
          end;
end;




procedure TfrmNuevaPlanilla1164_01.btnLimpiarClick(Sender: TObject);
begin
  //Limpio todos los componentes
  LimpiarComponentes;

  //Blanqueo todos los Edits
  BlanquearEditsDeLaForma;
end;



procedure TfrmNuevaPlanilla1164_01.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmNuevaPlanilla1164_01.SoloCorreosElectronicosKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', '.', '_', '@', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlanilla1164_01.SoloLetrasConEspaciosYPuntuacionKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlanilla1164_01.SoloLetrasSinEspaciosNiTildesKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlanilla1164_01.SoloLetrasYNumerosConPuntuacionYEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', '0'..'9', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlanilla1164_01.SoloLetrasYNumerosSinPuntuacionNiEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlanilla1164_01.SoloNumerosSinEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo numeros
  if not (Key in['0'..'9', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlanilla1164_01.SoloNumerosTelefonicosYExtensionKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo letras y numeros, con espacios, puntos y guiones
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', ' ', ',', '-', '.', #8, #13]) then Abort;
end;



function TfrmNuevaPlanilla1164_01.EstanLlenosLosCampos: Boolean;
begin
  //Valido el relleno de todos los campos
  //Datos Generales
  if (   ( Trim(edtNombreCentroInformante.Text) = '')
  or (Trim(edtCodigoCentroInformante.Text) = '')
  or (Trim(edtNombreDirectorEconomico.Text) = '')
  or (Trim(edtNombreRectorODirector.Text) = '')



  //Sección I: Caracterización
  or (Trim(edtDoctoresXTotal.Text) = '')
  or (Trim(edtDoctoresXCantGrad.Text) = '')
  or (Trim(edtDoctoresXCantParticip.Text) = '')



  //Sección II: Superación Profesional
  //Diplomados
  or (Trim(edtDiplomadosXCantActivTotal.Text) = '')
  or (Trim(edtDiplomadosXCantActivUnivMun.Text) = '')
  or (Trim(edtDiplomadosXCantActivADistancia.Text) = '')
  or (Trim(edtDiplomadosXCantActivExtranjero.Text) = '')
  or (Trim(edtDiplomadosXCantParticipTotal.Text) = '')
  or (Trim(edtDiplomadosXCantParticipMujeres.Text) = '')
  or (Trim(edtDiplomadosXCantParticipExtranjeros.Text) = '')
  or (Trim(edtDiplomadosXCantParticipProfTC.Text) = '')
  or (Trim(edtDiplomadosXCantParticipProfTP.Text) = '')
  or (Trim(edtDiplomadosXCantParticipUnivMun.Text) = '')
  or (Trim(edtDiplomadosXCantParticipADistancia.Text) = '')
  or (Trim(edtDiplomadosXCantGradTotal.Text) = '')
  or (Trim(edtDiplomadosXCantGradMujeres.Text) = '')
  or (Trim(edtDiplomadosXCantGradExtranjeros.Text) = '')
  or (Trim(edtDiplomadosXCantGradProfTC.Text) = '')
  or (Trim(edtDiplomadosXCantGradProfTP.Text) = '')

  //Entrenamientos
  or (Trim(edtEntrenamientosXCantActivTotal.Text) = '')
  or (Trim(edtEntrenamientosXCantActivUnivMun.Text) = '')
  or (Trim(edtEntrenamientosXCantActivADistancia.Text) = '')
  or (Trim(edtEntrenamientosXCantActivExtranjero.Text) = '')
  or (Trim(edtEntrenamientosXCantParticipTotal.Text) = '')
  or (Trim(edtEntrenamientosXCantParticipMujeres.Text) = '')
  or (Trim(edtEntrenamientosXCantParticipExtranjeros.Text) = '')
  or (Trim(edtEntrenamientosXCantParticipProfTC.Text) = '')
  or (Trim(edtEntrenamientosXCantParticipProfTP.Text) = '')
  or (Trim(edtEntrenamientosXCantParticipUnivMun.Text) = '')
  or (Trim(edtEntrenamientosXCantParticipADistancia.Text) = '')
  or (Trim(edtEntrenamientosXCantGradTotal.Text) = '')
  or (Trim(edtEntrenamientosXCantGradMujeres.Text) = '')
  or (Trim(edtEntrenamientosXCantGradExtranjeros.Text) = '')
  or (Trim(edtEntrenamientosXCantGradProfTC.Text) = '')
  or (Trim(edtEntrenamientosXCantGradProfTP.Text) = '')

  //Cursos
  or (Trim(edtCursosXCantActivTotal.Text) = '')
  or (Trim(edtCursosXCantActivUnivMun.Text) = '')
  or (Trim(edtCursosXCantActivADistancia.Text) = '')
  or (Trim(edtCursosXCantActivExtranjero.Text) = '')
  or (Trim(edtCursosXCantParticipTotal.Text) = '')
  or (Trim(edtCursosXCantParticipMujeres.Text) = '')
  or (Trim(edtCursosXCantParticipExtranjeros.Text) = '')
  or (Trim(edtCursosXCantParticipProfTC.Text) = '')
  or (Trim(edtCursosXCantParticipProfTP.Text) = '')
  or (Trim(edtCursosXCantParticipUnivMun.Text) = '')
  or (Trim(edtCursosXCantParticipADistancia.Text) = '')
  or (Trim(edtCursosXCantGradTotal.Text) = '')
  or (Trim(edtCursosXCantGradMujeres.Text) = '')
  or (Trim(edtCursosXCantGradExtranjeros.Text) = '')
  or (Trim(edtCursosXCantGradProfTC.Text) = '')
  or (Trim(edtCursosXCantGradProfTP.Text) = '')

  //SubTotal II
  or (Trim(edtSubTotal2XCantActivTotal.Text) = '')
  or (Trim(edtSubTotal2XCantActivUnivMun.Text) = '')
  or (Trim(edtSubTotal2XCantActivADistancia.Text) = '')
  or (Trim(edtSubTotal2XCantActivExtranjero.Text) = '')
  or (Trim(edtSubTotal2XCantParticipTotal.Text) = '')
  or (Trim(edtSubTotal2XCantParticipMujeres.Text) = '')
  or (Trim(edtSubTotal2XCantParticipExtranjeros.Text) = '')
  or (Trim(edtSubTotal2XCantParticipProfTC.Text) = '')
  or (Trim(edtSubTotal2XCantParticipProfTP.Text) = '')
  or (Trim(edtSubTotal2XCantParticipUnivMun.Text) = '')
  or (Trim(edtSubTotal2XCantParticipADistancia.Text) = '')
  or (Trim(edtSubTotal2XCantGradTotal.Text) = '')
  or (Trim(edtSubTotal2XCantGradMujeres.Text) = '')
  or (Trim(edtSubTotal2XCantGradExtranjeros.Text) = '')
  or (Trim(edtSubTotal2XCantGradProfTC.Text) = '')
  or (Trim(edtSubTotal2XCantGradProfTP.Text) = '')


  //Sección II: Postgrado Académico

  //Doctorados
  or (Trim(edtDoctoradosXCantActivTotal.Text) = '')
  or (Trim(edtDoctoradosXCantActivUnivMun.Text) = '')
  or (Trim(edtDoctoradosXCantActivADistancia.Text) = '')
  or (Trim(edtDoctoradosXCantActivExtranjero.Text) = '')
  or (Trim(edtDoctoradosXCantParticipTotal.Text) = '')
  or (Trim(edtDoctoradosXCantParticipMujeres.Text) = '')
  or (Trim(edtDoctoradosXCantParticipExtranjeros.Text) = '')
  or (Trim(edtDoctoradosXCantParticipProfTC.Text) = '')
  or (Trim(edtDoctoradosXCantParticipProfTP.Text) = '')
  or (Trim(edtDoctoradosXCantParticipUnivMun.Text) = '')
  or (Trim(edtDoctoradosXCantParticipADistancia.Text) = '')
  or (Trim(edtDoctoradosXCantGradTotal.Text) = '')
  or (Trim(edtDoctoradosXCantGradMujeres.Text) = '')
  or (Trim(edtDoctoradosXCantGradExtranjeros.Text) = '')
  or (Trim(edtDoctoradosXCantGradProfTC.Text) = '')
  or (Trim(edtDoctoradosXCantGradProfTP.Text) = '')

  //Especialidades
  or (Trim(edtEspecialidadesXCantActivTotal.Text) = '')
  or (Trim(edtEspecialidadesXCantActivUnivMun.Text) = '')
  or (Trim(edtEspecialidadesXCantActivADistancia.Text) = '')
  or (Trim(edtEspecialidadesXCantActivExtranjero.Text) = '')
  or (Trim(edtEspecialidadesXCantParticipTotal.Text) = '')
  or (Trim(edtEspecialidadesXCantParticipMujeres.Text) = '')
  or (Trim(edtEspecialidadesXCantParticipExtranjeros.Text) = '')
  or (Trim(edtEspecialidadesXCantParticipProfTC.Text) = '')
  or (Trim(edtEspecialidadesXCantParticipProfTP.Text) = '')
  or (Trim(edtEspecialidadesXCantParticipUnivMun.Text) = '')
  or (Trim(edtEspecialidadesXCantParticipADistancia.Text) = '')
  or (Trim(edtEspecialidadesXCantGradTotal.Text) = '')
  or (Trim(edtEspecialidadesXCantGradMujeres.Text) = '')
  or (Trim(edtEspecialidadesXCantGradExtranjeros.Text) = '')
  or (Trim(edtEspecialidadesXCantGradProfTC.Text) = '')
  or (Trim(edtEspecialidadesXCantGradProfTP.Text) = '')

  //Maestrías
  or (Trim(edtMaestriasXCantActivTotal.Text) = '')
  or (Trim(edtMaestriasXCantActivUnivMun.Text) = '')
  or (Trim(edtMaestriasXCantActivADistancia.Text) = '')
  or (Trim(edtMaestriasXCantActivExtranjero.Text) = '')
  or (Trim(edtMaestriasXCantParticipTotal.Text) = '')
  or (Trim(edtMaestriasXCantParticipMujeres.Text) = '')
  or (Trim(edtMaestriasXCantParticipExtranjeros.Text) = '')
  or (Trim(edtMaestriasXCantParticipProfTC.Text) = '')
  or (Trim(edtMaestriasXCantParticipProfTP.Text) = '')
  or (Trim(edtMaestriasXCantParticipUnivMun.Text) = '')
  or (Trim(edtMaestriasXCantParticipADistancia.Text) = '')
  or (Trim(edtMaestriasXCantGradTotal.Text) = '')
  or (Trim(edtMaestriasXCantGradMujeres.Text) = '')
  or (Trim(edtMaestriasXCantGradExtranjeros.Text) = '')
  or (Trim(edtMaestriasXCantGradProfTC.Text) = '')
  or (Trim(edtMaestriasXCantGradProfTP.Text) = '')

  //SubTotal III
  or (Trim(edtSubTotal3XCantActivTotal.Text) = '')
  or (Trim(edtSubTotal3XCantActivUnivMun.Text) = '')
  or (Trim(edtSubTotal3XCantActivADistancia.Text) = '')
  or (Trim(edtSubTotal3XCantActivExtranjero.Text) = '')
  or (Trim(edtSubTotal3XCantParticipTotal.Text) = '')
  or (Trim(edtSubTotal3XCantParticipMujeres.Text) = '')
  or (Trim(edtSubTotal3XCantParticipExtranjeros.Text) = '')
  or (Trim(edtSubTotal3XCantParticipProfTC.Text) = '')
  or (Trim(edtSubTotal3XCantParticipProfTP.Text) = '')
  or (Trim(edtSubTotal3XCantParticipUnivMun.Text) = '')
  or (Trim(edtSubTotal3XCantParticipADistancia.Text) = '')
  or (Trim(edtSubTotal3XCantGradTotal.Text) = '')
  or (Trim(edtSubTotal3XCantGradMujeres.Text) = '')
  or (Trim(edtSubTotal3XCantGradExtranjeros.Text) = '')
  or (Trim(edtSubTotal3XCantGradProfTC.Text) = '')
  or (Trim(edtSubTotal3XCantGradProfTP.Text) = '')


  //Total
  or (Trim(edtTotalXCantActivTotal.Text) = '')
  or (Trim(edtTotalXCantActivUnivMun.Text) = '')
  or (Trim(edtTotalXCantActivADistancia.Text) = '')
  or (Trim(edtTotalXCantActivExtranjero.Text) = '')
  or (Trim(edtTotalXCantParticipTotal.Text) = '')
  or (Trim(edtTotalXCantParticipMujeres.Text) = '')
  or (Trim(edtTotalXCantParticipExtranjeros.Text) = '')
  or (Trim(edtTotalXCantParticipProfTC.Text) = '')
  or (Trim(edtTotalXCantParticipProfTP.Text) = '')
  or (Trim(edtTotalXCantParticipUnivMun.Text) = '')
  or (Trim(edtTotalXCantParticipADistancia.Text) = '')
  or (Trim(edtTotalXCantGradTotal.Text) = '')
  or (Trim(edtTotalXCantGradMujeres.Text) = '')
  or (Trim(edtTotalXCantGradExtranjeros.Text) = '')
  or (Trim(edtTotalXCantGradProfTC.Text) = '')
  or (Trim(edtTotalXCantGradProfTP.Text) = '')   )
    then
      begin
        Result:= False;
      end
        else
          begin
            Result:= True;
          end;
end;



function TfrmNuevaPlanilla1164_01.ElMunicipioFueSeleccionado: Boolean;
begin
  //verifico si se selccionó un municipio a partir de la provincia
  if (DBlucmbxMunicipio.Text <> '')
    then
      begin
        Result:= True;
      end
        else
          begin
            Result:= False;
          end;
end;



procedure TfrmNuevaPlanilla1164_01.RellenarPlanillaTemporal;
var
  anno: Integer;
  provincia: string;
  mes, dia, ano :Word;
begin
  //Intento convertir la cadena hacia un número entero
  anno:= StrToIntDef(   AnsiRightStr(DateToStr(dtpAnno.Date), 4 ), 0   );

  //Verifico si tomó el valor default = 0 (no es entero)
  if (anno = 0)
    then
      begin
        //Decodifico el DateTimePicker en porciones de fecha
        DecodeDate(dtpAnno.Date, ano, mes, dia);

        //Tomo lo que me interesa (el año)
        anno:= ano;
      end;
      
    //Relleno la planilla 1164-01 temporal
    //Posicionamiento
    //TempPlanilla.ID_Planilla (se obtiene al insertarse)
    TempPlanilla.Anno:=  anno;
    TempPlanilla.Municipio:= DBlucmbxMunicipio.Text;
    TempPlanilla.Provincia:= cmbxProvincia.Text;



    //Datos Generales
    TempPlanilla.NombreCentroInformante:= edtNombreCentroInformante.Text;
    TempPlanilla.CodigoCentroInformante:= edtCodigoCentroInformante.Text;
    TempPlanilla.NombreDirectorEconomico:= edtNombreDirectorEconomico.Text;
    TempPlanilla.NombreRectorODirector:= edtNombreRectorODirector.Text;
    TempPlanilla.FechaConfeccion:= StrToDateTime(BookLogger.ObtenerFechaDelSistema + ' ' + BookLogger.ObtenerHoraDelSistema) ;


    //Sección I: Caracterización
    TempPlanilla.DoctoresXTotal:= StrToInt(edtDoctoresXTotal.Text);
    TempPlanilla.DoctoresXCantGrad:= StrToInt(edtDoctoresXCantGrad.Text);
    TempPlanilla.DoctoresXCantParticip:= StrToInt(edtDoctoresXCantParticip.Text);

    

    //Sección II: Superación Profesional
    //Diplomados
    TempPlanilla.DiplomadosXCantActivTotal:= StrToInt(edtDiplomadosXCantActivTotal.Text);
    TempPlanilla.DiplomadosXCantActivUnivMun:= StrToInt(edtDiplomadosXCantActivUnivMun.Text);
    TempPlanilla.DiplomadosXCantActivADistancia:= StrToInt(edtDiplomadosXCantActivADistancia.Text);
    TempPlanilla.DiplomadosXCantActivExtranjero:= StrToInt(edtDiplomadosXCantActivExtranjero.Text);
    TempPlanilla.DiplomadosXCantParticipTotal:= StrToInt(edtDiplomadosXCantParticipTotal.Text);
    TempPlanilla.DiplomadosXCantParticipMujeres:= StrToInt(edtDiplomadosXCantParticipMujeres.Text);
    TempPlanilla.DiplomadosXCantParticipExtranjeros:= StrToInt(edtDiplomadosXCantParticipExtranjeros.Text);
    TempPlanilla.DiplomadosXCantParticipProfTC:= StrToInt(edtDiplomadosXCantParticipProfTC.Text);
    TempPlanilla.DiplomadosXCantParticipProfTP:= StrToInt(edtDiplomadosXCantParticipProfTP.Text);
    TempPlanilla.DiplomadosXCantParticipUnivMun:= StrToInt(edtDiplomadosXCantParticipUnivMun.Text);
    TempPlanilla.DiplomadosXCantParticipADistancia:= StrToInt(edtDiplomadosXCantParticipADistancia.Text);
    TempPlanilla.DiplomadosXCantGradTotal:= StrToInt(edtDiplomadosXCantGradTotal.Text);
    TempPlanilla.DiplomadosXCantGradMujeres:= StrToInt(edtDiplomadosXCantGradMujeres.Text);
    TempPlanilla.DiplomadosXCantGradExtranjeros:= StrToInt(edtDiplomadosXCantGradExtranjeros.Text);
    TempPlanilla.DiplomadosXCantGradProfTC:= StrToInt(edtDiplomadosXCantGradProfTC.Text);
    TempPlanilla.DiplomadosXCantGradProfTP:= StrToInt(edtDiplomadosXCantGradProfTP.Text);

    //Entrenamientos
    TempPlanilla.EntrenamientosXCantActivTotal:= StrToInt(edtEntrenamientosXCantActivTotal.Text);
    TempPlanilla.EntrenamientosXCantActivUnivMun:= StrToInt(edtEntrenamientosXCantActivUnivMun.Text);
    TempPlanilla.EntrenamientosXCantActivADistancia:= StrToInt(edtEntrenamientosXCantActivADistancia.Text);
    TempPlanilla.EntrenamientosXCantActivExtranjero:= StrToInt(edtEntrenamientosXCantActivExtranjero.Text);
    TempPlanilla.EntrenamientosXCantParticipTotal:= StrToInt(edtEntrenamientosXCantParticipTotal.Text);
    TempPlanilla.EntrenamientosXCantParticipMujeres:= StrToInt(edtEntrenamientosXCantParticipMujeres.Text);
    TempPlanilla.EntrenamientosXCantParticipExtranjeros:= StrToInt(edtEntrenamientosXCantParticipExtranjeros.Text);
    TempPlanilla.EntrenamientosXCantParticipProfTC:= StrToInt(edtEntrenamientosXCantParticipProfTC.Text);
    TempPlanilla.EntrenamientosXCantParticipProfTP:= StrToInt(edtEntrenamientosXCantParticipProfTP.Text);
    TempPlanilla.EntrenamientosXCantParticipUnivMun:= StrToInt(edtEntrenamientosXCantParticipUnivMun.Text);
    TempPlanilla.EntrenamientosXCantParticipADistancia:= StrToInt(edtEntrenamientosXCantParticipADistancia.Text);
    TempPlanilla.EntrenamientosXCantGradTotal:= StrToInt(edtEntrenamientosXCantGradTotal.Text);
    TempPlanilla.EntrenamientosXCantGradMujeres:= StrToInt(edtEntrenamientosXCantGradMujeres.Text);
    TempPlanilla.EntrenamientosXCantGradExtranjeros:= StrToInt(edtEntrenamientosXCantGradExtranjeros.Text);
    TempPlanilla.EntrenamientosXCantGradProfTC:= StrToInt(edtEntrenamientosXCantGradProfTC.Text);
    TempPlanilla.EntrenamientosXCantGradProfTP:= StrToInt(edtEntrenamientosXCantGradProfTP.Text);

    //Cursos
    TempPlanilla.CursosXCantActivTotal:= StrToInt(edtCursosXCantActivTotal.Text);
    TempPlanilla.CursosXCantActivUnivMun:= StrToInt(edtCursosXCantActivUnivMun.Text);
    TempPlanilla.CursosXCantActivADistancia:= StrToInt(edtCursosXCantActivADistancia.Text);
    TempPlanilla.CursosXCantActivExtranjero:= StrToInt(edtCursosXCantActivExtranjero.Text);
    TempPlanilla.CursosXCantParticipTotal:= StrToInt(edtCursosXCantParticipTotal.Text);
    TempPlanilla.CursosXCantParticipMujeres:= StrToInt(edtCursosXCantParticipMujeres.Text);
    TempPlanilla.CursosXCantParticipExtranjeros:= StrToInt(edtCursosXCantParticipExtranjeros.Text);
    TempPlanilla.CursosXCantParticipProfTC:= StrToInt(edtCursosXCantParticipProfTC.Text);
    TempPlanilla.CursosXCantParticipProfTP:= StrToInt(edtCursosXCantParticipProfTP.Text);
    TempPlanilla.CursosXCantParticipUnivMun:= StrToInt(edtCursosXCantParticipUnivMun.Text);
    TempPlanilla.CursosXCantParticipADistancia:= StrToInt(edtCursosXCantParticipADistancia.Text);
    TempPlanilla.CursosXCantGradTotal:= StrToInt(edtCursosXCantGradTotal.Text);
    TempPlanilla.CursosXCantGradMujeres:= StrToInt(edtCursosXCantGradMujeres.Text);
    TempPlanilla.CursosXCantGradExtranjeros:= StrToInt(edtCursosXCantGradExtranjeros.Text);
    TempPlanilla.CursosXCantGradProfTC:= StrToInt(edtCursosXCantGradProfTC.Text);
    TempPlanilla.CursosXCantGradProfTP:= StrToInt(edtCursosXCantGradProfTP.Text);

    //SubTotal II
    TempPlanilla.SubTotal2XCantActivTotal:= StrToInt(edtSubTotal2XCantActivTotal.Text);
    TempPlanilla.SubTotal2XCantActivUnivMun:= StrToInt(edtSubTotal2XCantActivUnivMun.Text);
    TempPlanilla.SubTotal2XCantActivADistancia:= StrToInt(edtSubTotal2XCantActivADistancia.Text);
    TempPlanilla.SubTotal2XCantActivExtranjero:= StrToInt(edtSubTotal2XCantActivExtranjero.Text);
    TempPlanilla.SubTotal2XCantParticipTotal:= StrToInt(edtSubTotal2XCantParticipTotal.Text);
    TempPlanilla.SubTotal2XCantParticipMujeres:= StrToInt(edtSubTotal2XCantParticipMujeres.Text);
    TempPlanilla.SubTotal2XCantParticipExtranjeros:= StrToInt(edtSubTotal2XCantParticipExtranjeros.Text);
    TempPlanilla.SubTotal2XCantParticipProfTC:= StrToInt(edtSubTotal2XCantParticipProfTC.Text);
    TempPlanilla.SubTotal2XCantParticipProfTP:= StrToInt(edtSubTotal2XCantParticipProfTP.Text);
    TempPlanilla.SubTotal2XCantParticipUnivMun:= StrToInt(edtSubTotal2XCantParticipUnivMun.Text);
    TempPlanilla.SubTotal2XCantParticipADistancia:= StrToInt(edtSubTotal2XCantParticipADistancia.Text);
    TempPlanilla.SubTotal2XCantGradTotal:= StrToInt(edtSubTotal2XCantGradTotal.Text);
    TempPlanilla.SubTotal2XCantGradMujeres:= StrToInt(edtSubTotal2XCantGradMujeres.Text);
    TempPlanilla.SubTotal2XCantGradExtranjeros:= StrToInt(edtSubTotal2XCantGradExtranjeros.Text);
    TempPlanilla.SubTotal2XCantGradProfTC:= StrToInt(edtSubTotal2XCantGradProfTC.Text);
    TempPlanilla.SubTotal2XCantGradProfTP:= StrToInt(edtSubTotal2XCantGradProfTP.Text);


    //Sección II: Postgrado Académico

    //Doctorados
    TempPlanilla.DoctoradosXCantActivTotal:= StrToInt(edtDoctoradosXCantActivTotal.Text);
    TempPlanilla.DoctoradosXCantActivUnivMun:= StrToInt(edtDoctoradosXCantActivUnivMun.Text);
    TempPlanilla.DoctoradosXCantActivADistancia:= StrToInt(edtDoctoradosXCantActivADistancia.Text);
    TempPlanilla.DoctoradosXCantActivExtranjero:= StrToInt(edtDoctoradosXCantActivExtranjero.Text);
    TempPlanilla.DoctoradosXCantParticipTotal:= StrToInt(edtDoctoradosXCantParticipTotal.Text);
    TempPlanilla.DoctoradosXCantParticipMujeres:= StrToInt(edtDoctoradosXCantParticipMujeres.Text);
    TempPlanilla.DoctoradosXCantParticipExtranjeros:= StrToInt(edtDoctoradosXCantParticipExtranjeros.Text);
    TempPlanilla.DoctoradosXCantParticipProfTC:= StrToInt(edtDoctoradosXCantParticipProfTC.Text);
    TempPlanilla.DoctoradosXCantParticipProfTP:= StrToInt(edtDoctoradosXCantParticipProfTP.Text);
    TempPlanilla.DoctoradosXCantParticipUnivMun:= StrToInt(edtDoctoradosXCantParticipUnivMun.Text);
    TempPlanilla.DoctoradosXCantParticipADistancia:= StrToInt(edtDoctoradosXCantParticipADistancia.Text);
    TempPlanilla.DoctoradosXCantGradTotal:= StrToInt(edtDoctoradosXCantGradTotal.Text);
    TempPlanilla.DoctoradosXCantGradMujeres:= StrToInt(edtDoctoradosXCantGradMujeres.Text);
    TempPlanilla.DoctoradosXCantGradExtranjeros:= StrToInt(edtDoctoradosXCantGradExtranjeros.Text);
    TempPlanilla.DoctoradosXCantGradProfTC:= StrToInt(edtDoctoradosXCantGradProfTC.Text);
    TempPlanilla.DoctoradosXCantGradProfTP:= StrToInt(edtDoctoradosXCantGradProfTP.Text);

    //Especialidades
    TempPlanilla.EspecialidadesXCantActivTotal:= StrToInt(edtEspecialidadesXCantActivTotal.Text);
    TempPlanilla.EspecialidadesXCantActivUnivMun:= StrToInt(edtEspecialidadesXCantActivUnivMun.Text);
    TempPlanilla.EspecialidadesXCantActivADistancia:= StrToInt(edtEspecialidadesXCantActivADistancia.Text);
    TempPlanilla.EspecialidadesXCantActivExtranjero:= StrToInt(edtEspecialidadesXCantActivExtranjero.Text);
    TempPlanilla.EspecialidadesXCantParticipTotal:= StrToInt(edtEspecialidadesXCantParticipTotal.Text);
    TempPlanilla.EspecialidadesXCantParticipMujeres:= StrToInt(edtEspecialidadesXCantParticipMujeres.Text);
    TempPlanilla.EspecialidadesXCantParticipExtranjeros:= StrToInt(edtEspecialidadesXCantParticipExtranjeros.Text);
    TempPlanilla.EspecialidadesXCantParticipProfTC:= StrToInt(edtEspecialidadesXCantParticipProfTC.Text);
    TempPlanilla.EspecialidadesXCantParticipProfTP:= StrToInt(edtEspecialidadesXCantParticipProfTP.Text);
    TempPlanilla.EspecialidadesXCantParticipUnivMun:= StrToInt(edtEspecialidadesXCantParticipUnivMun.Text);
    TempPlanilla.EspecialidadesXCantParticipADistancia:= StrToInt(edtEspecialidadesXCantParticipADistancia.Text);
    TempPlanilla.EspecialidadesXCantGradTotal:= StrToInt(edtEspecialidadesXCantGradTotal.Text);
    TempPlanilla.EspecialidadesXCantGradMujeres:= StrToInt(edtEspecialidadesXCantGradMujeres.Text);
    TempPlanilla.EspecialidadesXCantGradExtranjeros:= StrToInt(edtEspecialidadesXCantGradExtranjeros.Text);
    TempPlanilla.EspecialidadesXCantGradProfTC:= StrToInt(edtEspecialidadesXCantGradProfTC.Text);
    TempPlanilla.EspecialidadesXCantGradProfTP:= StrToInt(edtEspecialidadesXCantGradProfTP.Text);

    //Maestrías
    TempPlanilla.MaestriasXCantActivTotal:= StrToInt(edtMaestriasXCantActivTotal.Text);
    TempPlanilla.MaestriasXCantActivUnivMun:= StrToInt(edtMaestriasXCantActivUnivMun.Text);
    TempPlanilla.MaestriasXCantActivADistancia:= StrToInt(edtMaestriasXCantActivADistancia.Text);
    TempPlanilla.MaestriasXCantActivExtranjero:= StrToInt(edtMaestriasXCantActivExtranjero.Text);
    TempPlanilla.MaestriasXCantParticipTotal:= StrToInt(edtMaestriasXCantParticipTotal.Text);
    TempPlanilla.MaestriasXCantParticipMujeres:= StrToInt(edtMaestriasXCantParticipMujeres.Text);
    TempPlanilla.MaestriasXCantParticipExtranjeros:= StrToInt(edtMaestriasXCantParticipExtranjeros.Text);
    TempPlanilla.MaestriasXCantParticipProfTC:= StrToInt(edtMaestriasXCantParticipProfTC.Text);
    TempPlanilla.MaestriasXCantParticipProfTP:= StrToInt(edtMaestriasXCantParticipProfTP.Text);
    TempPlanilla.MaestriasXCantParticipUnivMun:= StrToInt(edtMaestriasXCantParticipUnivMun.Text);
    TempPlanilla.MaestriasXCantParticipADistancia:= StrToInt(edtMaestriasXCantParticipADistancia.Text);
    TempPlanilla.MaestriasXCantGradTotal:= StrToInt(edtMaestriasXCantGradTotal.Text);
    TempPlanilla.MaestriasXCantGradMujeres:= StrToInt(edtMaestriasXCantGradMujeres.Text);
    TempPlanilla.MaestriasXCantGradExtranjeros:= StrToInt(edtMaestriasXCantGradExtranjeros.Text);
    TempPlanilla.MaestriasXCantGradProfTC:= StrToInt(edtMaestriasXCantGradProfTC.Text);
    TempPlanilla.MaestriasXCantGradProfTP:= StrToInt(edtMaestriasXCantGradProfTP.Text);

    //SubTotal III
    TempPlanilla.SubTotal3XCantActivTotal:= StrToInt(edtSubTotal3XCantActivTotal.Text);
    TempPlanilla.SubTotal3XCantActivUnivMun:= StrToInt(edtSubTotal3XCantActivUnivMun.Text);
    TempPlanilla.SubTotal3XCantActivADistancia:= StrToInt(edtSubTotal3XCantActivADistancia.Text);
    TempPlanilla.SubTotal3XCantActivExtranjero:= StrToInt(edtSubTotal3XCantActivExtranjero.Text);
    TempPlanilla.SubTotal3XCantParticipTotal:= StrToInt(edtSubTotal3XCantParticipTotal.Text);
    TempPlanilla.SubTotal3XCantParticipMujeres:= StrToInt(edtSubTotal3XCantParticipMujeres.Text);
    TempPlanilla.SubTotal3XCantParticipExtranjeros:= StrToInt(edtSubTotal3XCantParticipExtranjeros.Text);
    TempPlanilla.SubTotal3XCantParticipProfTC:= StrToInt(edtSubTotal3XCantParticipProfTC.Text);
    TempPlanilla.SubTotal3XCantParticipProfTP:= StrToInt(edtSubTotal3XCantParticipProfTP.Text);
    TempPlanilla.SubTotal3XCantParticipUnivMun:= StrToInt(edtSubTotal3XCantParticipUnivMun.Text);
    TempPlanilla.SubTotal3XCantParticipADistancia:= StrToInt(edtSubTotal3XCantParticipADistancia.Text);
    TempPlanilla.SubTotal3XCantGradTotal:= StrToInt(edtSubTotal3XCantGradTotal.Text);
    TempPlanilla.SubTotal3XCantGradMujeres:= StrToInt(edtSubTotal3XCantGradMujeres.Text);
    TempPlanilla.SubTotal3XCantGradExtranjeros:= StrToInt(edtSubTotal3XCantGradExtranjeros.Text);
    TempPlanilla.SubTotal3XCantGradProfTC:= StrToInt(edtSubTotal3XCantGradProfTC.Text);
    TempPlanilla.SubTotal3XCantGradProfTP:= StrToInt(edtSubTotal3XCantGradProfTP.Text);


    //Total
    TempPlanilla.TotalXCantActivTotal:= StrToInt(edtTotalXCantActivTotal.Text);
    TempPlanilla.TotalXCantActivUnivMun:= StrToInt(edtTotalXCantActivUnivMun.Text);
    TempPlanilla.TotalXCantActivADistancia:= StrToInt(edtTotalXCantActivADistancia.Text);
    TempPlanilla.TotalXCantActivExtranjero:= StrToInt(edtTotalXCantActivExtranjero.Text);
    TempPlanilla.TotalXCantParticipTotal:= StrToInt(edtTotalXCantParticipTotal.Text);
    TempPlanilla.TotalXCantParticipMujeres:= StrToInt(edtTotalXCantParticipMujeres.Text);
    TempPlanilla.TotalXCantParticipExtranjeros:= StrToInt(edtTotalXCantParticipExtranjeros.Text);
    TempPlanilla.TotalXCantParticipProfTC:= StrToInt(edtTotalXCantParticipProfTC.Text);
    TempPlanilla.TotalXCantParticipProfTP:= StrToInt(edtTotalXCantParticipProfTP.Text);
    TempPlanilla.TotalXCantParticipUnivMun:= StrToInt(edtTotalXCantParticipUnivMun.Text);
    TempPlanilla.TotalXCantParticipADistancia:= StrToInt(edtTotalXCantParticipADistancia.Text);
    TempPlanilla.TotalXCantGradTotal:= StrToInt(edtTotalXCantGradTotal.Text);
    TempPlanilla.TotalXCantGradMujeres:= StrToInt(edtTotalXCantGradMujeres.Text);
    TempPlanilla.TotalXCantGradExtranjeros:= StrToInt(edtTotalXCantGradExtranjeros.Text);
    TempPlanilla.TotalXCantGradProfTC:= StrToInt(edtTotalXCantGradProfTC.Text);
    TempPlanilla.TotalXCantGradProfTP:= StrToInt(edtTotalXCantGradProfTP.Text);
end;



procedure TfrmNuevaPlanilla1164_01.LimpiarComponentes;
begin
  //Borro los Edits
  //Datos Generales
  edtNombreCentroInformante.Clear;
  edtCodigoCentroInformante.Clear;
  edtNombreDirectorEconomico.Clear;
  edtNombreRectorODirector.Clear;


  //Sección I: Caracterización
  edtDoctoresXTotal.Clear;
  edtDoctoresXCantGrad.Clear;
  edtDoctoresXCantParticip.Clear;



  //Sección II: Superación Profesional
  //Diplomados
  edtDiplomadosXCantActivTotal.Clear;
  edtDiplomadosXCantActivUnivMun.Clear;
  edtDiplomadosXCantActivADistancia.Clear;
  edtDiplomadosXCantActivExtranjero.Clear;
  edtDiplomadosXCantParticipTotal.Clear;
  edtDiplomadosXCantParticipMujeres.Clear;
  edtDiplomadosXCantParticipExtranjeros.Clear;
  edtDiplomadosXCantParticipProfTC.Clear;
  edtDiplomadosXCantParticipProfTP.Clear;
  edtDiplomadosXCantParticipUnivMun.Clear;
  edtDiplomadosXCantParticipADistancia.Clear;
  edtDiplomadosXCantGradTotal.Clear;
  edtDiplomadosXCantGradMujeres.Clear;
  edtDiplomadosXCantGradExtranjeros.Clear;
  edtDiplomadosXCantGradProfTC.Clear;
  edtDiplomadosXCantGradProfTP.Clear;

  //Entrenamientos
  edtEntrenamientosXCantActivTotal.Clear;
  edtEntrenamientosXCantActivUnivMun.Clear;
  edtEntrenamientosXCantActivADistancia.Clear;
  edtEntrenamientosXCantActivExtranjero.Clear;
  edtEntrenamientosXCantParticipTotal.Clear;
  edtEntrenamientosXCantParticipMujeres.Clear;
  edtEntrenamientosXCantParticipExtranjeros.Clear;
  edtEntrenamientosXCantParticipProfTC.Clear;
  edtEntrenamientosXCantParticipProfTP.Clear;
  edtEntrenamientosXCantParticipUnivMun.Clear;
  edtEntrenamientosXCantParticipADistancia.Clear;
  edtEntrenamientosXCantGradTotal.Clear;
  edtEntrenamientosXCantGradMujeres.Clear;
  edtEntrenamientosXCantGradExtranjeros.Clear;
  edtEntrenamientosXCantGradProfTC.Clear;
  edtEntrenamientosXCantGradProfTP.Clear;

  //Cursos
  edtCursosXCantActivTotal.Clear;
  edtCursosXCantActivUnivMun.Clear;
  edtCursosXCantActivADistancia.Clear;
  edtCursosXCantActivExtranjero.Clear;
  edtCursosXCantParticipTotal.Clear;
  edtCursosXCantParticipMujeres.Clear;
  edtCursosXCantParticipExtranjeros.Clear;
  edtCursosXCantParticipProfTC.Clear;
  edtCursosXCantParticipProfTP.Clear;
  edtCursosXCantParticipUnivMun.Clear;
  edtCursosXCantParticipADistancia.Clear;
  edtCursosXCantGradTotal.Clear;
  edtCursosXCantGradMujeres.Clear;
  edtCursosXCantGradExtranjeros.Clear;
  edtCursosXCantGradProfTC.Clear;
  edtCursosXCantGradProfTP.Clear;

  //SubTotal II
  edtSubTotal2XCantActivTotal.Clear;
  edtSubTotal2XCantActivUnivMun.Clear;
  edtSubTotal2XCantActivADistancia.Clear;
  edtSubTotal2XCantActivExtranjero.Clear;
  edtSubTotal2XCantParticipTotal.Clear;
  edtSubTotal2XCantParticipMujeres.Clear;
  edtSubTotal2XCantParticipExtranjeros.Clear;
  edtSubTotal2XCantParticipProfTC.Clear;
  edtSubTotal2XCantParticipProfTP.Clear;
  edtSubTotal2XCantParticipUnivMun.Clear;
  edtSubTotal2XCantParticipADistancia.Clear;
  edtSubTotal2XCantGradTotal.Clear;
  edtSubTotal2XCantGradMujeres.Clear;
  edtSubTotal2XCantGradExtranjeros.Clear;
  edtSubTotal2XCantGradProfTC.Clear;
  edtSubTotal2XCantGradProfTP.Clear;


  //Sección II: Postgrado Académico

  //Doctorados
  edtDoctoradosXCantActivTotal.Clear;
  edtDoctoradosXCantActivUnivMun.Clear;
  edtDoctoradosXCantActivADistancia.Clear;
  edtDoctoradosXCantActivExtranjero.Clear;
  edtDoctoradosXCantParticipTotal.Clear;
  edtDoctoradosXCantParticipMujeres.Clear;
  edtDoctoradosXCantParticipExtranjeros.Clear;
  edtDoctoradosXCantParticipProfTC.Clear;
  edtDoctoradosXCantParticipProfTP.Clear;
  edtDoctoradosXCantParticipUnivMun.Clear;
  edtDoctoradosXCantParticipADistancia.Clear;
  edtDoctoradosXCantGradTotal.Clear;
  edtDoctoradosXCantGradMujeres.Clear;
  edtDoctoradosXCantGradExtranjeros.Clear;
  edtDoctoradosXCantGradProfTC.Clear;
  edtDoctoradosXCantGradProfTP.Clear;

  //Especialidades
  edtEspecialidadesXCantActivTotal.Clear;
  edtEspecialidadesXCantActivUnivMun.Clear;
  edtEspecialidadesXCantActivADistancia.Clear;
  edtEspecialidadesXCantActivExtranjero.Clear;
  edtEspecialidadesXCantParticipTotal.Clear;
  edtEspecialidadesXCantParticipMujeres.Clear;
  edtEspecialidadesXCantParticipExtranjeros.Clear;
  edtEspecialidadesXCantParticipProfTC.Clear;
  edtEspecialidadesXCantParticipProfTP.Clear;
  edtEspecialidadesXCantParticipUnivMun.Clear;
  edtEspecialidadesXCantParticipADistancia.Clear;
  edtEspecialidadesXCantGradTotal.Clear;
  edtEspecialidadesXCantGradMujeres.Clear;
  edtEspecialidadesXCantGradExtranjeros.Clear;
  edtEspecialidadesXCantGradProfTC.Clear;
  edtEspecialidadesXCantGradProfTP.Clear;

  //Maestrías
  edtMaestriasXCantActivTotal.Clear;
  edtMaestriasXCantActivUnivMun.Clear;
  edtMaestriasXCantActivADistancia.Clear;
  edtMaestriasXCantActivExtranjero.Clear;
  edtMaestriasXCantParticipTotal.Clear;
  edtMaestriasXCantParticipMujeres.Clear;
  edtMaestriasXCantParticipExtranjeros.Clear;
  edtMaestriasXCantParticipProfTC.Clear;
  edtMaestriasXCantParticipProfTP.Clear;
  edtMaestriasXCantParticipUnivMun.Clear;
  edtMaestriasXCantParticipADistancia.Clear;
  edtMaestriasXCantGradTotal.Clear;
  edtMaestriasXCantGradMujeres.Clear;
  edtMaestriasXCantGradExtranjeros.Clear;
  edtMaestriasXCantGradProfTC.Clear;
  edtMaestriasXCantGradProfTP.Clear;

  //SubTotal III
  edtSubTotal3XCantActivTotal.Clear;
  edtSubTotal3XCantActivUnivMun.Clear;
  edtSubTotal3XCantActivADistancia.Clear;
  edtSubTotal3XCantActivExtranjero.Clear;
  edtSubTotal3XCantParticipTotal.Clear;
  edtSubTotal3XCantParticipMujeres.Clear;
  edtSubTotal3XCantParticipExtranjeros.Clear;
  edtSubTotal3XCantParticipProfTC.Clear;
  edtSubTotal3XCantParticipProfTP.Clear;
  edtSubTotal3XCantParticipUnivMun.Clear;
  edtSubTotal3XCantParticipADistancia.Clear;
  edtSubTotal3XCantGradTotal.Clear;
  edtSubTotal3XCantGradMujeres.Clear;
  edtSubTotal3XCantGradExtranjeros.Clear;
  edtSubTotal3XCantGradProfTC.Clear;
  edtSubTotal3XCantGradProfTP.Clear;


  //Total
  edtTotalXCantActivTotal.Clear;
  edtTotalXCantActivUnivMun.Clear;
  edtTotalXCantActivADistancia.Clear;
  edtTotalXCantActivExtranjero.Clear;
  edtTotalXCantParticipTotal.Clear;
  edtTotalXCantParticipMujeres.Clear;
  edtTotalXCantParticipExtranjeros.Clear;
  edtTotalXCantParticipProfTC.Clear;
  edtTotalXCantParticipProfTP.Clear;
  edtTotalXCantParticipUnivMun.Clear;
  edtTotalXCantParticipADistancia.Clear;
  edtTotalXCantGradTotal.Clear;
  edtTotalXCantGradMujeres.Clear;
  edtTotalXCantGradExtranjeros.Clear;
  edtTotalXCantGradProfTC.Clear;
  edtTotalXCantGradProfTP.Clear;
end;



procedure TfrmNuevaPlanilla1164_01.BlanquearEditsDeLaForma;
begin
  //Datos Generales
  edtNombreCentroInformante.Color:= clWhite;
  edtCodigoCentroInformante.Color:= clWhite;
  edtNombreDirectorEconomico.Color:= clWhite;
  edtNombreRectorODirector.Color:= clWhite;


  //Sección I: Caracterización
  edtDoctoresXTotal.Color:= clWhite;
  edtDoctoresXCantGrad.Color:= clWhite;
  edtDoctoresXCantParticip.Color:= clWhite;



  //Sección II: Superación Profesional
  //Diplomados
  edtDiplomadosXCantActivTotal.Color:= clWhite;
  edtDiplomadosXCantActivUnivMun.Color:= clWhite;
  edtDiplomadosXCantActivADistancia.Color:= clWhite;
  edtDiplomadosXCantActivExtranjero.Color:= clWhite;
  edtDiplomadosXCantParticipTotal.Color:= clWhite;
  edtDiplomadosXCantParticipMujeres.Color:= clWhite;
  edtDiplomadosXCantParticipExtranjeros.Color:= clWhite;
  edtDiplomadosXCantParticipProfTC.Color:= clWhite;
  edtDiplomadosXCantParticipProfTP.Color:= clWhite;
  edtDiplomadosXCantParticipUnivMun.Color:= clWhite;
  edtDiplomadosXCantParticipADistancia.Color:= clWhite;
  edtDiplomadosXCantGradTotal.Color:= clWhite;
  edtDiplomadosXCantGradMujeres.Color:= clWhite;
  edtDiplomadosXCantGradExtranjeros.Color:= clWhite;
  edtDiplomadosXCantGradProfTC.Color:= clWhite;
  edtDiplomadosXCantGradProfTP.Color:= clWhite;

  //Entrenamientos
  edtEntrenamientosXCantActivTotal.Color:= clWhite;
  edtEntrenamientosXCantActivUnivMun.Color:= clWhite;
  edtEntrenamientosXCantActivADistancia.Color:= clWhite;
  edtEntrenamientosXCantActivExtranjero.Color:= clWhite;
  edtEntrenamientosXCantParticipTotal.Color:= clWhite;
  edtEntrenamientosXCantParticipMujeres.Color:= clWhite;
  edtEntrenamientosXCantParticipExtranjeros.Color:= clWhite;
  edtEntrenamientosXCantParticipProfTC.Color:= clWhite;
  edtEntrenamientosXCantParticipProfTP.Color:= clWhite;
  edtEntrenamientosXCantParticipUnivMun.Color:= clWhite;
  edtEntrenamientosXCantParticipADistancia.Color:= clWhite;
  edtEntrenamientosXCantGradTotal.Color:= clWhite;
  edtEntrenamientosXCantGradMujeres.Color:= clWhite;
  edtEntrenamientosXCantGradExtranjeros.Color:= clWhite;
  edtEntrenamientosXCantGradProfTC.Color:= clWhite;
  edtEntrenamientosXCantGradProfTP.Color:= clWhite;

  //Cursos
  edtCursosXCantActivTotal.Color:= clWhite;
  edtCursosXCantActivUnivMun.Color:= clWhite;
  edtCursosXCantActivADistancia.Color:= clWhite;
  edtCursosXCantActivExtranjero.Color:= clWhite;
  edtCursosXCantParticipTotal.Color:= clWhite;
  edtCursosXCantParticipMujeres.Color:= clWhite;
  edtCursosXCantParticipExtranjeros.Color:= clWhite;
  edtCursosXCantParticipProfTC.Color:= clWhite;
  edtCursosXCantParticipProfTP.Color:= clWhite;
  edtCursosXCantParticipUnivMun.Color:= clWhite;
  edtCursosXCantParticipADistancia.Color:= clWhite;
  edtCursosXCantGradTotal.Color:= clWhite;
  edtCursosXCantGradMujeres.Color:= clWhite;
  edtCursosXCantGradExtranjeros.Color:= clWhite;
  edtCursosXCantGradProfTC.Color:= clWhite;
  edtCursosXCantGradProfTP.Color:= clWhite;

  //SubTotal II
  edtSubTotal2XCantActivTotal.Color:= clWhite;
  edtSubTotal2XCantActivUnivMun.Color:= clWhite;
  edtSubTotal2XCantActivADistancia.Color:= clWhite;
  edtSubTotal2XCantActivExtranjero.Color:= clWhite;
  edtSubTotal2XCantParticipTotal.Color:= clWhite;
  edtSubTotal2XCantParticipMujeres.Color:= clWhite;
  edtSubTotal2XCantParticipExtranjeros.Color:= clWhite;
  edtSubTotal2XCantParticipProfTC.Color:= clWhite;
  edtSubTotal2XCantParticipProfTP.Color:= clWhite;
  edtSubTotal2XCantParticipUnivMun.Color:= clWhite;
  edtSubTotal2XCantParticipADistancia.Color:= clWhite;
  edtSubTotal2XCantGradTotal.Color:= clWhite;
  edtSubTotal2XCantGradMujeres.Color:= clWhite;
  edtSubTotal2XCantGradExtranjeros.Color:= clWhite;
  edtSubTotal2XCantGradProfTC.Color:= clWhite;
  edtSubTotal2XCantGradProfTP.Color:= clWhite;


  //Sección II: Postgrado Académico

  //Doctorados
  edtDoctoradosXCantActivTotal.Color:= clWhite;
  edtDoctoradosXCantActivUnivMun.Color:= clWhite;
  edtDoctoradosXCantActivADistancia.Color:= clWhite;
  edtDoctoradosXCantActivExtranjero.Color:= clWhite;
  edtDoctoradosXCantParticipTotal.Color:= clWhite;
  edtDoctoradosXCantParticipMujeres.Color:= clWhite;
  edtDoctoradosXCantParticipExtranjeros.Color:= clWhite;
  edtDoctoradosXCantParticipProfTC.Color:= clWhite;
  edtDoctoradosXCantParticipProfTP.Color:= clWhite;
  edtDoctoradosXCantParticipUnivMun.Color:= clWhite;
  edtDoctoradosXCantParticipADistancia.Color:= clWhite;
  edtDoctoradosXCantGradTotal.Color:= clWhite;
  edtDoctoradosXCantGradMujeres.Color:= clWhite;
  edtDoctoradosXCantGradExtranjeros.Color:= clWhite;
  edtDoctoradosXCantGradProfTC.Color:= clWhite;
  edtDoctoradosXCantGradProfTP.Color:= clWhite;

  //Especialidades
  edtEspecialidadesXCantActivTotal.Color:= clWhite;
  edtEspecialidadesXCantActivUnivMun.Color:= clWhite;
  edtEspecialidadesXCantActivADistancia.Color:= clWhite;
  edtEspecialidadesXCantActivExtranjero.Color:= clWhite;
  edtEspecialidadesXCantParticipTotal.Color:= clWhite;
  edtEspecialidadesXCantParticipMujeres.Color:= clWhite;
  edtEspecialidadesXCantParticipExtranjeros.Color:= clWhite;
  edtEspecialidadesXCantParticipProfTC.Color:= clWhite;
  edtEspecialidadesXCantParticipProfTP.Color:= clWhite;
  edtEspecialidadesXCantParticipUnivMun.Color:= clWhite;
  edtEspecialidadesXCantParticipADistancia.Color:= clWhite;
  edtEspecialidadesXCantGradTotal.Color:= clWhite;
  edtEspecialidadesXCantGradMujeres.Color:= clWhite;
  edtEspecialidadesXCantGradExtranjeros.Color:= clWhite;
  edtEspecialidadesXCantGradProfTC.Color:= clWhite;
  edtEspecialidadesXCantGradProfTP.Color:= clWhite;

  //Maestrías
  edtMaestriasXCantActivTotal.Color:= clWhite;
  edtMaestriasXCantActivUnivMun.Color:= clWhite;
  edtMaestriasXCantActivADistancia.Color:= clWhite;
  edtMaestriasXCantActivExtranjero.Color:= clWhite;
  edtMaestriasXCantParticipTotal.Color:= clWhite;
  edtMaestriasXCantParticipMujeres.Color:= clWhite;
  edtMaestriasXCantParticipExtranjeros.Color:= clWhite;
  edtMaestriasXCantParticipProfTC.Color:= clWhite;
  edtMaestriasXCantParticipProfTP.Color:= clWhite;
  edtMaestriasXCantParticipUnivMun.Color:= clWhite;
  edtMaestriasXCantParticipADistancia.Color:= clWhite;
  edtMaestriasXCantGradTotal.Color:= clWhite;
  edtMaestriasXCantGradMujeres.Color:= clWhite;
  edtMaestriasXCantGradExtranjeros.Color:= clWhite;
  edtMaestriasXCantGradProfTC.Color:= clWhite;
  edtMaestriasXCantGradProfTP.Color:= clWhite;

  //SubTotal III
  edtSubTotal3XCantActivTotal.Color:= clWhite;
  edtSubTotal3XCantActivUnivMun.Color:= clWhite;
  edtSubTotal3XCantActivADistancia.Color:= clWhite;
  edtSubTotal3XCantActivExtranjero.Color:= clWhite;
  edtSubTotal3XCantParticipTotal.Color:= clWhite;
  edtSubTotal3XCantParticipMujeres.Color:= clWhite;
  edtSubTotal3XCantParticipExtranjeros.Color:= clWhite;
  edtSubTotal3XCantParticipProfTC.Color:= clWhite;
  edtSubTotal3XCantParticipProfTP.Color:= clWhite;
  edtSubTotal3XCantParticipUnivMun.Color:= clWhite;
  edtSubTotal3XCantParticipADistancia.Color:= clWhite;
  edtSubTotal3XCantGradTotal.Color:= clWhite;
  edtSubTotal3XCantGradMujeres.Color:= clWhite;
  edtSubTotal3XCantGradExtranjeros.Color:= clWhite;
  edtSubTotal3XCantGradProfTC.Color:= clWhite;
  edtSubTotal3XCantGradProfTP.Color:= clWhite;


  //Total
  edtTotalXCantActivTotal.Color:= clWhite;
  edtTotalXCantActivUnivMun.Color:= clWhite;
  edtTotalXCantActivADistancia.Color:= clWhite;
  edtTotalXCantActivExtranjero.Color:= clWhite;
  edtTotalXCantParticipTotal.Color:= clWhite;
  edtTotalXCantParticipMujeres.Color:= clWhite;
  edtTotalXCantParticipExtranjeros.Color:= clWhite;
  edtTotalXCantParticipProfTC.Color:= clWhite;
  edtTotalXCantParticipProfTP.Color:= clWhite;
  edtTotalXCantParticipUnivMun.Color:= clWhite;
  edtTotalXCantParticipADistancia.Color:= clWhite;
  edtTotalXCantGradTotal.Color:= clWhite;
  edtTotalXCantGradMujeres.Color:= clWhite;
  edtTotalXCantGradExtranjeros.Color:= clWhite;
  edtTotalXCantGradProfTC.Color:= clWhite;
  edtTotalXCantGradProfTP.Color:= clWhite;
end;



procedure TfrmNuevaPlanilla1164_01.ColorearEditsVacios;
const
  clColorEditVacio= TColor($00B7B7FF);
begin
  //Datos Generales
  if ( Trim(edtNombreCentroInformante.Text) = '' ) then edtNombreCentroInformante.Color:= clColorEditVacio;
  if ( Trim(edtCodigoCentroInformante.Text) = '' ) then edtCodigoCentroInformante.Color:= clColorEditVacio;
  if ( Trim(edtNombreDirectorEconomico.Text) = '' ) then edtNombreDirectorEconomico.Color:= clColorEditVacio;
  if ( Trim(edtNombreRectorODirector.Text) = '' ) then edtNombreRectorODirector.Color:= clColorEditVacio;


  //Sección I: Caracterización
  if ( Trim(edtDoctoresXTotal.Text) = '' ) then edtDoctoresXTotal.Color:= clColorEditVacio;
  if ( Trim(edtDoctoresXCantGrad.Text) = '' ) then edtDoctoresXCantGrad.Color:= clColorEditVacio;
  if ( Trim(edtDoctoresXCantParticip.Text) = '' ) then edtDoctoresXCantParticip.Color:= clColorEditVacio;



  //Sección II: Superación Profesional
  //Diplomados
  if ( Trim(edtDiplomadosXCantActivTotal.Text) = '' ) then edtDiplomadosXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantActivUnivMun.Text) = '' ) then edtDiplomadosXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantActivADistancia.Text) = '' ) then edtDiplomadosXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantActivExtranjero.Text) = '' ) then edtDiplomadosXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantParticipTotal.Text) = '' ) then edtDiplomadosXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantParticipMujeres.Text) = '' ) then edtDiplomadosXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantParticipExtranjeros.Text) = '' ) then edtDiplomadosXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantParticipProfTC.Text) = '' ) then edtDiplomadosXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantParticipProfTP.Text) = '' ) then edtDiplomadosXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantParticipUnivMun.Text) = '' ) then edtDiplomadosXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantParticipADistancia.Text) = '' ) then edtDiplomadosXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantGradTotal.Text) = '' ) then edtDiplomadosXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantGradMujeres.Text) = '' ) then edtDiplomadosXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantGradExtranjeros.Text) = '' ) then edtDiplomadosXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantGradProfTC.Text) = '' ) then edtDiplomadosXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(edtDiplomadosXCantGradProfTP.Text) = '' ) then edtDiplomadosXCantGradProfTP.Color:= clColorEditVacio;

  //Entrenamientos
  if ( Trim(edtEntrenamientosXCantActivTotal.Text) = '' ) then edtEntrenamientosXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantActivUnivMun.Text) = '' ) then edtEntrenamientosXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantActivADistancia.Text) = '' ) then edtEntrenamientosXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantActivExtranjero.Text) = '' ) then edtEntrenamientosXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantParticipTotal.Text) = '' ) then edtEntrenamientosXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantParticipMujeres.Text) = '' ) then edtEntrenamientosXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantParticipExtranjeros.Text) = '' ) then edtEntrenamientosXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantParticipProfTC.Text) = '' ) then edtEntrenamientosXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantParticipProfTP.Text) = '' ) then edtEntrenamientosXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantParticipUnivMun.Text) = '' ) then edtEntrenamientosXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantParticipADistancia.Text) = '' ) then edtEntrenamientosXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantGradTotal.Text) = '' ) then edtEntrenamientosXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantGradMujeres.Text) = '' ) then edtEntrenamientosXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantGradExtranjeros.Text) = '' ) then edtEntrenamientosXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantGradProfTC.Text) = '' ) then edtEntrenamientosXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(edtEntrenamientosXCantGradProfTP.Text) = '' ) then edtEntrenamientosXCantGradProfTP.Color:= clColorEditVacio;

  //Cursos
  if ( Trim(edtCursosXCantActivTotal.Text) = '' ) then edtCursosXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantActivUnivMun.Text) = '' ) then edtCursosXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantActivADistancia.Text) = '' ) then edtCursosXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantActivExtranjero.Text) = '' ) then edtCursosXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantParticipTotal.Text) = '' ) then edtCursosXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantParticipMujeres.Text) = '' ) then edtCursosXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantParticipExtranjeros.Text) = '' ) then edtCursosXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantParticipProfTC.Text) = '' ) then edtCursosXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantParticipProfTP.Text) = '' ) then edtCursosXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantParticipUnivMun.Text) = '' ) then edtCursosXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantParticipADistancia.Text) = '' ) then edtCursosXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantGradTotal.Text) = '' ) then edtCursosXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantGradMujeres.Text) = '' ) then edtCursosXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantGradExtranjeros.Text) = '' ) then edtCursosXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantGradProfTC.Text) = '' ) then edtCursosXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(edtCursosXCantGradProfTP.Text) = '' ) then edtCursosXCantGradProfTP.Color:= clColorEditVacio;

  //SubTotal II
  if ( Trim(edtSubTotal2XCantActivTotal.Text) = '' ) then edtSubTotal2XCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantActivUnivMun.Text) = '' ) then edtSubTotal2XCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantActivADistancia.Text) = '' ) then edtSubTotal2XCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantActivExtranjero.Text) = '' ) then edtSubTotal2XCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantParticipTotal.Text) = '' ) then edtSubTotal2XCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantParticipMujeres.Text) = '' ) then edtSubTotal2XCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantParticipExtranjeros.Text) = '' ) then edtSubTotal2XCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantParticipProfTC.Text) = '' ) then edtSubTotal2XCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantParticipProfTP.Text) = '' ) then edtSubTotal2XCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantParticipUnivMun.Text) = '' ) then edtSubTotal2XCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantParticipADistancia.Text) = '' ) then edtSubTotal2XCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantGradTotal.Text) = '' ) then edtSubTotal2XCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantGradMujeres.Text) = '' ) then edtSubTotal2XCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantGradExtranjeros.Text) = '' ) then edtSubTotal2XCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantGradProfTC.Text) = '' ) then edtSubTotal2XCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal2XCantGradProfTP.Text) = '' ) then edtSubTotal2XCantGradProfTP.Color:= clColorEditVacio;


  //Sección II: Postgrado Académico

  //Doctorados
  if ( Trim(edtDoctoradosXCantActivTotal.Text) = '' ) then edtDoctoradosXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantActivUnivMun.Text) = '' ) then edtDoctoradosXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantActivADistancia.Text) = '' ) then edtDoctoradosXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantActivExtranjero.Text) = '' ) then edtDoctoradosXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantParticipTotal.Text) = '' ) then edtDoctoradosXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantParticipMujeres.Text) = '' ) then edtDoctoradosXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantParticipExtranjeros.Text) = '' ) then edtDoctoradosXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantParticipProfTC.Text) = '' ) then edtDoctoradosXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantParticipProfTP.Text) = '' ) then edtDoctoradosXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantParticipUnivMun.Text) = '' ) then edtDoctoradosXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantParticipADistancia.Text) = '' ) then edtDoctoradosXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantGradTotal.Text) = '' ) then edtDoctoradosXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantGradMujeres.Text) = '' ) then edtDoctoradosXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantGradExtranjeros.Text) = '' ) then edtDoctoradosXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantGradProfTC.Text) = '' ) then edtDoctoradosXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(edtDoctoradosXCantGradProfTP.Text) = '' ) then edtDoctoradosXCantGradProfTP.Color:= clColorEditVacio;

  //Especialidades
  if ( Trim(edtEspecialidadesXCantActivTotal.Text) = '' ) then edtEspecialidadesXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantActivUnivMun.Text) = '' ) then edtEspecialidadesXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantActivADistancia.Text) = '' ) then edtEspecialidadesXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantActivExtranjero.Text) = '' ) then edtEspecialidadesXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantParticipTotal.Text) = '' ) then edtEspecialidadesXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantParticipMujeres.Text) = '' ) then edtEspecialidadesXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantParticipExtranjeros.Text) = '' ) then edtEspecialidadesXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantParticipProfTC.Text) = '' ) then edtEspecialidadesXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantParticipProfTP.Text) = '' ) then edtEspecialidadesXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantParticipUnivMun.Text) = '' ) then edtEspecialidadesXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantParticipADistancia.Text) = '' ) then edtEspecialidadesXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantGradTotal.Text) = '' ) then edtEspecialidadesXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantGradMujeres.Text) = '' ) then edtEspecialidadesXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantGradExtranjeros.Text) = '' ) then edtEspecialidadesXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantGradProfTC.Text) = '' ) then edtEspecialidadesXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(edtEspecialidadesXCantGradProfTP.Text) = '' ) then edtEspecialidadesXCantGradProfTP.Color:= clColorEditVacio;

  //Maestrías
  if ( Trim(edtMaestriasXCantActivTotal.Text) = '' ) then edtMaestriasXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantActivUnivMun.Text) = '' ) then edtMaestriasXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantActivADistancia.Text) = '' ) then edtMaestriasXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantActivExtranjero.Text) = '' ) then edtMaestriasXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantParticipTotal.Text) = '' ) then edtMaestriasXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantParticipMujeres.Text) = '' ) then edtMaestriasXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantParticipExtranjeros.Text) = '' ) then edtMaestriasXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantParticipProfTC.Text) = '' ) then edtMaestriasXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantParticipProfTP.Text) = '' ) then edtMaestriasXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantParticipUnivMun.Text) = '' ) then edtMaestriasXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantParticipADistancia.Text) = '' ) then edtMaestriasXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantGradTotal.Text) = '' ) then edtMaestriasXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantGradMujeres.Text) = '' ) then edtMaestriasXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantGradExtranjeros.Text) = '' ) then edtMaestriasXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantGradProfTC.Text) = '' ) then edtMaestriasXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(edtMaestriasXCantGradProfTP.Text) = '' ) then edtMaestriasXCantGradProfTP.Color:= clColorEditVacio;

  //SubTotal III
  if ( Trim(edtSubTotal3XCantActivTotal.Text) = '' ) then edtSubTotal3XCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantActivUnivMun.Text) = '' ) then edtSubTotal3XCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantActivADistancia.Text) = '' ) then edtSubTotal3XCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantActivExtranjero.Text) = '' ) then edtSubTotal3XCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantParticipTotal.Text) = '' ) then edtSubTotal3XCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantParticipMujeres.Text) = '' ) then edtSubTotal3XCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantParticipExtranjeros.Text) = '' ) then edtSubTotal3XCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantParticipProfTC.Text) = '' ) then edtSubTotal3XCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantParticipProfTP.Text) = '' ) then edtSubTotal3XCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantParticipUnivMun.Text) = '' ) then edtSubTotal3XCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantParticipADistancia.Text) = '' ) then edtSubTotal3XCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantGradTotal.Text) = '' ) then edtSubTotal3XCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantGradMujeres.Text) = '' ) then edtSubTotal3XCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantGradExtranjeros.Text) = '' ) then edtSubTotal3XCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantGradProfTC.Text) = '' ) then edtSubTotal3XCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(edtSubTotal3XCantGradProfTP.Text) = '' ) then edtSubTotal3XCantGradProfTP.Color:= clColorEditVacio;


  //Total
  if ( Trim(edtTotalXCantActivTotal.Text) = '' ) then edtTotalXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantActivUnivMun.Text) = '' ) then edtTotalXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantActivADistancia.Text) = '' ) then edtTotalXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantActivExtranjero.Text) = '' ) then edtTotalXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantParticipTotal.Text) = '' ) then edtTotalXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantParticipMujeres.Text) = '' ) then edtTotalXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantParticipExtranjeros.Text) = '' ) then edtTotalXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantParticipProfTC.Text) = '' ) then edtTotalXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantParticipProfTP.Text) = '' ) then edtTotalXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantParticipUnivMun.Text) = '' ) then edtTotalXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantParticipADistancia.Text) = '' ) then edtTotalXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantGradTotal.Text) = '' ) then edtTotalXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantGradMujeres.Text) = '' ) then edtTotalXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantGradExtranjeros.Text) = '' ) then edtTotalXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantGradProfTC.Text) = '' ) then edtTotalXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(edtTotalXCantGradProfTP.Text) = '' ) then edtTotalXCantGradProfTP.Color:= clColorEditVacio;
end;



procedure TfrmNuevaPlanilla1164_01.cmbxProvinciaChange(Sender: TObject);
begin
  //Muestro los municipios de la provincia mostrada en el ComboBox
  BookLogger.MostrarMunicipiosParaPlanilla1164_01PorNombreProvincia(cmbxProvincia.Text);
end;



procedure TfrmNuevaPlanilla1164_01.BlanquearEditsLlenos;
begin
  //Datos Generales
  if ( Trim(edtNombreCentroInformante.Text) <> '' ) then edtNombreCentroInformante.Color:= clWhite;
  if ( Trim(edtCodigoCentroInformante.Text) <> '' ) then edtCodigoCentroInformante.Color:= clWhite;
  if ( Trim(edtNombreDirectorEconomico.Text) <> '' ) then edtNombreDirectorEconomico.Color:= clWhite;
  if ( Trim(edtNombreRectorODirector.Text) <> '' ) then edtNombreRectorODirector.Color:= clWhite;


  //Sección I: Caracterización
  if ( Trim(edtDoctoresXTotal.Text) <> '' ) then edtDoctoresXTotal.Color:= clWhite;
  if ( Trim(edtDoctoresXCantGrad.Text) <> '' ) then edtDoctoresXCantGrad.Color:= clWhite;
  if ( Trim(edtDoctoresXCantParticip.Text) <> '' ) then edtDoctoresXCantParticip.Color:= clWhite;



  //Sección II: Superación Profesional
  //Diplomados
  if ( Trim(edtDiplomadosXCantActivTotal.Text) <> '' ) then edtDiplomadosXCantActivTotal.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantActivUnivMun.Text) <> '' ) then edtDiplomadosXCantActivUnivMun.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantActivADistancia.Text) <> '' ) then edtDiplomadosXCantActivADistancia.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantActivExtranjero.Text) <> '' ) then edtDiplomadosXCantActivExtranjero.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantParticipTotal.Text) <> '' ) then edtDiplomadosXCantParticipTotal.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantParticipMujeres.Text) <> '' ) then edtDiplomadosXCantParticipMujeres.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantParticipExtranjeros.Text) <> '' ) then edtDiplomadosXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantParticipProfTC.Text) <> '' ) then edtDiplomadosXCantParticipProfTC.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantParticipProfTP.Text) <> '' ) then edtDiplomadosXCantParticipProfTP.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantParticipUnivMun.Text) <> '' ) then edtDiplomadosXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantParticipADistancia.Text) <> '' ) then edtDiplomadosXCantParticipADistancia.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantGradTotal.Text) <> '' ) then edtDiplomadosXCantGradTotal.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantGradMujeres.Text) <> '' ) then edtDiplomadosXCantGradMujeres.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantGradExtranjeros.Text) <> '' ) then edtDiplomadosXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantGradProfTC.Text) <> '' ) then edtDiplomadosXCantGradProfTC.Color:= clWhite;
  if ( Trim(edtDiplomadosXCantGradProfTP.Text) <> '' ) then edtDiplomadosXCantGradProfTP.Color:= clWhite;

  //Entrenamientos
  if ( Trim(edtEntrenamientosXCantActivTotal.Text) <> '' ) then edtEntrenamientosXCantActivTotal.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantActivUnivMun.Text) <> '' ) then edtEntrenamientosXCantActivUnivMun.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantActivADistancia.Text) <> '' ) then edtEntrenamientosXCantActivADistancia.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantActivExtranjero.Text) <> '' ) then edtEntrenamientosXCantActivExtranjero.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantParticipTotal.Text) <> '' ) then edtEntrenamientosXCantParticipTotal.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantParticipMujeres.Text) <> '' ) then edtEntrenamientosXCantParticipMujeres.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantParticipExtranjeros.Text) <> '' ) then edtEntrenamientosXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantParticipProfTC.Text) <> '' ) then edtEntrenamientosXCantParticipProfTC.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantParticipProfTP.Text) <> '' ) then edtEntrenamientosXCantParticipProfTP.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantParticipUnivMun.Text) <> '' ) then edtEntrenamientosXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantParticipADistancia.Text) <> '' ) then edtEntrenamientosXCantParticipADistancia.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantGradTotal.Text) <> '' ) then edtEntrenamientosXCantGradTotal.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantGradMujeres.Text) <> '' ) then edtEntrenamientosXCantGradMujeres.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantGradExtranjeros.Text) <> '' ) then edtEntrenamientosXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantGradProfTC.Text) <> '' ) then edtEntrenamientosXCantGradProfTC.Color:= clWhite;
  if ( Trim(edtEntrenamientosXCantGradProfTP.Text) <> '' ) then edtEntrenamientosXCantGradProfTP.Color:= clWhite;

  //Cursos
  if ( Trim(edtCursosXCantActivTotal.Text) <> '' ) then edtCursosXCantActivTotal.Color:= clWhite;
  if ( Trim(edtCursosXCantActivUnivMun.Text) <> '' ) then edtCursosXCantActivUnivMun.Color:= clWhite;
  if ( Trim(edtCursosXCantActivADistancia.Text) <> '' ) then edtCursosXCantActivADistancia.Color:= clWhite;
  if ( Trim(edtCursosXCantActivExtranjero.Text) <> '' ) then edtCursosXCantActivExtranjero.Color:= clWhite;
  if ( Trim(edtCursosXCantParticipTotal.Text) <> '' ) then edtCursosXCantParticipTotal.Color:= clWhite;
  if ( Trim(edtCursosXCantParticipMujeres.Text) <> '' ) then edtCursosXCantParticipMujeres.Color:= clWhite;
  if ( Trim(edtCursosXCantParticipExtranjeros.Text) <> '' ) then edtCursosXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(edtCursosXCantParticipProfTC.Text) <> '' ) then edtCursosXCantParticipProfTC.Color:= clWhite;
  if ( Trim(edtCursosXCantParticipProfTP.Text) <> '' ) then edtCursosXCantParticipProfTP.Color:= clWhite;
  if ( Trim(edtCursosXCantParticipUnivMun.Text) <> '' ) then edtCursosXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(edtCursosXCantParticipADistancia.Text) <> '' ) then edtCursosXCantParticipADistancia.Color:= clWhite;
  if ( Trim(edtCursosXCantGradTotal.Text) <> '' ) then edtCursosXCantGradTotal.Color:= clWhite;
  if ( Trim(edtCursosXCantGradMujeres.Text) <> '' ) then edtCursosXCantGradMujeres.Color:= clWhite;
  if ( Trim(edtCursosXCantGradExtranjeros.Text) <> '' ) then edtCursosXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(edtCursosXCantGradProfTC.Text) <> '' ) then edtCursosXCantGradProfTC.Color:= clWhite;
  if ( Trim(edtCursosXCantGradProfTP.Text) <> '' ) then edtCursosXCantGradProfTP.Color:= clWhite;

  //SubTotal II
  if ( Trim(edtSubTotal2XCantActivTotal.Text) <> '' ) then edtSubTotal2XCantActivTotal.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantActivUnivMun.Text) <> '' ) then edtSubTotal2XCantActivUnivMun.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantActivADistancia.Text) <> '' ) then edtSubTotal2XCantActivADistancia.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantActivExtranjero.Text) <> '' ) then edtSubTotal2XCantActivExtranjero.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantParticipTotal.Text) <> '' ) then edtSubTotal2XCantParticipTotal.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantParticipMujeres.Text) <> '' ) then edtSubTotal2XCantParticipMujeres.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantParticipExtranjeros.Text) <> '' ) then edtSubTotal2XCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantParticipProfTC.Text) <> '' ) then edtSubTotal2XCantParticipProfTC.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantParticipProfTP.Text) <> '' ) then edtSubTotal2XCantParticipProfTP.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantParticipUnivMun.Text) <> '' ) then edtSubTotal2XCantParticipUnivMun.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantParticipADistancia.Text) <> '' ) then edtSubTotal2XCantParticipADistancia.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantGradTotal.Text) <> '' ) then edtSubTotal2XCantGradTotal.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantGradMujeres.Text) <> '' ) then edtSubTotal2XCantGradMujeres.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantGradExtranjeros.Text) <> '' ) then edtSubTotal2XCantGradExtranjeros.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantGradProfTC.Text) <> '' ) then edtSubTotal2XCantGradProfTC.Color:= clWhite;
  if ( Trim(edtSubTotal2XCantGradProfTP.Text) <> '' ) then edtSubTotal2XCantGradProfTP.Color:= clWhite;


  //Sección II: Postgrado Académico

  //Doctorados
  if ( Trim(edtDoctoradosXCantActivTotal.Text) <> '' ) then edtDoctoradosXCantActivTotal.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantActivUnivMun.Text) <> '' ) then edtDoctoradosXCantActivUnivMun.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantActivADistancia.Text) <> '' ) then edtDoctoradosXCantActivADistancia.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantActivExtranjero.Text) <> '' ) then edtDoctoradosXCantActivExtranjero.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantParticipTotal.Text) <> '' ) then edtDoctoradosXCantParticipTotal.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantParticipMujeres.Text) <> '' ) then edtDoctoradosXCantParticipMujeres.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantParticipExtranjeros.Text) <> '' ) then edtDoctoradosXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantParticipProfTC.Text) <> '' ) then edtDoctoradosXCantParticipProfTC.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantParticipProfTP.Text) <> '' ) then edtDoctoradosXCantParticipProfTP.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantParticipUnivMun.Text) <> '' ) then edtDoctoradosXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantParticipADistancia.Text) <> '' ) then edtDoctoradosXCantParticipADistancia.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantGradTotal.Text) <> '' ) then edtDoctoradosXCantGradTotal.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantGradMujeres.Text) <> '' ) then edtDoctoradosXCantGradMujeres.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantGradExtranjeros.Text) <> '' ) then edtDoctoradosXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantGradProfTC.Text) <> '' ) then edtDoctoradosXCantGradProfTC.Color:= clWhite;
  if ( Trim(edtDoctoradosXCantGradProfTP.Text) <> '' ) then edtDoctoradosXCantGradProfTP.Color:= clWhite;

  //Especialidades
  if ( Trim(edtEspecialidadesXCantActivTotal.Text) <> '' ) then edtEspecialidadesXCantActivTotal.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantActivUnivMun.Text) <> '' ) then edtEspecialidadesXCantActivUnivMun.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantActivADistancia.Text) <> '' ) then edtEspecialidadesXCantActivADistancia.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantActivExtranjero.Text) <> '' ) then edtEspecialidadesXCantActivExtranjero.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantParticipTotal.Text) <> '' ) then edtEspecialidadesXCantParticipTotal.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantParticipMujeres.Text) <> '' ) then edtEspecialidadesXCantParticipMujeres.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantParticipExtranjeros.Text) <> '' ) then edtEspecialidadesXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantParticipProfTC.Text) <> '' ) then edtEspecialidadesXCantParticipProfTC.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantParticipProfTP.Text) <> '' ) then edtEspecialidadesXCantParticipProfTP.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantParticipUnivMun.Text) <> '' ) then edtEspecialidadesXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantParticipADistancia.Text) <> '' ) then edtEspecialidadesXCantParticipADistancia.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantGradTotal.Text) <> '' ) then edtEspecialidadesXCantGradTotal.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantGradMujeres.Text) <> '' ) then edtEspecialidadesXCantGradMujeres.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantGradExtranjeros.Text) <> '' ) then edtEspecialidadesXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantGradProfTC.Text) <> '' ) then edtEspecialidadesXCantGradProfTC.Color:= clWhite;
  if ( Trim(edtEspecialidadesXCantGradProfTP.Text) <> '' ) then edtEspecialidadesXCantGradProfTP.Color:= clWhite;

  //Maestrías
  if ( Trim(edtMaestriasXCantActivTotal.Text) <> '' ) then edtMaestriasXCantActivTotal.Color:= clWhite;
  if ( Trim(edtMaestriasXCantActivUnivMun.Text) <> '' ) then edtMaestriasXCantActivUnivMun.Color:= clWhite;
  if ( Trim(edtMaestriasXCantActivADistancia.Text) <> '' ) then edtMaestriasXCantActivADistancia.Color:= clWhite;
  if ( Trim(edtMaestriasXCantActivExtranjero.Text) <> '' ) then edtMaestriasXCantActivExtranjero.Color:= clWhite;
  if ( Trim(edtMaestriasXCantParticipTotal.Text) <> '' ) then edtMaestriasXCantParticipTotal.Color:= clWhite;
  if ( Trim(edtMaestriasXCantParticipMujeres.Text) <> '' ) then edtMaestriasXCantParticipMujeres.Color:= clWhite;
  if ( Trim(edtMaestriasXCantParticipExtranjeros.Text) <> '' ) then edtMaestriasXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(edtMaestriasXCantParticipProfTC.Text) <> '' ) then edtMaestriasXCantParticipProfTC.Color:= clWhite;
  if ( Trim(edtMaestriasXCantParticipProfTP.Text) <> '' ) then edtMaestriasXCantParticipProfTP.Color:= clWhite;
  if ( Trim(edtMaestriasXCantParticipUnivMun.Text) <> '' ) then edtMaestriasXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(edtMaestriasXCantParticipADistancia.Text) <> '' ) then edtMaestriasXCantParticipADistancia.Color:= clWhite;
  if ( Trim(edtMaestriasXCantGradTotal.Text) <> '' ) then edtMaestriasXCantGradTotal.Color:= clWhite;
  if ( Trim(edtMaestriasXCantGradMujeres.Text) <> '' ) then edtMaestriasXCantGradMujeres.Color:= clWhite;
  if ( Trim(edtMaestriasXCantGradExtranjeros.Text) <> '' ) then edtMaestriasXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(edtMaestriasXCantGradProfTC.Text) <> '' ) then edtMaestriasXCantGradProfTC.Color:= clWhite;
  if ( Trim(edtMaestriasXCantGradProfTP.Text) <> '' ) then edtMaestriasXCantGradProfTP.Color:= clWhite;

  //SubTotal III
  if ( Trim(edtSubTotal3XCantActivTotal.Text) <> '' ) then edtSubTotal3XCantActivTotal.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantActivUnivMun.Text) <> '' ) then edtSubTotal3XCantActivUnivMun.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantActivADistancia.Text) <> '' ) then edtSubTotal3XCantActivADistancia.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantActivExtranjero.Text) <> '' ) then edtSubTotal3XCantActivExtranjero.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantParticipTotal.Text) <> '' ) then edtSubTotal3XCantParticipTotal.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantParticipMujeres.Text) <> '' ) then edtSubTotal3XCantParticipMujeres.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantParticipExtranjeros.Text) <> '' ) then edtSubTotal3XCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantParticipProfTC.Text) <> '' ) then edtSubTotal3XCantParticipProfTC.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantParticipProfTP.Text) <> '' ) then edtSubTotal3XCantParticipProfTP.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantParticipUnivMun.Text) <> '' ) then edtSubTotal3XCantParticipUnivMun.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantParticipADistancia.Text) <> '' ) then edtSubTotal3XCantParticipADistancia.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantGradTotal.Text) <> '' ) then edtSubTotal3XCantGradTotal.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantGradMujeres.Text) <> '' ) then edtSubTotal3XCantGradMujeres.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantGradExtranjeros.Text) <> '' ) then edtSubTotal3XCantGradExtranjeros.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantGradProfTC.Text) <> '' ) then edtSubTotal3XCantGradProfTC.Color:= clWhite;
  if ( Trim(edtSubTotal3XCantGradProfTP.Text) <> '' ) then edtSubTotal3XCantGradProfTP.Color:= clWhite;


  //Total
  if ( Trim(edtTotalXCantActivTotal.Text) <> '' ) then edtTotalXCantActivTotal.Color:= clWhite;
  if ( Trim(edtTotalXCantActivUnivMun.Text) <> '' ) then edtTotalXCantActivUnivMun.Color:= clWhite;
  if ( Trim(edtTotalXCantActivADistancia.Text) <> '' ) then edtTotalXCantActivADistancia.Color:= clWhite;
  if ( Trim(edtTotalXCantActivExtranjero.Text) <> '' ) then edtTotalXCantActivExtranjero.Color:= clWhite;
  if ( Trim(edtTotalXCantParticipTotal.Text) <> '' ) then edtTotalXCantParticipTotal.Color:= clWhite;
  if ( Trim(edtTotalXCantParticipMujeres.Text) <> '' ) then edtTotalXCantParticipMujeres.Color:= clWhite;
  if ( Trim(edtTotalXCantParticipExtranjeros.Text) <> '' ) then edtTotalXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(edtTotalXCantParticipProfTC.Text) <> '' ) then edtTotalXCantParticipProfTC.Color:= clWhite;
  if ( Trim(edtTotalXCantParticipProfTP.Text) <> '' ) then edtTotalXCantParticipProfTP.Color:= clWhite;
  if ( Trim(edtTotalXCantParticipUnivMun.Text) <> '' ) then edtTotalXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(edtTotalXCantParticipADistancia.Text) <> '' ) then edtTotalXCantParticipADistancia.Color:= clWhite;
  if ( Trim(edtTotalXCantGradTotal.Text) <> '' ) then edtTotalXCantGradTotal.Color:= clWhite;
  if ( Trim(edtTotalXCantGradMujeres.Text) <> '' ) then edtTotalXCantGradMujeres.Color:= clWhite;
  if ( Trim(edtTotalXCantGradExtranjeros.Text) <> '' ) then edtTotalXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(edtTotalXCantGradProfTC.Text) <> '' ) then edtTotalXCantGradProfTC.Color:= clWhite;
  if ( Trim(edtTotalXCantGradProfTP.Text) <> '' ) then edtTotalXCantGradProfTP.Color:= clWhite;
end;



procedure TfrmNuevaPlanilla1164_01.btnImportarPlanillaDesdeFicheroClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Importo la Planilla 1164-01 desde un fichero
        ImportarPlanilla1164_01DesdeFichero;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



  
procedure TfrmNuevaPlanilla1164_01.ImportarPlanilla1164_01DesdeFichero;
var
  ArchivoEnteroAbierto: AnsiString;
  CaminoDelArchivoAbierto: AnsiString;
  NombreEnteroDelArchivoAbierto: AnsiString;
  NombreDelArchivoAbierto: AnsiString;

  ExtensionDelArchivoAbierto: AnsiString;
  NombreUtilDelArchivoAbierto: AnsiString;

  TempPlanillaImportada: TPlanilla1164_01;
  Label Salida;
begin
  //Le especifico el filter al OpenDialog
  OpenDialog.FileName:= '';
  OpenDialog.Filter:= 'Archivos de Planillas 1164-01 (*.P01)|*.P01';
  OpenDialog.DefaultExt := '*.P01';

  //Ejecuto el OpenDialog
  if (OpenDialog.Execute)
    then
      begin
        //Copio la direccion entera al archivo abierto
        ArchivoEnteroAbierto:= OpenDialog.FileName;

        //Le extraigo el camino de acceso al archivo abierto
        CaminoDelArchivoAbierto:= ExtractFilePath(ArchivoEnteroAbierto);

        //Obtengo el nombre entero del archivo abierto (junto con la extension)
        NombreEnteroDelArchivoAbierto:= QuitaEn(ArchivoEnteroAbierto, CaminoDelArchivoAbierto);

        //Obtengo el nombre del archivo abierto (sin la extensión)
        NombreDelArchivoAbierto:=  QuitaEn(NombreEnteroDelArchivoAbierto, AnsiRightStr(NombreEnteroDelArchivoAbierto, 3 + 1));

        //*** Verificamos si el archivo abierto es de extension *.p01 (Planilla 1164-01)
        if (  LowerCase( AnsiRightStr(NombreEnteroDelArchivoAbierto, 3) ) = 'p01'   )
          then
            begin //Formato *.P01 (Planilla 1164-01)
              //Obtengo la extension del archivo abierto
              ExtensionDelArchivoAbierto:= 'p01';

              //En este caso la parte util coincide con el nombre
              NombreUtilDelArchivoAbierto:= NombreDelArchivoAbierto;
                    
              //Procedemos a copiar el fichero hacia los archivos temporales de la biblioteca
              ExtraerFicheroP01(ArchivoEnteroAbierto);

              //Verifico el formato del archivo interior (si está)
              if (   FileExists(   LowerCase(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Planilla1164_01.txt')   ) = True   )
                then
                  begin  //Formato txt de los valores interiores
                    //Creo un fichero de Planilla 1164-01
                    FicheroPlanilla1164_01:= TFicheroPlanilla1164_01.New;

                    //Cargo el fichero de la planilla 1164-01
                    FicheroPlanilla1164_01.CargarValoresDePlanilla1164_01ExtraidaDesdeFichero(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Planilla1164_01.txt');

                    //Verifico que no haya lios con los valores
                    if (FicheroPlanilla1164_01.ElFicheroEstaEnBuenEstado = True)
                      then
                        begin //Todo ok con los valores de la planilla 1164-01
                          //Creo una planilla 1164-01 temporal
                          TempPlanillaImportada:= TPlanilla1164_01.Create;

                          //Determino los valores de la planilla 1164-01 a partir del fichero, y lo guardo en la planilla temporal
                          FicheroPlanilla1164_01.DeterminarValoresDePlanilla1164_01ExtraidaDesdeFichero(TempPlanillaImportada);

                          //Relleno las componentes con los datos de la planilla 1164-01 importada del fichero
                          RellenarComponentesDesdePlanilla1164_01(TempPlanillaImportada);

                          //Libero memoria del fichero de la planilla 1164-01
                          FicheroPlanilla1164_01.Destroy;

                          //Libero memoria de la planilla 1164-01 temporal
                          TempPlanillaImportada.Destroy;

                        end   //Fin de todo ok con los valores del fichero de planilla 1164-01
                          else
                            begin //Lios con los valores de la planilla 1164-01
                              //El archivo interno de valores está dañado o no es valido
                              MessageDlg('El archivo abierto ' + NombreDelArchivoAbierto + '.p01' + ' tiene datos internos NO ADECUADOS, o están dañados.', mtError, [mbOK], 0);

                              //Salgo del procedimiento
                              Goto Salida;
                            end;  //Fin de lios con el aumento a partir del fichero interior de aumento
                  end; //Fin de formato *.txt de los valores interiores
            end;   //Fin de formato *.P01 de fichero abierto
      end; //Fin de OpenDialog ejecutado

  //Etiqueta que marca un punto de salida del procedimiento
  Salida:
end;




function TfrmNuevaPlanilla1164_01.QuitaEn(Cadena, Esto: String): String;
var
  aPos: Integer;
begin
  aPos:= Pos(Esto, Cadena);
  Result:= '';
  
  while (aPos > 0) do
    begin
      Result := Result + Copy(Cadena, 1, aPos-1);
      Delete(Cadena, 1, aPos + Length(Esto)-1);
      aPos := Pos(Esto, Cadena);
    end;

  Result:= Result + Cadena;
end;



procedure TfrmNuevaPlanilla1164_01.ExtraerFicheroP01(aPath: AnsiString);
var
   aCabRd: TSTCabReader;
   //FilesExtracted: Integer;
begin
  //*** Utilizando el sistema Aravil CAB Component ***
  //Creo el componente de descompresión
  aCabRd := TSTCabReader.Create(nil);

  //Extraigo si existe el directorio de extraccion
  if DirectoryExists(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\')   // if the directory exists then extract
    Then
      begin
        //FilesExtracted := UnCabSimulacionImagenes.Extract();
        //ShowMessage('Archivos extraidos: ' + IntToStr(FilesExtracted));

        //Borro el archivo de valores de planilla 1164-01 que ya estaba allí (daba bateos con info mostrada en Memo, en SimOptic 2008,... un sistema anterior)
        DeleteFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Planilla1164_01.txt');

        //Le paso el nombre del archivo a descompactar y extraigo (Sistema Aravil CAB Component)
        aCabRd.ExtractFiles(aPath, ExtractFilePath(Application.ExeName) + 'Library\TempFiles\');
      end
        else
          begin
            ShowMessage('Directorio de extracción no definido.');
            Exit;
          end;
end;



procedure TfrmNuevaPlanilla1164_01.RellenarComponentesDesdePlanilla1164_01(aPlanilla1164_01: TPlanilla1164_01);
var
  ID_Municipio: Integer;
begin
  //Relleno los componentes desde la planilla 1164-01 temporal
  //Posicionamiento
  //TempPlanilla.ID_Planilla (se obtiene al insertarse)

  dtpAnno.Date:= StrToDate('21/01/' + IntToStr(aPlanilla1164_01.Anno));

  //Reordeno los componentes no directos (provincia)
  cmbxProvincia.Text:= aPlanilla1164_01.Provincia;

  //Ejecuto el evento OnChange en el ComboBox de provincia (esto llena el DBLookUpComboBox de municipios)
  cmbxProvincia.OnChange(Self);

  //Busco el ID_Municipio, por su Municipio
  BookLogger.BuscarID_MunicipioParaPlanilla1164_01PorNombreMunicipio(aPlanilla1164_01.Municipio);

  //Recojo el ID del municipio encontrado
  ID_Municipio:= StrToInt(DBtxtID_MunicipioBuscado.Field.Text);

  //Posiciono el DBLookUpComboBox de Municipios en la posicion correcta
  DBlucmbxMunicipio.KeyValue:= ID_Municipio;


  //Datos Generales
  edtNombreCentroInformante.Text:= aPlanilla1164_01.NombreCentroInformante;
  edtCodigoCentroInformante.Text:= aPlanilla1164_01.CodigoCentroInformante;
  edtNombreDirectorEconomico.Text:= aPlanilla1164_01.NombreDirectorEconomico;
  edtNombreRectorODirector.Text:= aPlanilla1164_01.NombreRectorODirector;
  //edtFechaConfeccion:= StrToDateTime(BookLogger.ObtenerFechaDelSistema + ' ' + BookLogger.ObtenerHoraDelSistema) );


  //Sección I: Caracterización
  edtDoctoresXTotal.Text:= IntToStr(aPlanilla1164_01.DoctoresXTotal);
  edtDoctoresXCantGrad.Text:= IntToStr(aPlanilla1164_01.DoctoresXCantGrad);
  edtDoctoresXCantParticip.Text:= IntToStr(aPlanilla1164_01.DoctoresXCantParticip);

    

  //Sección II: Superación Profesional
  //Diplomados
  edtDiplomadosXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantActivTotal);
  edtDiplomadosXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantActivUnivMun);
  edtDiplomadosXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantActivADistancia);
  edtDiplomadosXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantActivExtranjero);
  edtDiplomadosXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipTotal);
  edtDiplomadosXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipMujeres);
  edtDiplomadosXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipExtranjeros);
  edtDiplomadosXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipProfTC);
  edtDiplomadosXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipProfTP);
  edtDiplomadosXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipUnivMun);
  edtDiplomadosXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipADistancia);
  edtDiplomadosXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradTotal);
  edtDiplomadosXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradMujeres);
  edtDiplomadosXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradExtranjeros);
  edtDiplomadosXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradProfTC);
  edtDiplomadosXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradProfTP);

  //Entrenamientos
  edtEntrenamientosXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantActivTotal);
  edtEntrenamientosXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantActivUnivMun);
  edtEntrenamientosXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantActivADistancia);
  edtEntrenamientosXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantActivExtranjero);
  edtEntrenamientosXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipTotal);
  edtEntrenamientosXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipMujeres);
  edtEntrenamientosXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipExtranjeros);
  edtEntrenamientosXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipProfTC);
  edtEntrenamientosXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipProfTP);
  edtEntrenamientosXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipUnivMun);
  edtEntrenamientosXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipADistancia);
  edtEntrenamientosXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradTotal);
  edtEntrenamientosXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradMujeres);
  edtEntrenamientosXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradExtranjeros);
  edtEntrenamientosXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradProfTC);
  edtEntrenamientosXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradProfTP);

  //Cursos
  edtCursosXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.CursosXCantActivTotal);
  edtCursosXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.CursosXCantActivUnivMun);
  edtCursosXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.CursosXCantActivADistancia);
  edtCursosXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.CursosXCantActivExtranjero);
  edtCursosXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipTotal);
  edtCursosXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipMujeres);
  edtCursosXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipExtranjeros);
  edtCursosXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipProfTC);
  edtCursosXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipProfTP);
  edtCursosXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipUnivMun);
  edtCursosXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipADistancia);
  edtCursosXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradTotal);
  edtCursosXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradMujeres);
  edtCursosXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradExtranjeros);
  edtCursosXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradProfTC);
  edtCursosXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradProfTP);

  //SubTotal II
  edtSubTotal2XCantActivTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantActivTotal);
  edtSubTotal2XCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantActivUnivMun);
  edtSubTotal2XCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantActivADistancia);
  edtSubTotal2XCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantActivExtranjero);
  edtSubTotal2XCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipTotal);
  edtSubTotal2XCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipMujeres);
  edtSubTotal2XCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipExtranjeros);
  edtSubTotal2XCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipProfTC);
  edtSubTotal2XCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipProfTP);
  edtSubTotal2XCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipUnivMun);
  edtSubTotal2XCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipADistancia);
  edtSubTotal2XCantGradTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradTotal);
  edtSubTotal2XCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradMujeres);
  edtSubTotal2XCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradExtranjeros);
  edtSubTotal2XCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradProfTC);
  edtSubTotal2XCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradProfTP);


  //Sección II: Postgrado Académico

  //Doctorados
  edtDoctoradosXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantActivTotal);
  edtDoctoradosXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantActivUnivMun);
  edtDoctoradosXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantActivADistancia);
  edtDoctoradosXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantActivExtranjero);
  edtDoctoradosXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipTotal);
  edtDoctoradosXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipMujeres);
  edtDoctoradosXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipExtranjeros);
  edtDoctoradosXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipProfTC);
  edtDoctoradosXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipProfTP);
  edtDoctoradosXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipUnivMun);
  edtDoctoradosXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipADistancia);
  edtDoctoradosXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradTotal);
  edtDoctoradosXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradMujeres);
  edtDoctoradosXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradExtranjeros);
  edtDoctoradosXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradProfTC);
  edtDoctoradosXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradProfTP);

  //Especialidades
  edtEspecialidadesXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantActivTotal);
  edtEspecialidadesXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantActivUnivMun);
  edtEspecialidadesXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantActivADistancia);
  edtEspecialidadesXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantActivExtranjero);
  edtEspecialidadesXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipTotal);
  edtEspecialidadesXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipMujeres);
  edtEspecialidadesXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipExtranjeros);
  edtEspecialidadesXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipProfTC);
  edtEspecialidadesXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipProfTP);
  edtEspecialidadesXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipUnivMun);
  edtEspecialidadesXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipADistancia);
  edtEspecialidadesXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradTotal);
  edtEspecialidadesXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradMujeres);
  edtEspecialidadesXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradExtranjeros);
  edtEspecialidadesXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradProfTC);
  edtEspecialidadesXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradProfTP);

  //Maestrías
  edtMaestriasXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantActivTotal);
  edtMaestriasXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantActivUnivMun);
  edtMaestriasXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantActivADistancia);
  edtMaestriasXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantActivExtranjero);
  edtMaestriasXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipTotal);
  edtMaestriasXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipMujeres);
  edtMaestriasXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipExtranjeros);
  edtMaestriasXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipProfTC);
  edtMaestriasXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipProfTP);
  edtMaestriasXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipUnivMun);
  edtMaestriasXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipADistancia);
  edtMaestriasXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradTotal);
  edtMaestriasXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradMujeres);
  edtMaestriasXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradExtranjeros);
  edtMaestriasXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradProfTC);
  edtMaestriasXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradProfTP);

  //SubTotal III
  edtSubTotal3XCantActivTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantActivTotal);
  edtSubTotal3XCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantActivUnivMun);
  edtSubTotal3XCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantActivADistancia);
  edtSubTotal3XCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantActivExtranjero);
  edtSubTotal3XCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipTotal);
  edtSubTotal3XCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipMujeres);
  edtSubTotal3XCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipExtranjeros);
  edtSubTotal3XCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipProfTC);
  edtSubTotal3XCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipProfTP);
  edtSubTotal3XCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipUnivMun);
  edtSubTotal3XCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipADistancia);
  edtSubTotal3XCantGradTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradTotal);
  edtSubTotal3XCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradMujeres);
  edtSubTotal3XCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradExtranjeros);
  edtSubTotal3XCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradProfTC);
  edtSubTotal3XCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradProfTP);


  //Total
  edtTotalXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.TotalXCantActivTotal);
  edtTotalXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.TotalXCantActivUnivMun);
  edtTotalXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.TotalXCantActivADistancia);
  edtTotalXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.TotalXCantActivExtranjero);
  edtTotalXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipTotal);
  edtTotalXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipMujeres);
  edtTotalXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipExtranjeros);
  edtTotalXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipProfTC);
  edtTotalXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipProfTP);
  edtTotalXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipUnivMun);
  edtTotalXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipADistancia);
  edtTotalXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradTotal);
  edtTotalXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradMujeres);
  edtTotalXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradExtranjeros);
  edtTotalXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradProfTC);
  edtTotalXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradProfTP);
end;



procedure TfrmNuevaPlanilla1164_01.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  //Cálculo del 1er total (Edit) en la seccion de caracterizacion
  if ( (edtDoctoresXCantGrad.Text <> '') and (edtDoctoresXCantParticip.Text <> '') ) then
    begin
      edtDoctoresXTotal.Text:= IntToStr(  StrToInt(edtDoctoresXCantGrad.Text) + StrToInt(edtDoctoresXCantParticip.Text) );
    end;

{    
  //plantilla de cálculo

  if ( (edt.Text <> '') and (edt.Text <> '') and (edt.Text <> '')) then
    begin
      edtTotal1.Text:= IntToStr(  StrToInt(edt.Text) + StrToInt(edt.Text) + StrToInt(edt.Text));
    end;

  if ( (edt.Text <> '') and (edt.Text <> '') and (edt.Text <> '') and (edt.Text <> '') and (edt.Text <> '') and (edt.Text <> '') ) then
    begin
      edtTotal2.Text:= IntToStr(  StrToInt(edt.Text) + StrToInt(edt.Text) + StrToInt(edt.Text) + StrToInt(edt.Text) + StrToInt(edt.Text) + StrToInt(edt.Text)  );
    end;

  if ( (edt.Text <> '') and (edt.Text <> '') and (edt.Text <> '') and (edt.Text <> '') ) then
    begin
      edtTotal3.Text:= IntToStr(  StrToInt(edt.Text) + StrToInt(edt.Text) + StrToInt(edt.Text) + StrToInt(edt.Text));
    end;

}

  //*** Sección II: Superación Profesional ***

  // * Calculo los 3 totales de diplomado *
  
  if ( (edtDiplomadosXCantActivUnivMun.Text <> '') and (edtDiplomadosXCantActivADistancia.Text <> '') and (edtDiplomadosXCantActivExtranjero.Text <> '')) then
    begin
      edtDiplomadosXCantActivTotal.Text:= IntToStr(  StrToInt(edtDiplomadosXCantActivUnivMun.Text) + StrToInt(edtDiplomadosXCantActivADistancia.Text) + StrToInt(edtDiplomadosXCantActivExtranjero.Text));
    end;

  if ( (edtDiplomadosXCantParticipMujeres.Text <> '') and (edtDiplomadosXCantParticipExtranjeros.Text <> '') and (edtDiplomadosXCantParticipProfTC.Text <> '') and (edtDiplomadosXCantParticipProfTP.Text <> '') and (edtDiplomadosXCantParticipUnivMun.Text <> '') and (edtDiplomadosXCantParticipADistancia.Text <> '') ) then
    begin
      edtDiplomadosXCantParticipTotal.Text:= IntToStr(  StrToInt(edtDiplomadosXCantParticipMujeres.Text) + StrToInt(edtDiplomadosXCantParticipExtranjeros.Text) + StrToInt(edtDiplomadosXCantParticipProfTC.Text) + StrToInt(edtDiplomadosXCantParticipProfTP.Text) + StrToInt(edtDiplomadosXCantParticipUnivMun.Text) + StrToInt(edtDiplomadosXCantParticipADistancia.Text)  );
    end;

  if ( (edtDiplomadosXCantGradMujeres.Text <> '') and (edtDiplomadosXCantGradExtranjeros.Text <> '') and (edtDiplomadosXCantGradProfTC.Text <> '') and (edtDiplomadosXCantGradProfTP.Text <> '') ) then
    begin
      edtDiplomadosXCantGradTotal.Text:= IntToStr(  StrToInt(edtDiplomadosXCantGradMujeres.Text) + StrToInt(edtDiplomadosXCantGradExtranjeros.Text) + StrToInt(edtDiplomadosXCantGradProfTC.Text) + StrToInt(edtDiplomadosXCantGradProfTP.Text));
    end;
        

  // * Calculo los 3 totales de Entrenamientos *

  if ( (edtEntrenamientosXCantActivUnivMun.Text <> '') and (edtEntrenamientosXCantActivADistancia.Text <> '') and (edtEntrenamientosXCantActivExtranjero.Text <> '')) then
    begin
      edtEntrenamientosXCantActivTotal.Text:= IntToStr(  StrToInt(edtEntrenamientosXCantActivUnivMun.Text) + StrToInt(edtEntrenamientosXCantActivADistancia.Text) + StrToInt(edtEntrenamientosXCantActivExtranjero.Text));
    end;

  if ( (edtEntrenamientosXCantParticipMujeres.Text <> '') and (edtEntrenamientosXCantParticipExtranjeros.Text <> '') and (edtEntrenamientosXCantParticipProfTC.Text <> '') and (edtEntrenamientosXCantParticipProfTP.Text <> '') and (edtEntrenamientosXCantParticipUnivMun.Text <> '') and (edtEntrenamientosXCantParticipADistancia.Text <> '') ) then
    begin
      edtEntrenamientosXCantParticipTotal.Text:= IntToStr(  StrToInt(edtEntrenamientosXCantParticipMujeres.Text) + StrToInt(edtEntrenamientosXCantParticipExtranjeros.Text) + StrToInt(edtEntrenamientosXCantParticipProfTC.Text) + StrToInt(edtEntrenamientosXCantParticipProfTP.Text) + StrToInt(edtEntrenamientosXCantParticipUnivMun.Text) + StrToInt(edtEntrenamientosXCantParticipADistancia.Text)  );
    end;

  if ( (edtEntrenamientosXCantGradMujeres.Text <> '') and (edtEntrenamientosXCantGradExtranjeros.Text <> '') and (edtEntrenamientosXCantGradProfTC.Text <> '') and (edtEntrenamientosXCantGradProfTP.Text <> '') ) then
    begin
      edtEntrenamientosXCantGradTotal.Text:= IntToStr(  StrToInt(edtEntrenamientosXCantGradMujeres.Text) + StrToInt(edtEntrenamientosXCantGradExtranjeros.Text) + StrToInt(edtEntrenamientosXCantGradProfTC.Text) + StrToInt(edtEntrenamientosXCantGradProfTP.Text));
    end;  


  // * Calculo los 3 totales de Cursos *

  if ( (edtCursosXCantActivUnivMun.Text <> '') and (edtCursosXCantActivADistancia.Text <> '') and (edtCursosXCantActivExtranjero.Text <> '')) then
    begin
      edtCursosXCantActivTotal.Text:= IntToStr(  StrToInt(edtCursosXCantActivUnivMun.Text) + StrToInt(edtCursosXCantActivADistancia.Text) + StrToInt(edtCursosXCantActivExtranjero.Text));
    end;

  if ( (edtCursosXCantParticipMujeres.Text <> '') and (edtCursosXCantParticipExtranjeros.Text <> '') and (edtCursosXCantParticipProfTC.Text <> '') and (edtCursosXCantParticipProfTP.Text <> '') and (edtCursosXCantParticipUnivMun.Text <> '') and (edtCursosXCantParticipADistancia.Text <> '') ) then
    begin
      edtCursosXCantParticipTotal.Text:= IntToStr(  StrToInt(edtCursosXCantParticipMujeres.Text) + StrToInt(edtCursosXCantParticipExtranjeros.Text) + StrToInt(edtCursosXCantParticipProfTC.Text) + StrToInt(edtCursosXCantParticipProfTP.Text) + StrToInt(edtCursosXCantParticipUnivMun.Text) + StrToInt(edtCursosXCantParticipADistancia.Text)  );
    end;

  if ( (edtCursosXCantGradMujeres.Text <> '') and (edtCursosXCantGradExtranjeros.Text <> '') and (edtCursosXCantGradProfTC.Text <> '') and (edtCursosXCantGradProfTP.Text <> '') ) then
    begin
      edtCursosXCantGradTotal.Text:= IntToStr(  StrToInt(edtCursosXCantGradMujeres.Text) + StrToInt(edtCursosXCantGradExtranjeros.Text) + StrToInt(edtCursosXCantGradProfTC.Text) + StrToInt(edtCursosXCantGradProfTP.Text));
    end;


  // * Calculo los 16 SubTotales de la Sección II *
  
  if ( (edtDiplomadosXCantActivTotal.Text <> '') and (edtEntrenamientosXCantActivTotal.Text <> '') and (edtCursosXCantActivTotal.Text <> '')) then
    begin
      edtSubTotal2XCantActivTotal.Text:= IntToStr(  StrToInt(edtDiplomadosXCantActivTotal.Text) + StrToInt(edtEntrenamientosXCantActivTotal.Text) + StrToInt(edtCursosXCantActivTotal.Text));
    end;

  if ( (edtDiplomadosXCantActivUnivMun.Text <> '') and (edtEntrenamientosXCantActivUnivMun.Text <> '') and (edtCursosXCantActivUnivMun.Text <> '')) then
    begin
      edtSubTotal2XCantActivUnivMun.Text:= IntToStr(  StrToInt(edtDiplomadosXCantActivUnivMun.Text) + StrToInt(edtEntrenamientosXCantActivUnivMun.Text) + StrToInt(edtCursosXCantActivUnivMun.Text));
    end;

  if ( (edtDiplomadosXCantActivADistancia.Text <> '') and (edtEntrenamientosXCantActivADistancia.Text <> '') and (edtCursosXCantActivADistancia.Text <> '')) then
    begin
      edtSubTotal2XCantActivADistancia.Text:= IntToStr(  StrToInt(edtDiplomadosXCantActivADistancia.Text) + StrToInt(edtEntrenamientosXCantActivADistancia.Text) + StrToInt(edtCursosXCantActivADistancia.Text));
    end;

  if ( (edtDiplomadosXCantActivExtranjero.Text <> '') and (edtEntrenamientosXCantActivExtranjero.Text <> '') and (edtCursosXCantActivExtranjero.Text <> '')) then
    begin
      edtSubTotal2XCantActivExtranjero.Text:= IntToStr(  StrToInt(edtDiplomadosXCantActivExtranjero.Text) + StrToInt(edtEntrenamientosXCantActivExtranjero.Text) + StrToInt(edtCursosXCantActivExtranjero.Text));
    end;

  if ( (edtDiplomadosXCantParticipTotal.Text <> '') and (edtEntrenamientosXCantParticipTotal.Text <> '') and (edtCursosXCantParticipTotal.Text <> '')) then
    begin
      edtSubTotal2XCantParticipTotal.Text:= IntToStr(  StrToInt(edtDiplomadosXCantParticipTotal.Text) + StrToInt(edtEntrenamientosXCantParticipTotal.Text) + StrToInt(edtCursosXCantParticipTotal.Text));
    end;

  if ( (edtDiplomadosXCantParticipMujeres.Text <> '') and (edtEntrenamientosXCantParticipMujeres.Text <> '') and (edtCursosXCantParticipMujeres.Text <> '')) then
    begin
      edtSubTotal2XCantParticipMujeres.Text:= IntToStr(  StrToInt(edtDiplomadosXCantParticipMujeres.Text) + StrToInt(edtEntrenamientosXCantParticipMujeres.Text) + StrToInt(edtCursosXCantParticipMujeres.Text));
    end;

  if ( (edtDiplomadosXCantParticipExtranjeros.Text <> '') and (edtEntrenamientosXCantParticipExtranjeros.Text <> '') and (edtCursosXCantParticipExtranjeros.Text <> '')) then
    begin
      edtSubTotal2XCantParticipExtranjeros.Text:= IntToStr(  StrToInt(edtDiplomadosXCantParticipExtranjeros.Text) + StrToInt(edtEntrenamientosXCantParticipExtranjeros.Text) + StrToInt(edtCursosXCantParticipExtranjeros.Text));
    end;

  if ( (edtDiplomadosXCantParticipProfTC.Text <> '') and (edtEntrenamientosXCantParticipProfTC.Text <> '') and (edtCursosXCantParticipProfTC.Text <> '')) then
    begin
      edtSubTotal2XCantParticipProfTC.Text:= IntToStr(  StrToInt(edtDiplomadosXCantParticipProfTC.Text) + StrToInt(edtEntrenamientosXCantParticipProfTC.Text) + StrToInt(edtCursosXCantParticipProfTC.Text));
    end;

  if ( (edtDiplomadosXCantParticipProfTP.Text <> '') and (edtEntrenamientosXCantParticipProfTP.Text <> '') and (edtCursosXCantParticipProfTP.Text <> '')) then
    begin
      edtSubTotal2XCantParticipProfTP.Text:= IntToStr(  StrToInt(edtDiplomadosXCantParticipProfTP.Text) + StrToInt(edtEntrenamientosXCantParticipProfTP.Text) + StrToInt(edtCursosXCantParticipProfTP.Text));
    end;

  if ( (edtDiplomadosXCantParticipUnivMun.Text <> '') and (edtEntrenamientosXCantParticipUnivMun.Text <> '') and (edtCursosXCantParticipUnivMun.Text <> '')) then
    begin
      edtSubTotal2XCantParticipUnivMun.Text:= IntToStr(  StrToInt(edtDiplomadosXCantParticipUnivMun.Text) + StrToInt(edtEntrenamientosXCantParticipUnivMun.Text) + StrToInt(edtCursosXCantParticipUnivMun.Text));
    end;

  if ( (edtDiplomadosXCantParticipADistancia.Text <> '') and (edtEntrenamientosXCantParticipADistancia.Text <> '') and (edtCursosXCantParticipADistancia.Text <> '')) then
    begin
      edtSubTotal2XCantParticipADistancia.Text:= IntToStr(  StrToInt(edtDiplomadosXCantParticipADistancia.Text) + StrToInt(edtEntrenamientosXCantParticipADistancia.Text) + StrToInt(edtCursosXCantParticipADistancia.Text));
    end;

  if ( (edtDiplomadosXCantGradTotal.Text <> '') and (edtEntrenamientosXCantGradTotal.Text <> '') and (edtCursosXCantGradTotal.Text <> '')) then
    begin
      edtSubTotal2XCantGradTotal.Text:= IntToStr(  StrToInt(edtDiplomadosXCantGradTotal.Text) + StrToInt(edtEntrenamientosXCantGradTotal.Text) + StrToInt(edtCursosXCantGradTotal.Text));
    end;

  if ( (edtDiplomadosXCantGradMujeres.Text <> '') and (edtEntrenamientosXCantGradMujeres.Text <> '') and (edtCursosXCantGradMujeres.Text <> '')) then
    begin
      edtSubTotal2XCantGradMujeres.Text:= IntToStr(  StrToInt(edtDiplomadosXCantGradMujeres.Text) + StrToInt(edtEntrenamientosXCantGradMujeres.Text) + StrToInt(edtCursosXCantGradMujeres.Text));
    end;

  if ( (edtDiplomadosXCantGradExtranjeros.Text <> '') and (edtEntrenamientosXCantGradExtranjeros.Text <> '') and (edtCursosXCantGradExtranjeros.Text <> '')) then
    begin
      edtSubTotal2XCantGradExtranjeros.Text:= IntToStr(  StrToInt(edtDiplomadosXCantGradExtranjeros.Text) + StrToInt(edtEntrenamientosXCantGradExtranjeros.Text) + StrToInt(edtCursosXCantGradExtranjeros.Text));
    end;

  if ( (edtDiplomadosXCantGradProfTC.Text <> '') and (edtEntrenamientosXCantGradProfTC.Text <> '') and (edtCursosXCantGradProfTC.Text <> '')) then
    begin
      edtSubTotal2XCantGradProfTC.Text:= IntToStr(  StrToInt(edtDiplomadosXCantGradProfTC.Text) + StrToInt(edtEntrenamientosXCantGradProfTC.Text) + StrToInt(edtCursosXCantGradProfTC.Text));
    end;

  if ( (edtDiplomadosXCantGradProfTP.Text <> '') and (edtEntrenamientosXCantGradProfTP.Text <> '') and (edtCursosXCantGradProfTP.Text <> '')) then
    begin
      edtSubTotal2XCantGradProfTP.Text:= IntToStr(  StrToInt(edtDiplomadosXCantGradProfTP.Text) + StrToInt(edtEntrenamientosXCantGradProfTP.Text) + StrToInt(edtCursosXCantGradProfTP.Text));
    end;


    

  //*** Sección III: Postgrado Académico ***

  // * Calculo los 3 totales de Doctorados *
  
  if ( (edtDoctoradosXCantActivUnivMun.Text <> '') and (edtDoctoradosXCantActivADistancia.Text <> '') and (edtDoctoradosXCantActivExtranjero.Text <> '')) then
    begin
      edtDoctoradosXCantActivTotal.Text:= IntToStr(  StrToInt(edtDoctoradosXCantActivUnivMun.Text) + StrToInt(edtDoctoradosXCantActivADistancia.Text) + StrToInt(edtDoctoradosXCantActivExtranjero.Text));
    end;

  if ( (edtDoctoradosXCantParticipMujeres.Text <> '') and (edtDoctoradosXCantParticipExtranjeros.Text <> '') and (edtDoctoradosXCantParticipProfTC.Text <> '') and (edtDoctoradosXCantParticipProfTP.Text <> '') and (edtDoctoradosXCantParticipUnivMun.Text <> '') and (edtDoctoradosXCantParticipADistancia.Text <> '') ) then
    begin
      edtDoctoradosXCantParticipTotal.Text:= IntToStr(  StrToInt(edtDoctoradosXCantParticipMujeres.Text) + StrToInt(edtDoctoradosXCantParticipExtranjeros.Text) + StrToInt(edtDoctoradosXCantParticipProfTC.Text) + StrToInt(edtDoctoradosXCantParticipProfTP.Text) + StrToInt(edtDoctoradosXCantParticipUnivMun.Text) + StrToInt(edtDoctoradosXCantParticipADistancia.Text)  );
    end;

  if ( (edtDoctoradosXCantGradMujeres.Text <> '') and (edtDoctoradosXCantGradExtranjeros.Text <> '') and (edtDoctoradosXCantGradProfTC.Text <> '') and (edtDoctoradosXCantGradProfTP.Text <> '') ) then
    begin
      edtDoctoradosXCantGradTotal.Text:= IntToStr(  StrToInt(edtDoctoradosXCantGradMujeres.Text) + StrToInt(edtDoctoradosXCantGradExtranjeros.Text) + StrToInt(edtDoctoradosXCantGradProfTC.Text) + StrToInt(edtDoctoradosXCantGradProfTP.Text));
    end;
        

  // * Calculo los 3 totales de Especialidades *

  if ( (edtEspecialidadesXCantActivUnivMun.Text <> '') and (edtEspecialidadesXCantActivADistancia.Text <> '') and (edtEspecialidadesXCantActivExtranjero.Text <> '')) then
    begin
      edtEspecialidadesXCantActivTotal.Text:= IntToStr(  StrToInt(edtEspecialidadesXCantActivUnivMun.Text) + StrToInt(edtEspecialidadesXCantActivADistancia.Text) + StrToInt(edtEspecialidadesXCantActivExtranjero.Text));
    end;

  if ( (edtEspecialidadesXCantParticipMujeres.Text <> '') and (edtEspecialidadesXCantParticipExtranjeros.Text <> '') and (edtEspecialidadesXCantParticipProfTC.Text <> '') and (edtEspecialidadesXCantParticipProfTP.Text <> '') and (edtEspecialidadesXCantParticipUnivMun.Text <> '') and (edtEspecialidadesXCantParticipADistancia.Text <> '') ) then
    begin
      edtEspecialidadesXCantParticipTotal.Text:= IntToStr(  StrToInt(edtEspecialidadesXCantParticipMujeres.Text) + StrToInt(edtEspecialidadesXCantParticipExtranjeros.Text) + StrToInt(edtEspecialidadesXCantParticipProfTC.Text) + StrToInt(edtEspecialidadesXCantParticipProfTP.Text) + StrToInt(edtEspecialidadesXCantParticipUnivMun.Text) + StrToInt(edtEspecialidadesXCantParticipADistancia.Text)  );
    end;

  if ( (edtEspecialidadesXCantGradMujeres.Text <> '') and (edtEspecialidadesXCantGradExtranjeros.Text <> '') and (edtEspecialidadesXCantGradProfTC.Text <> '') and (edtEspecialidadesXCantGradProfTP.Text <> '') ) then
    begin
      edtEspecialidadesXCantGradTotal.Text:= IntToStr(  StrToInt(edtEspecialidadesXCantGradMujeres.Text) + StrToInt(edtEspecialidadesXCantGradExtranjeros.Text) + StrToInt(edtEspecialidadesXCantGradProfTC.Text) + StrToInt(edtEspecialidadesXCantGradProfTP.Text));
    end;  


  // * Calculo los 3 totales de Maestrias *

  if ( (edtMaestriasXCantActivUnivMun.Text <> '') and (edtMaestriasXCantActivADistancia.Text <> '') and (edtMaestriasXCantActivExtranjero.Text <> '')) then
    begin
      edtMaestriasXCantActivTotal.Text:= IntToStr(  StrToInt(edtMaestriasXCantActivUnivMun.Text) + StrToInt(edtMaestriasXCantActivADistancia.Text) + StrToInt(edtMaestriasXCantActivExtranjero.Text));
    end;

  if ( (edtMaestriasXCantParticipMujeres.Text <> '') and (edtMaestriasXCantParticipExtranjeros.Text <> '') and (edtMaestriasXCantParticipProfTC.Text <> '') and (edtMaestriasXCantParticipProfTP.Text <> '') and (edtMaestriasXCantParticipUnivMun.Text <> '') and (edtMaestriasXCantParticipADistancia.Text <> '') ) then
    begin
      edtMaestriasXCantParticipTotal.Text:= IntToStr(  StrToInt(edtMaestriasXCantParticipMujeres.Text) + StrToInt(edtMaestriasXCantParticipExtranjeros.Text) + StrToInt(edtMaestriasXCantParticipProfTC.Text) + StrToInt(edtMaestriasXCantParticipProfTP.Text) + StrToInt(edtMaestriasXCantParticipUnivMun.Text) + StrToInt(edtMaestriasXCantParticipADistancia.Text)  );
    end;

  if ( (edtMaestriasXCantGradMujeres.Text <> '') and (edtMaestriasXCantGradExtranjeros.Text <> '') and (edtMaestriasXCantGradProfTC.Text <> '') and (edtMaestriasXCantGradProfTP.Text <> '') ) then
    begin
      edtMaestriasXCantGradTotal.Text:= IntToStr(  StrToInt(edtMaestriasXCantGradMujeres.Text) + StrToInt(edtMaestriasXCantGradExtranjeros.Text) + StrToInt(edtMaestriasXCantGradProfTC.Text) + StrToInt(edtMaestriasXCantGradProfTP.Text));
    end;


  // * Calculo los 16 SubTotales de la Sección III *
  
  if ( (edtDoctoradosXCantActivTotal.Text <> '') and (edtEspecialidadesXCantActivTotal.Text <> '') and (edtMaestriasXCantActivTotal.Text <> '')) then
    begin
      edtSubTotal3XCantActivTotal.Text:= IntToStr(  StrToInt(edtDoctoradosXCantActivTotal.Text) + StrToInt(edtEspecialidadesXCantActivTotal.Text) + StrToInt(edtMaestriasXCantActivTotal.Text));
    end;

  if ( (edtDoctoradosXCantActivUnivMun.Text <> '') and (edtEspecialidadesXCantActivUnivMun.Text <> '') and (edtMaestriasXCantActivUnivMun.Text <> '')) then
    begin
      edtSubTotal3XCantActivUnivMun.Text:= IntToStr(  StrToInt(edtDoctoradosXCantActivUnivMun.Text) + StrToInt(edtEspecialidadesXCantActivUnivMun.Text) + StrToInt(edtMaestriasXCantActivUnivMun.Text));
    end;

  if ( (edtDoctoradosXCantActivADistancia.Text <> '') and (edtEspecialidadesXCantActivADistancia.Text <> '') and (edtMaestriasXCantActivADistancia.Text <> '')) then
    begin
      edtSubTotal3XCantActivADistancia.Text:= IntToStr(  StrToInt(edtDoctoradosXCantActivADistancia.Text) + StrToInt(edtEspecialidadesXCantActivADistancia.Text) + StrToInt(edtMaestriasXCantActivADistancia.Text));
    end;

  if ( (edtDoctoradosXCantActivExtranjero.Text <> '') and (edtEspecialidadesXCantActivExtranjero.Text <> '') and (edtMaestriasXCantActivExtranjero.Text <> '')) then
    begin
      edtSubTotal3XCantActivExtranjero.Text:= IntToStr(  StrToInt(edtDoctoradosXCantActivExtranjero.Text) + StrToInt(edtEspecialidadesXCantActivExtranjero.Text) + StrToInt(edtMaestriasXCantActivExtranjero.Text));
    end;

  if ( (edtDoctoradosXCantParticipTotal.Text <> '') and (edtEspecialidadesXCantParticipTotal.Text <> '') and (edtMaestriasXCantParticipTotal.Text <> '')) then
    begin
      edtSubTotal3XCantParticipTotal.Text:= IntToStr(  StrToInt(edtDoctoradosXCantParticipTotal.Text) + StrToInt(edtEspecialidadesXCantParticipTotal.Text) + StrToInt(edtMaestriasXCantParticipTotal.Text));
    end;

  if ( (edtDoctoradosXCantParticipMujeres.Text <> '') and (edtEspecialidadesXCantParticipMujeres.Text <> '') and (edtMaestriasXCantParticipMujeres.Text <> '')) then
    begin
      edtSubTotal3XCantParticipMujeres.Text:= IntToStr(  StrToInt(edtDoctoradosXCantParticipMujeres.Text) + StrToInt(edtEspecialidadesXCantParticipMujeres.Text) + StrToInt(edtMaestriasXCantParticipMujeres.Text));
    end;

  if ( (edtDoctoradosXCantParticipExtranjeros.Text <> '') and (edtEspecialidadesXCantParticipExtranjeros.Text <> '') and (edtMaestriasXCantParticipExtranjeros.Text <> '')) then
    begin
      edtSubTotal3XCantParticipExtranjeros.Text:= IntToStr(  StrToInt(edtDoctoradosXCantParticipExtranjeros.Text) + StrToInt(edtEspecialidadesXCantParticipExtranjeros.Text) + StrToInt(edtMaestriasXCantParticipExtranjeros.Text));
    end;

  if ( (edtDoctoradosXCantParticipProfTC.Text <> '') and (edtEspecialidadesXCantParticipProfTC.Text <> '') and (edtMaestriasXCantParticipProfTC.Text <> '')) then
    begin
      edtSubTotal3XCantParticipProfTC.Text:= IntToStr(  StrToInt(edtDoctoradosXCantParticipProfTC.Text) + StrToInt(edtEspecialidadesXCantParticipProfTC.Text) + StrToInt(edtMaestriasXCantParticipProfTC.Text));
    end;

  if ( (edtDoctoradosXCantParticipProfTP.Text <> '') and (edtEspecialidadesXCantParticipProfTP.Text <> '') and (edtMaestriasXCantParticipProfTP.Text <> '')) then
    begin
      edtSubTotal3XCantParticipProfTP.Text:= IntToStr(  StrToInt(edtDoctoradosXCantParticipProfTP.Text) + StrToInt(edtEspecialidadesXCantParticipProfTP.Text) + StrToInt(edtMaestriasXCantParticipProfTP.Text));
    end;

  if ( (edtDoctoradosXCantParticipUnivMun.Text <> '') and (edtEspecialidadesXCantParticipUnivMun.Text <> '') and (edtMaestriasXCantParticipUnivMun.Text <> '')) then
    begin
      edtSubTotal3XCantParticipUnivMun.Text:= IntToStr(  StrToInt(edtDoctoradosXCantParticipUnivMun.Text) + StrToInt(edtEspecialidadesXCantParticipUnivMun.Text) + StrToInt(edtMaestriasXCantParticipUnivMun.Text));
    end;

  if ( (edtDoctoradosXCantParticipADistancia.Text <> '') and (edtEspecialidadesXCantParticipADistancia.Text <> '') and (edtMaestriasXCantParticipADistancia.Text <> '')) then
    begin
      edtSubTotal3XCantParticipADistancia.Text:= IntToStr(  StrToInt(edtDoctoradosXCantParticipADistancia.Text) + StrToInt(edtEspecialidadesXCantParticipADistancia.Text) + StrToInt(edtMaestriasXCantParticipADistancia.Text));
    end;

  if ( (edtDoctoradosXCantGradTotal.Text <> '') and (edtEspecialidadesXCantGradTotal.Text <> '') and (edtMaestriasXCantGradTotal.Text <> '')) then
    begin
      edtSubTotal3XCantGradTotal.Text:= IntToStr(  StrToInt(edtDoctoradosXCantGradTotal.Text) + StrToInt(edtEspecialidadesXCantGradTotal.Text) + StrToInt(edtMaestriasXCantGradTotal.Text));
    end;

  if ( (edtDoctoradosXCantGradMujeres.Text <> '') and (edtEspecialidadesXCantGradMujeres.Text <> '') and (edtMaestriasXCantGradMujeres.Text <> '')) then
    begin
      edtSubTotal3XCantGradMujeres.Text:= IntToStr(  StrToInt(edtDoctoradosXCantGradMujeres.Text) + StrToInt(edtEspecialidadesXCantGradMujeres.Text) + StrToInt(edtMaestriasXCantGradMujeres.Text));
    end;

  if ( (edtDoctoradosXCantGradExtranjeros.Text <> '') and (edtEspecialidadesXCantGradExtranjeros.Text <> '') and (edtMaestriasXCantGradExtranjeros.Text <> '')) then
    begin
      edtSubTotal3XCantGradExtranjeros.Text:= IntToStr(  StrToInt(edtDoctoradosXCantGradExtranjeros.Text) + StrToInt(edtEspecialidadesXCantGradExtranjeros.Text) + StrToInt(edtMaestriasXCantGradExtranjeros.Text));
    end;

  if ( (edtDoctoradosXCantGradProfTC.Text <> '') and (edtEspecialidadesXCantGradProfTC.Text <> '') and (edtMaestriasXCantGradProfTC.Text <> '')) then
    begin
      edtSubTotal3XCantGradProfTC.Text:= IntToStr(  StrToInt(edtDoctoradosXCantGradProfTC.Text) + StrToInt(edtEspecialidadesXCantGradProfTC.Text) + StrToInt(edtMaestriasXCantGradProfTC.Text));
    end;

  if ( (edtDoctoradosXCantGradProfTP.Text <> '') and (edtEspecialidadesXCantGradProfTP.Text <> '') and (edtMaestriasXCantGradProfTP.Text <> '')) then
    begin
      edtSubTotal3XCantGradProfTP.Text:= IntToStr(  StrToInt(edtDoctoradosXCantGradProfTP.Text) + StrToInt(edtEspecialidadesXCantGradProfTP.Text) + StrToInt(edtMaestriasXCantGradProfTP.Text));
    end;



    
  // *** Calculo los 16 Totales de la Planilla 1164-01 ***

  if ( (edtSubTotal2XCantActivTotal.Text <> '') and (edtSubTotal3XCantActivTotal.Text <> '') ) then
    begin
      edtTotalXCantActivTotal.Text:= IntToStr(  StrToInt(edtSubTotal2XCantActivTotal.Text) + StrToInt(edtSubTotal3XCantActivTotal.Text)  );
    end;

  if ( (edtSubTotal2XCantActivUnivMun.Text <> '') and (edtSubTotal3XCantActivUnivMun.Text <> '') ) then
    begin
      edtTotalXCantActivUnivMun.Text:= IntToStr(  StrToInt(edtSubTotal2XCantActivUnivMun.Text) + StrToInt(edtSubTotal3XCantActivUnivMun.Text) );
    end;

  if ( (edtSubTotal2XCantActivADistancia.Text <> '') and (edtSubTotal3XCantActivADistancia.Text <> '') ) then
    begin
      edtTotalXCantActivADistancia.Text:= IntToStr(  StrToInt(edtSubTotal2XCantActivADistancia.Text) + StrToInt(edtSubTotal3XCantActivADistancia.Text) );
    end;

  if ( (edtSubTotal2XCantActivExtranjero.Text <> '') and (edtSubTotal3XCantActivExtranjero.Text <> '') ) then
    begin
      edtTotalXCantActivExtranjero.Text:= IntToStr(  StrToInt(edtSubTotal2XCantActivExtranjero.Text) + StrToInt(edtSubTotal3XCantActivExtranjero.Text) );
    end;

  if ( (edtSubTotal2XCantParticipTotal.Text <> '') and (edtSubTotal3XCantParticipTotal.Text <> '') ) then
    begin
      edtTotalXCantParticipTotal.Text:= IntToStr(  StrToInt(edtSubTotal2XCantParticipTotal.Text) + StrToInt(edtSubTotal3XCantParticipTotal.Text) );
    end;

  if ( (edtSubTotal2XCantParticipMujeres.Text <> '') and (edtSubTotal3XCantParticipMujeres.Text <> '') ) then
    begin
      edtTotalXCantParticipMujeres.Text:= IntToStr(  StrToInt(edtSubTotal2XCantParticipMujeres.Text) + StrToInt(edtSubTotal3XCantParticipMujeres.Text) );
    end;

  if ( (edtSubTotal2XCantParticipExtranjeros.Text <> '') and (edtSubTotal3XCantParticipExtranjeros.Text <> '') ) then
    begin
      edtTotalXCantParticipExtranjeros.Text:= IntToStr(  StrToInt(edtSubTotal2XCantParticipExtranjeros.Text) + StrToInt(edtSubTotal3XCantParticipExtranjeros.Text) );
    end;

  if ( (edtSubTotal2XCantParticipProfTC.Text <> '') and (edtSubTotal3XCantParticipProfTC.Text <> '') ) then
    begin
      edtTotalXCantParticipProfTC.Text:= IntToStr(  StrToInt(edtSubTotal2XCantParticipProfTC.Text) + StrToInt(edtSubTotal3XCantParticipProfTC.Text) );
    end;

  if ( (edtSubTotal2XCantParticipProfTP.Text <> '') and (edtSubTotal3XCantParticipProfTP.Text <> '') ) then
    begin
      edtTotalXCantParticipProfTP.Text:= IntToStr(  StrToInt(edtSubTotal2XCantParticipProfTP.Text) + StrToInt(edtSubTotal3XCantParticipProfTP.Text) );
    end;

  if ( (edtSubTotal2XCantParticipUnivMun.Text <> '') and (edtSubTotal3XCantParticipUnivMun.Text <> '') ) then
    begin
      edtTotalXCantParticipUnivMun.Text:= IntToStr(  StrToInt(edtSubTotal2XCantParticipUnivMun.Text) + StrToInt(edtSubTotal3XCantParticipUnivMun.Text) );
    end;

  if ( (edtSubTotal2XCantParticipADistancia.Text <> '') and (edtSubTotal3XCantParticipADistancia.Text <> '') ) then
    begin
      edtTotalXCantParticipADistancia.Text:= IntToStr(  StrToInt(edtSubTotal2XCantParticipADistancia.Text) + StrToInt(edtSubTotal3XCantParticipADistancia.Text) );
    end;

  if ( (edtSubTotal2XCantGradTotal.Text <> '') and (edtSubTotal3XCantGradTotal.Text <> '') ) then
    begin
      edtTotalXCantGradTotal.Text:= IntToStr(  StrToInt(edtSubTotal2XCantGradTotal.Text) + StrToInt(edtSubTotal3XCantGradTotal.Text) );
    end;

  if ( (edtSubTotal2XCantGradMujeres.Text <> '') and (edtSubTotal3XCantGradMujeres.Text <> '') ) then
    begin
      edtTotalXCantGradMujeres.Text:= IntToStr(  StrToInt(edtSubTotal2XCantGradMujeres.Text) + StrToInt(edtSubTotal3XCantGradMujeres.Text) );
    end;

  if ( (edtSubTotal2XCantGradExtranjeros.Text <> '') and (edtSubTotal3XCantGradExtranjeros.Text <> '') ) then
    begin
      edtTotalXCantGradExtranjeros.Text:= IntToStr(  StrToInt(edtSubTotal2XCantGradExtranjeros.Text) + StrToInt(edtSubTotal3XCantGradExtranjeros.Text) );
    end;

  if ( (edtSubTotal2XCantGradProfTC.Text <> '') and (edtSubTotal3XCantGradProfTC.Text <> '') ) then
    begin
      edtTotalXCantGradProfTC.Text:= IntToStr(  StrToInt(edtSubTotal2XCantGradProfTC.Text) + StrToInt(edtSubTotal3XCantGradProfTC.Text) );
    end;

  if ( (edtSubTotal2XCantGradProfTP.Text <> '') and (edtSubTotal3XCantGradProfTP.Text <> '') ) then
    begin
      edtTotalXCantGradProfTP.Text:= IntToStr(  StrToInt(edtSubTotal2XCantGradProfTP.Text) + StrToInt(edtSubTotal3XCantGradProfTP.Text) );
    end;
end;



end.
