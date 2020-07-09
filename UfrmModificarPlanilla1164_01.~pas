unit UfrmModificarPlanilla1164_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils,

  UPlanilla1164_01, UGestionDocente, LbButton,

  //DataModules
  UDataModuleInformes,

  //Clases entidad confeccionadas por mí
  UFicheroPlanilla1164_01,  

  //Reportes usando QuickReport
  UfrmQRReportePlanilla1164_01,
  UfrmPreviewReportePlanilla1164_01,

    

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, AdvGroupBox, AdvOfficePager, AdvOfficePagerStylers, DBCtrls,
  ComCtrls, AdvOfficeComboBox, Mask, ExportPack, CabSTComps, AppEvnts,
  AdvGlassButton;

  
type
  TfrmModificarPlanilla1164_01 = class(TForm)
    lblNombre: TLabel;
    btnAceptar: TLbButton;
    btnResetear: TLbButton;
    btnCancelar: TLbButton;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblProvincia: TLabel;
    DBlucmbxMunicipio: TDBLookupComboBox;
    lblMunicipio: TLabel;
    dtpAnno: TDateTimePicker;
    lblAnnoParte1PlanillasProvinciales: TLabel;
    Memo5: TMemo;
    Memo2: TMemo;
    Memo1: TMemo;
    Memo3: TMemo;
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
    Edit82: TEdit;
    Edit131: TEdit;
    Edit132: TEdit;
    Edit133: TEdit;
    Edit134: TEdit;
    Edit135: TEdit;
    Edit136: TEdit;
    Edit137: TEdit;
    Edit138: TEdit;
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
    cmbxProvincia: TAdvOfficeSelector;
    DBedtNombreCentroInformante: TDBEdit;
    DBedtCodigoCentroInformante: TDBEdit;
    DBedtNombreDirectorEconomico: TDBEdit;
    DBedtNombreRectorODirector: TDBEdit;
    DBedtDoctoresXTotal: TDBEdit;
    DBedtDoctoresXCantGrad: TDBEdit;
    DBedtDoctoresXCantParticip: TDBEdit;
    DBedtDiplomadosXCantActivTotal: TDBEdit;
    DBedtDiplomadosXCantActivADistancia: TDBEdit;
    DBedtDiplomadosXCantActivUnivMun: TDBEdit;
    DBedtDiplomadosXCantActivExtranjero: TDBEdit;
    DBedtDiplomadosXCantParticipTotal: TDBEdit;
    DBedtDiplomadosXCantParticipMujeres: TDBEdit;
    DBedtDiplomadosXCantParticipExtranjeros: TDBEdit;
    DBedtDiplomadosXCantParticipProfTC: TDBEdit;
    DBedtDiplomadosXCantParticipProfTP: TDBEdit;
    DBedtDiplomadosXCantParticipUnivMun: TDBEdit;
    DBedtDiplomadosXCantParticipADistancia: TDBEdit;
    DBedtDiplomadosXCantGradTotal: TDBEdit;
    DBedtDiplomadosXCantGradMujeres: TDBEdit;
    DBedtDiplomadosXCantGradExtranjeros: TDBEdit;
    DBedtDiplomadosXCantGradProfTC: TDBEdit;
    DBedtDiplomadosXCantGradProfTP: TDBEdit;
    DBedtEntrenamientosXCantActivTotal: TDBEdit;
    DBedtEntrenamientosXCantActivUnivMun: TDBEdit;
    DBedtEntrenamientosXCantActivADistancia: TDBEdit;
    DBedtEntrenamientosXCantActivExtranjero: TDBEdit;
    DBedtEntrenamientosXCantParticipTotal: TDBEdit;
    DBedtEntrenamientosXCantParticipMujeres: TDBEdit;
    DBedtEntrenamientosXCantParticipExtranjeros: TDBEdit;
    DBedtEntrenamientosXCantParticipProfTC: TDBEdit;
    DBedtEntrenamientosXCantParticipProfTP: TDBEdit;
    DBedtEntrenamientosXCantParticipUnivMun: TDBEdit;
    DBedtEntrenamientosXCantParticipADistancia: TDBEdit;
    DBedtEntrenamientosXCantGradTotal: TDBEdit;
    DBedtEntrenamientosXCantGradMujeres: TDBEdit;
    DBedtEntrenamientosXCantGradExtranjeros: TDBEdit;
    DBedtEntrenamientosXCantGradProfTC: TDBEdit;
    DBedtEntrenamientosXCantGradProfTP: TDBEdit;
    DBedtCursosXCantActivTotal: TDBEdit;
    DBedtCursosXCantActivUnivMun: TDBEdit;
    DBedtCursosXCantActivADistancia: TDBEdit;
    DBedtCursosXCantActivExtranjero: TDBEdit;
    DBedtCursosXCantParticipTotal: TDBEdit;
    DBedtCursosXCantParticipMujeres: TDBEdit;
    DBedtCursosXCantParticipExtranjeros: TDBEdit;
    DBedtCursosXCantParticipProfTC: TDBEdit;
    DBedtCursosXCantParticipProfTP: TDBEdit;
    DBedtCursosXCantParticipUnivMun: TDBEdit;
    DBedtCursosXCantParticipADistancia: TDBEdit;
    DBedtCursosXCantGradTotal: TDBEdit;
    DBedtCursosXCantGradMujeres: TDBEdit;
    DBedtCursosXCantGradExtranjeros: TDBEdit;
    DBedtCursosXCantGradProfTC: TDBEdit;
    DBedtCursosXCantGradProfTP: TDBEdit;
    DBedtSubTotal2XCantActivTotal: TDBEdit;
    DBedtSubTotal2XCantActivUnivMun: TDBEdit;
    DBedtSubTotal2XCantActivADistancia: TDBEdit;
    DBedtSubTotal2XCantActivExtranjero: TDBEdit;
    DBedtSubTotal2XCantParticipTotal: TDBEdit;
    DBedtSubTotal2XCantParticipMujeres: TDBEdit;
    DBedtSubTotal2XCantParticipExtranjeros: TDBEdit;
    DBedtSubTotal2XCantParticipProfTC: TDBEdit;
    DBedtSubTotal2XCantParticipProfTP: TDBEdit;
    DBedtSubTotal2XCantParticipUnivMun: TDBEdit;
    DBedtSubTotal2XCantParticipADistancia: TDBEdit;
    DBedtSubTotal2XCantGradTotal: TDBEdit;
    DBedtSubTotal2XCantGradMujeres: TDBEdit;
    DBedtSubTotal2XCantGradExtranjeros: TDBEdit;
    DBedtSubTotal2XCantGradProfTC: TDBEdit;
    DBedtSubTotal2XCantGradProfTP: TDBEdit;
    DBedtDoctoradosXCantActivTotal: TDBEdit;
    DBedtDoctoradosXCantActivUnivMun: TDBEdit;
    DBedtDoctoradosXCantActivADistancia: TDBEdit;
    DBedtDoctoradosXCantActivExtranjero: TDBEdit;
    DBedtDoctoradosXCantParticipTotal: TDBEdit;
    DBedtDoctoradosXCantParticipMujeres: TDBEdit;
    DBedtDoctoradosXCantParticipExtranjeros: TDBEdit;
    DBedtDoctoradosXCantParticipProfTC: TDBEdit;
    DBedtDoctoradosXCantParticipProfTP: TDBEdit;
    DBedtDoctoradosXCantParticipUnivMun: TDBEdit;
    DBedtDoctoradosXCantParticipADistancia: TDBEdit;
    DBedtDoctoradosXCantGradTotal: TDBEdit;
    DBedtDoctoradosXCantGradMujeres: TDBEdit;
    DBedtDoctoradosXCantGradExtranjeros: TDBEdit;
    DBedtDoctoradosXCantGradProfTC: TDBEdit;
    DBedtDoctoradosXCantGradProfTP: TDBEdit;
    DBedtEspecialidadesXCantActivTotal: TDBEdit;
    DBedtEspecialidadesXCantActivUnivMun: TDBEdit;
    DBedtEspecialidadesXCantActivADistancia: TDBEdit;
    DBedtEspecialidadesXCantActivExtranjero: TDBEdit;
    DBedtEspecialidadesXCantParticipTotal: TDBEdit;
    DBedtEspecialidadesXCantParticipMujeres: TDBEdit;
    DBedtEspecialidadesXCantParticipExtranjeros: TDBEdit;
    DBedtEspecialidadesXCantParticipProfTC: TDBEdit;
    DBedtEspecialidadesXCantParticipProfTP: TDBEdit;
    DBedtEspecialidadesXCantParticipUnivMun: TDBEdit;
    DBedtEspecialidadesXCantParticipADistancia: TDBEdit;
    DBedtEspecialidadesXCantGradTotal: TDBEdit;
    DBedtEspecialidadesXCantGradMujeres: TDBEdit;
    DBedtEspecialidadesXCantGradExtranjeros: TDBEdit;
    DBedtEspecialidadesXCantGradProfTC: TDBEdit;
    DBedtEspecialidadesXCantGradProfTP: TDBEdit;
    DBedtMaestriasXCantActivTotal: TDBEdit;
    DBedtMaestriasXCantActivUnivMun: TDBEdit;
    DBedtMaestriasXCantActivADistancia: TDBEdit;
    DBedtMaestriasXCantActivExtranjero: TDBEdit;
    DBedtMaestriasXCantParticipTotal: TDBEdit;
    DBedtMaestriasXCantParticipMujeres: TDBEdit;
    DBedtMaestriasXCantParticipExtranjeros: TDBEdit;
    DBedtMaestriasXCantParticipProfTC: TDBEdit;
    DBedtMaestriasXCantParticipProfTP: TDBEdit;
    DBedtMaestriasXCantParticipUnivMun: TDBEdit;
    DBedtMaestriasXCantParticipADistancia: TDBEdit;
    DBedtMaestriasXCantGradTotal: TDBEdit;
    DBedtMaestriasXCantGradMujeres: TDBEdit;
    DBedtMaestriasXCantGradExtranjeros: TDBEdit;
    DBedtMaestriasXCantGradProfTC: TDBEdit;
    DBedtMaestriasXCantGradProfTP: TDBEdit;
    DBedtSubTotal3XCantActivTotal: TDBEdit;
    DBedtSubTotal3XCantActivUnivMun: TDBEdit;
    DBedtSubTotal3XCantActivADistancia: TDBEdit;
    DBedtSubTotal3XCantActivExtranjero: TDBEdit;
    DBedtSubTotal3XCantParticipTotal: TDBEdit;
    DBedtSubTotal3XCantParticipMujeres: TDBEdit;
    DBedtSubTotal3XCantParticipExtranjeros: TDBEdit;
    DBedtSubTotal3XCantParticipProfTC: TDBEdit;
    DBedtSubTotal3XCantParticipProfTP: TDBEdit;
    DBedtSubTotal3XCantParticipUnivMun: TDBEdit;
    DBedtSubTotal3XCantParticipADistancia: TDBEdit;
    DBedtSubTotal3XCantGradTotal: TDBEdit;
    DBedtSubTotal3XCantGradMujeres: TDBEdit;
    DBedtSubTotal3XCantGradExtranjeros: TDBEdit;
    DBedtSubTotal3XCantGradProfTC: TDBEdit;
    DBedtSubTotal3XCantGradProfTP: TDBEdit;
    DBedtTotalXCantActivTotal: TDBEdit;
    DBedtTotalXCantActivUnivMun: TDBEdit;
    DBedtTotalXCantActivADistancia: TDBEdit;
    DBedtTotalXCantActivExtranjero: TDBEdit;
    DBedtTotalXCantParticipTotal: TDBEdit;
    DBedtTotalXCantParticipMujeres: TDBEdit;
    DBedtTotalXCantParticipExtranjeros: TDBEdit;
    DBedtTotalXCantParticipProfTC: TDBEdit;
    DBedtTotalXCantParticipProfTP: TDBEdit;
    DBedtTotalXCantParticipUnivMun: TDBEdit;
    DBedtTotalXCantParticipADistancia: TDBEdit;
    DBedtTotalXCantGradTotal: TDBEdit;
    DBedtTotalXCantGradMujeres: TDBEdit;
    DBedtTotalXCantGradExtranjeros: TDBEdit;
    DBedtTotalXCantGradProfTC: TDBEdit;
    DBedtTotalXCantGradProfTP: TDBEdit;
    DBtxtID_MunicipioBuscado: TDBText;
    DBtxtMunicipio: TDBText;
    DBtxtAnno: TDBText;
    AdvGroupBox2: TAdvGroupBox;
    btnExportarHaciaPDFPlanilla1164_01: TLbButton;
    btnPrevisualizarPlanilla1164_01: TLbButton;
    btnImprimirPlanilla1164_01: TLbButton;
    EXQR: TExportQR;
    ApplicationEvents: TApplicationEvents;
    STCabReader: TSTCabReader;
    OpenDialog: TOpenDialog;
    btnImportarPlanillaDesdeFichero: TAdvGlassButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnResetearClick(Sender: TObject);
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
    procedure btnPrevisualizarPlanilla1164_01Click(Sender: TObject);
    procedure btnExportarHaciaPDFPlanilla1164_01Click(Sender: TObject);
    procedure btnImprimirPlanilla1164_01Click(Sender: TObject);
    procedure btnImportarPlanillaDesdeFicheroClick(Sender: TObject);
    procedure ApplicationEventsIdle(Sender: TObject; var Done: Boolean); //Para usuarios
    
  private

    function EstanLlenosLosCampos: Boolean;
    function ElMunicipioFueSeleccionado: Boolean;

    procedure ImportarPlanilla1164_01DesdeFichero;

    procedure RellenarPlanillaTemporal(aPlanilla: TPlanilla1164_01);
    procedure RellenarComponentesDesdePlanilla1164_01(aPlanilla1164_01: TPlanilla1164_01);

    procedure ReposicionarComponentesNoDirectos;

    procedure ResetearComponentes;
    procedure BlanquearDBEditsDeLaForma;
    procedure ColorearDBEditsVacios;
    procedure BlanquearDBEditsLlenos;

    function QuitaEn(Cadena, Esto: String): String;

    //Trabajo con ficheros *.P01
    procedure ExtraerFicheroP01(aPath: AnsiString);

    procedure PrevisualizarReportePlanilla1164_01;
    procedure ExportarHaciaPDFReportePlanilla1164_01;
    procedure ImprimirReportePlanilla1164_01;

    { Private declarations }
  public
    { Public declarations }
    FID_Planilla: Integer;
    FProvincia: AnsiString;
  end;

var
  frmModificarPlanilla1164_01: TfrmModificarPlanilla1164_01;

implementation
var
    BookLogger: TGestionDocente;
    PaisItemIndex, MunicipioItemIndex: Integer;
    TempViejaPlanilla, TempNuevaPlanilla: TPlanilla1164_01;

    //*** Variables de trabajo con archivos ***
    FicheroPlanilla1164_01: TFicheroPlanilla1164_01;    
    
{$R *.dfm}

procedure TfrmModificarPlanilla1164_01.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmModificarPlanilla1164_01.Close;
end;



procedure TfrmModificarPlanilla1164_01.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmModificarPlanilla1164_01.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);

  //Muestro todos los datos de la Planilla
  BookLogger.BuscarPlanilla1164_01PorID_Planilla(FID_Planilla);

  //Reposiciono los componentes no directos
  ReposicionarComponentesNoDirectos;

  //Creo una Planilla 1164-01 vieja temporal
  TempViejaPlanilla:= TPlanilla1164_01.Create;

  //Relleno la vieja planilla temporal con los datos iniciales
  RellenarPlanillaTemporal(TempViejaPlanilla);

  //Blanqueo todos los DBEdits
  BlanquearDBEditsDeLaForma;
end;



procedure TfrmModificarPlanilla1164_01.btnAceptarClick(Sender: TObject);
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
                    Codigo:= DBedtCodigoCentroInformante.Field.Text;
                    
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

                    //Valido si cambiaron el Año o el Codigo
                    if (   (Codigo <> TempViejaPlanilla.CodigoCentroInformante) or (Anno <> TempViejaPlanilla.Anno)   )
                      then
                        begin
                          //Busco una planilla con el mismo NUEVO posicionamiento, para ver si ya existe
                          BookLogger.BuscarPlanilla1164_01PorCodigoYAnno(Codigo, Anno);
                    
                          //Valido que no exista una planilla igual en la BD
                          if (BookLogger.ExistePlanilla1164_01PorCodigoYAnno = False)
                            then
                              begin
                                //Creo una nueva planilla 1164-01 temporal
                                TempNuevaPlanilla:= TPlanilla1164_01.Create;

                                //Relleno la nueva planilla 1164-01 temporal
                                RellenarPlanillaTemporal(TempNuevaPlanilla);

                                //modifico con la nueva planilla 1164-01 temporal
                                BookLogger.ModificarPlanilla1164_01PorID_Planilla(TempNuevaPlanilla);

                                //Inserto la traza
                                BookLogger.GuardarTrazaDelSistema('Modificó una planilla 1164-01, para la provincia de ' + cmbxProvincia.Text + ', municipio ' + DBlucmbxMunicipio.Text + ', año ' + IntToStr(TempNuevaPlanilla.Anno) + ' y referente al centro ' + TempNuevaPlanilla.NombreCentroInformante );

                                //Actualizo todas las trazas
                                BookLogger.MostrarTodasLasTrazas;
                    
                                //Cierro la forma
                                frmModificarPlanilla1164_01.Close;
                              end
                                else
                                  begin
                                    MessageDlg('Ya existe una planilla con el mismo Código del Centro Informante,' + #13 + 'y para el mismo Año. La planilla no puede ser insertada.', mtError, [mbOk], 0);
                                  end;
                        end
                          else
                            begin //No cambiaron el codigo ni el año (modifico directamente)
                              //Creo una nueva planilla 1164-01 temporal
                              TempNuevaPlanilla:= TPlanilla1164_01.Create;

                              //Relleno la nueva planilla 1164-01 temporal
                              RellenarPlanillaTemporal(TempNuevaPlanilla);

                              //modifico con la nueva planilla 1164-01 temporal
                              BookLogger.ModificarPlanilla1164_01PorID_Planilla(TempNuevaPlanilla);

                              //Inserto la traza
                              BookLogger.GuardarTrazaDelSistema('Modificó una planilla 1164-01, para la provincia de ' + cmbxProvincia.Text + ', municipio ' + DBlucmbxMunicipio.Text + ', año ' + IntToStr(TempNuevaPlanilla.Anno) + ' y referente al centro ' + TempNuevaPlanilla.NombreCentroInformante );

                              //Actualizo todas las trazas
                              BookLogger.MostrarTodasLasTrazas;
                    
                              //Cierro la forma
                              frmModificarPlanilla1164_01.Close;
                            end;
                  end
                    else
                      begin
                        MessageDlg('Quedan campos de la planilla por llenar.' + #13 + 'Los mismos estarán marcados en rojo.', mtError, [mbOk], 0);

                        //Blanqueo los Edits llenos
                        BlanquearDBEditsLlenos;

                        //Coloreo los Edits vacios
                        ColorearDBEditsVacios;
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
            frmModificarPlanilla1164_01.Close;
          end;
end;




procedure TfrmModificarPlanilla1164_01.btnResetearClick(Sender: TObject);
begin
  //Reseteo todos los componentes
  ResetearComponentes;

  //Blanqueo todos los DBEdits
  BlanquearDBEditsDeLaForma;
end;



procedure TfrmModificarPlanilla1164_01.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmModificarPlanilla1164_01.SoloCorreosElectronicosKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', '.', '_', '@', #8, #13]) then Abort;
end;



procedure TfrmModificarPlanilla1164_01.SoloLetrasConEspaciosYPuntuacionKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmModificarPlanilla1164_01.SoloLetrasSinEspaciosNiTildesKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;



procedure TfrmModificarPlanilla1164_01.SoloLetrasYNumerosConPuntuacionYEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', '0'..'9', ' ', #8, #13]) then Abort;
end;



procedure TfrmModificarPlanilla1164_01.SoloLetrasYNumerosSinPuntuacionNiEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;



procedure TfrmModificarPlanilla1164_01.SoloNumerosSinEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then btnAceptar.Click;

  //Valido para solo numeros
  if not (Key in['0'..'9', #8, #13]) then Abort;
end;



procedure TfrmModificarPlanilla1164_01.SoloNumerosTelefonicosYExtensionKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo letras y numeros, con espacios, puntos y guiones
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', ' ', ',', '-', '.', #8, #13]) then Abort;
end;



function TfrmModificarPlanilla1164_01.EstanLlenosLosCampos: Boolean;
begin
  //Valido el relleno de todos los campos
  //Datos Generales
  if (   ( Trim(DBedtNombreCentroInformante.Field.Text) = '')
  or (Trim(DBedtCodigoCentroInformante.Field.Text) = '')
  or (Trim(DBedtNombreDirectorEconomico.Field.Text) = '')
  or (Trim(DBedtNombreRectorODirector.Field.Text) = '')



  //Sección I: Caracterización
  or (Trim(DBedtDoctoresXTotal.Field.Text) = '')
  or (Trim(DBedtDoctoresXCantGrad.Field.Text) = '')
  or (Trim(DBedtDoctoresXCantParticip.Field.Text) = '')



  //Sección II: Superación Profesional
  //Diplomados
  or (Trim(DBedtDiplomadosXCantActivTotal.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantActivUnivMun.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantActivADistancia.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantActivExtranjero.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantParticipTotal.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantParticipMujeres.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantParticipExtranjeros.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantParticipProfTC.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantParticipProfTP.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantParticipUnivMun.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantParticipADistancia.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantGradTotal.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantGradMujeres.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantGradExtranjeros.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantGradProfTC.Field.Text) = '')
  or (Trim(DBedtDiplomadosXCantGradProfTP.Field.Text) = '')

  //Entrenamientos
  or (Trim(DBedtEntrenamientosXCantActivTotal.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantActivUnivMun.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantActivADistancia.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantActivExtranjero.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantParticipTotal.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantParticipMujeres.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantParticipExtranjeros.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantParticipProfTC.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantParticipProfTP.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantParticipUnivMun.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantParticipADistancia.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantGradTotal.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantGradMujeres.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantGradExtranjeros.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantGradProfTC.Field.Text) = '')
  or (Trim(DBedtEntrenamientosXCantGradProfTP.Field.Text) = '')

  //Cursos
  or (Trim(DBedtCursosXCantActivTotal.Field.Text) = '')
  or (Trim(DBedtCursosXCantActivUnivMun.Field.Text) = '')
  or (Trim(DBedtCursosXCantActivADistancia.Field.Text) = '')
  or (Trim(DBedtCursosXCantActivExtranjero.Field.Text) = '')
  or (Trim(DBedtCursosXCantParticipTotal.Field.Text) = '')
  or (Trim(DBedtCursosXCantParticipMujeres.Field.Text) = '')
  or (Trim(DBedtCursosXCantParticipExtranjeros.Field.Text) = '')
  or (Trim(DBedtCursosXCantParticipProfTC.Field.Text) = '')
  or (Trim(DBedtCursosXCantParticipProfTP.Field.Text) = '')
  or (Trim(DBedtCursosXCantParticipUnivMun.Field.Text) = '')
  or (Trim(DBedtCursosXCantParticipADistancia.Field.Text) = '')
  or (Trim(DBedtCursosXCantGradTotal.Field.Text) = '')
  or (Trim(DBedtCursosXCantGradMujeres.Field.Text) = '')
  or (Trim(DBedtCursosXCantGradExtranjeros.Field.Text) = '')
  or (Trim(DBedtCursosXCantGradProfTC.Field.Text) = '')
  or (Trim(DBedtCursosXCantGradProfTP.Field.Text) = '')

  //SubTotal II
  or (Trim(DBedtSubTotal2XCantActivTotal.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantActivUnivMun.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantActivADistancia.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantActivExtranjero.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantParticipTotal.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantParticipMujeres.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantParticipExtranjeros.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantParticipProfTC.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantParticipProfTP.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantParticipUnivMun.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantParticipADistancia.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantGradTotal.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantGradMujeres.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantGradExtranjeros.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantGradProfTC.Field.Text) = '')
  or (Trim(DBedtSubTotal2XCantGradProfTP.Field.Text) = '')


  //Sección II: Postgrado Académico

  //Doctorados
  or (Trim(DBedtDoctoradosXCantActivTotal.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantActivUnivMun.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantActivADistancia.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantActivExtranjero.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantParticipTotal.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantParticipMujeres.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantParticipExtranjeros.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantParticipProfTC.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantParticipProfTP.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantParticipUnivMun.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantParticipADistancia.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantGradTotal.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantGradMujeres.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantGradExtranjeros.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantGradProfTC.Field.Text) = '')
  or (Trim(DBedtDoctoradosXCantGradProfTP.Field.Text) = '')

  //Especialidades
  or (Trim(DBedtEspecialidadesXCantActivTotal.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantActivUnivMun.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantActivADistancia.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantActivExtranjero.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantParticipTotal.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantParticipMujeres.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantParticipExtranjeros.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantParticipProfTC.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantParticipProfTP.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantParticipUnivMun.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantParticipADistancia.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantGradTotal.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantGradMujeres.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantGradExtranjeros.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantGradProfTC.Field.Text) = '')
  or (Trim(DBedtEspecialidadesXCantGradProfTP.Field.Text) = '')

  //Maestrías
  or (Trim(DBedtMaestriasXCantActivTotal.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantActivUnivMun.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantActivADistancia.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantActivExtranjero.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantParticipTotal.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantParticipMujeres.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantParticipExtranjeros.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantParticipProfTC.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantParticipProfTP.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantParticipUnivMun.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantParticipADistancia.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantGradTotal.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantGradMujeres.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantGradExtranjeros.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantGradProfTC.Field.Text) = '')
  or (Trim(DBedtMaestriasXCantGradProfTP.Field.Text) = '')

  //SubTotal III
  or (Trim(DBedtSubTotal3XCantActivTotal.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantActivUnivMun.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantActivADistancia.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantActivExtranjero.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantParticipTotal.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantParticipMujeres.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantParticipExtranjeros.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantParticipProfTC.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantParticipProfTP.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantParticipUnivMun.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantParticipADistancia.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantGradTotal.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantGradMujeres.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantGradExtranjeros.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantGradProfTC.Field.Text) = '')
  or (Trim(DBedtSubTotal3XCantGradProfTP.Field.Text) = '')


  //Total
  or (Trim(DBedtTotalXCantActivTotal.Field.Text) = '')
  or (Trim(DBedtTotalXCantActivUnivMun.Field.Text) = '')
  or (Trim(DBedtTotalXCantActivADistancia.Field.Text) = '')
  or (Trim(DBedtTotalXCantActivExtranjero.Field.Text) = '')
  or (Trim(DBedtTotalXCantParticipTotal.Field.Text) = '')
  or (Trim(DBedtTotalXCantParticipMujeres.Field.Text) = '')
  or (Trim(DBedtTotalXCantParticipExtranjeros.Field.Text) = '')
  or (Trim(DBedtTotalXCantParticipProfTC.Field.Text) = '')
  or (Trim(DBedtTotalXCantParticipProfTP.Field.Text) = '')
  or (Trim(DBedtTotalXCantParticipUnivMun.Field.Text) = '')
  or (Trim(DBedtTotalXCantParticipADistancia.Field.Text) = '')
  or (Trim(DBedtTotalXCantGradTotal.Field.Text) = '')
  or (Trim(DBedtTotalXCantGradMujeres.Field.Text) = '')
  or (Trim(DBedtTotalXCantGradExtranjeros.Field.Text) = '')
  or (Trim(DBedtTotalXCantGradProfTC.Field.Text) = '')
  or (Trim(DBedtTotalXCantGradProfTP.Field.Text) = '')   )
    then
      begin
        Result:= False;
      end
        else
          begin
            Result:= True;
          end;
end;



function TfrmModificarPlanilla1164_01.ElMunicipioFueSeleccionado: Boolean;
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



procedure TfrmModificarPlanilla1164_01.RellenarPlanillaTemporal(aPlanilla: TPlanilla1164_01);
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
    aPlanilla.ID_Planilla:= FID_Planilla;
    aPlanilla.Anno:=  anno;
    aPlanilla.Municipio:= DBlucmbxMunicipio.Text;
    aPlanilla.Provincia:= cmbxProvincia.Text;



    //Datos Generales
    aPlanilla.NombreCentroInformante:= DBedtNombreCentroInformante.Field.Text;
    aPlanilla.CodigoCentroInformante:= DBedtCodigoCentroInformante.Field.Text;
    aPlanilla.NombreDirectorEconomico:= DBedtNombreDirectorEconomico.Field.Text;
    aPlanilla.NombreRectorODirector:= DBedtNombreRectorODirector.Field.Text;
    //aPlanilla.FechaConfeccion:= StrToDateTime(BookLogger.ObtenerFechaDelSistema + ' ' + BookLogger.ObtenerHoraDelSistema) ;


    //Sección I: Caracterización
    aPlanilla.DoctoresXTotal:= StrToInt(DBedtDoctoresXTotal.Field.Text);
    aPlanilla.DoctoresXCantGrad:= StrToInt(DBedtDoctoresXCantGrad.Field.Text);
    aPlanilla.DoctoresXCantParticip:= StrToInt(DBedtDoctoresXCantParticip.Field.Text);



    //Sección II: Superación Profesional
    //Diplomados
    aPlanilla.DiplomadosXCantActivTotal:= StrToInt(DBedtDiplomadosXCantActivTotal.Field.Text);
    aPlanilla.DiplomadosXCantActivUnivMun:= StrToInt(DBedtDiplomadosXCantActivUnivMun.Field.Text);
    aPlanilla.DiplomadosXCantActivADistancia:= StrToInt(DBedtDiplomadosXCantActivADistancia.Field.Text);
    aPlanilla.DiplomadosXCantActivExtranjero:= StrToInt(DBedtDiplomadosXCantActivExtranjero.Field.Text);
    aPlanilla.DiplomadosXCantParticipTotal:= StrToInt(DBedtDiplomadosXCantParticipTotal.Field.Text);
    aPlanilla.DiplomadosXCantParticipMujeres:= StrToInt(DBedtDiplomadosXCantParticipMujeres.Field.Text);
    aPlanilla.DiplomadosXCantParticipExtranjeros:= StrToInt(DBedtDiplomadosXCantParticipExtranjeros.Field.Text);
    aPlanilla.DiplomadosXCantParticipProfTC:= StrToInt(DBedtDiplomadosXCantParticipProfTC.Field.Text);
    aPlanilla.DiplomadosXCantParticipProfTP:= StrToInt(DBedtDiplomadosXCantParticipProfTP.Field.Text);
    aPlanilla.DiplomadosXCantParticipUnivMun:= StrToInt(DBedtDiplomadosXCantParticipUnivMun.Field.Text);
    aPlanilla.DiplomadosXCantParticipADistancia:= StrToInt(DBedtDiplomadosXCantParticipADistancia.Field.Text);
    aPlanilla.DiplomadosXCantGradTotal:= StrToInt(DBedtDiplomadosXCantGradTotal.Field.Text);
    aPlanilla.DiplomadosXCantGradMujeres:= StrToInt(DBedtDiplomadosXCantGradMujeres.Field.Text);
    aPlanilla.DiplomadosXCantGradExtranjeros:= StrToInt(DBedtDiplomadosXCantGradExtranjeros.Field.Text);
    aPlanilla.DiplomadosXCantGradProfTC:= StrToInt(DBedtDiplomadosXCantGradProfTC.Field.Text);
    aPlanilla.DiplomadosXCantGradProfTP:= StrToInt(DBedtDiplomadosXCantGradProfTP.Field.Text);

    //Entrenamientos
    aPlanilla.EntrenamientosXCantActivTotal:= StrToInt(DBedtEntrenamientosXCantActivTotal.Field.Text);
    aPlanilla.EntrenamientosXCantActivUnivMun:= StrToInt(DBedtEntrenamientosXCantActivUnivMun.Field.Text);
    aPlanilla.EntrenamientosXCantActivADistancia:= StrToInt(DBedtEntrenamientosXCantActivADistancia.Field.Text);
    aPlanilla.EntrenamientosXCantActivExtranjero:= StrToInt(DBedtEntrenamientosXCantActivExtranjero.Field.Text);
    aPlanilla.EntrenamientosXCantParticipTotal:= StrToInt(DBedtEntrenamientosXCantParticipTotal.Field.Text);
    aPlanilla.EntrenamientosXCantParticipMujeres:= StrToInt(DBedtEntrenamientosXCantParticipMujeres.Field.Text);
    aPlanilla.EntrenamientosXCantParticipExtranjeros:= StrToInt(DBedtEntrenamientosXCantParticipExtranjeros.Field.Text);
    aPlanilla.EntrenamientosXCantParticipProfTC:= StrToInt(DBedtEntrenamientosXCantParticipProfTC.Field.Text);
    aPlanilla.EntrenamientosXCantParticipProfTP:= StrToInt(DBedtEntrenamientosXCantParticipProfTP.Field.Text);
    aPlanilla.EntrenamientosXCantParticipUnivMun:= StrToInt(DBedtEntrenamientosXCantParticipUnivMun.Field.Text);
    aPlanilla.EntrenamientosXCantParticipADistancia:= StrToInt(DBedtEntrenamientosXCantParticipADistancia.Field.Text);
    aPlanilla.EntrenamientosXCantGradTotal:= StrToInt(DBedtEntrenamientosXCantGradTotal.Field.Text);
    aPlanilla.EntrenamientosXCantGradMujeres:= StrToInt(DBedtEntrenamientosXCantGradMujeres.Field.Text);
    aPlanilla.EntrenamientosXCantGradExtranjeros:= StrToInt(DBedtEntrenamientosXCantGradExtranjeros.Field.Text);
    aPlanilla.EntrenamientosXCantGradProfTC:= StrToInt(DBedtEntrenamientosXCantGradProfTC.Field.Text);
    aPlanilla.EntrenamientosXCantGradProfTP:= StrToInt(DBedtEntrenamientosXCantGradProfTP.Field.Text);

    //Cursos
    aPlanilla.CursosXCantActivTotal:= StrToInt(DBedtCursosXCantActivTotal.Field.Text);
    aPlanilla.CursosXCantActivUnivMun:= StrToInt(DBedtCursosXCantActivUnivMun.Field.Text);
    aPlanilla.CursosXCantActivADistancia:= StrToInt(DBedtCursosXCantActivADistancia.Field.Text);
    aPlanilla.CursosXCantActivExtranjero:= StrToInt(DBedtCursosXCantActivExtranjero.Field.Text);
    aPlanilla.CursosXCantParticipTotal:= StrToInt(DBedtCursosXCantParticipTotal.Field.Text);
    aPlanilla.CursosXCantParticipMujeres:= StrToInt(DBedtCursosXCantParticipMujeres.Field.Text);
    aPlanilla.CursosXCantParticipExtranjeros:= StrToInt(DBedtCursosXCantParticipExtranjeros.Field.Text);
    aPlanilla.CursosXCantParticipProfTC:= StrToInt(DBedtCursosXCantParticipProfTC.Field.Text);
    aPlanilla.CursosXCantParticipProfTP:= StrToInt(DBedtCursosXCantParticipProfTP.Field.Text);
    aPlanilla.CursosXCantParticipUnivMun:= StrToInt(DBedtCursosXCantParticipUnivMun.Field.Text);
    aPlanilla.CursosXCantParticipADistancia:= StrToInt(DBedtCursosXCantParticipADistancia.Field.Text);
    aPlanilla.CursosXCantGradTotal:= StrToInt(DBedtCursosXCantGradTotal.Field.Text);
    aPlanilla.CursosXCantGradMujeres:= StrToInt(DBedtCursosXCantGradMujeres.Field.Text);
    aPlanilla.CursosXCantGradExtranjeros:= StrToInt(DBedtCursosXCantGradExtranjeros.Field.Text);
    aPlanilla.CursosXCantGradProfTC:= StrToInt(DBedtCursosXCantGradProfTC.Field.Text);
    aPlanilla.CursosXCantGradProfTP:= StrToInt(DBedtCursosXCantGradProfTP.Field.Text);

    //SubTotal II
    aPlanilla.SubTotal2XCantActivTotal:= StrToInt(DBedtSubTotal2XCantActivTotal.Field.Text);
    aPlanilla.SubTotal2XCantActivUnivMun:= StrToInt(DBedtSubTotal2XCantActivUnivMun.Field.Text);
    aPlanilla.SubTotal2XCantActivADistancia:= StrToInt(DBedtSubTotal2XCantActivADistancia.Field.Text);
    aPlanilla.SubTotal2XCantActivExtranjero:= StrToInt(DBedtSubTotal2XCantActivExtranjero.Field.Text);
    aPlanilla.SubTotal2XCantParticipTotal:= StrToInt(DBedtSubTotal2XCantParticipTotal.Field.Text);
    aPlanilla.SubTotal2XCantParticipMujeres:= StrToInt(DBedtSubTotal2XCantParticipMujeres.Field.Text);
    aPlanilla.SubTotal2XCantParticipExtranjeros:= StrToInt(DBedtSubTotal2XCantParticipExtranjeros.Field.Text);
    aPlanilla.SubTotal2XCantParticipProfTC:= StrToInt(DBedtSubTotal2XCantParticipProfTC.Field.Text);
    aPlanilla.SubTotal2XCantParticipProfTP:= StrToInt(DBedtSubTotal2XCantParticipProfTP.Field.Text);
    aPlanilla.SubTotal2XCantParticipUnivMun:= StrToInt(DBedtSubTotal2XCantParticipUnivMun.Field.Text);
    aPlanilla.SubTotal2XCantParticipADistancia:= StrToInt(DBedtSubTotal2XCantParticipADistancia.Field.Text);
    aPlanilla.SubTotal2XCantGradTotal:= StrToInt(DBedtSubTotal2XCantGradTotal.Field.Text);
    aPlanilla.SubTotal2XCantGradMujeres:= StrToInt(DBedtSubTotal2XCantGradMujeres.Field.Text);
    aPlanilla.SubTotal2XCantGradExtranjeros:= StrToInt(DBedtSubTotal2XCantGradExtranjeros.Field.Text);
    aPlanilla.SubTotal2XCantGradProfTC:= StrToInt(DBedtSubTotal2XCantGradProfTC.Field.Text);
    aPlanilla.SubTotal2XCantGradProfTP:= StrToInt(DBedtSubTotal2XCantGradProfTP.Field.Text);


    //Sección II: Postgrado Académico

    //Doctorados
    aPlanilla.DoctoradosXCantActivTotal:= StrToInt(DBedtDoctoradosXCantActivTotal.Field.Text);
    aPlanilla.DoctoradosXCantActivUnivMun:= StrToInt(DBedtDoctoradosXCantActivUnivMun.Field.Text);
    aPlanilla.DoctoradosXCantActivADistancia:= StrToInt(DBedtDoctoradosXCantActivADistancia.Field.Text);
    aPlanilla.DoctoradosXCantActivExtranjero:= StrToInt(DBedtDoctoradosXCantActivExtranjero.Field.Text);
    aPlanilla.DoctoradosXCantParticipTotal:= StrToInt(DBedtDoctoradosXCantParticipTotal.Field.Text);
    aPlanilla.DoctoradosXCantParticipMujeres:= StrToInt(DBedtDoctoradosXCantParticipMujeres.Field.Text);
    aPlanilla.DoctoradosXCantParticipExtranjeros:= StrToInt(DBedtDoctoradosXCantParticipExtranjeros.Field.Text);
    aPlanilla.DoctoradosXCantParticipProfTC:= StrToInt(DBedtDoctoradosXCantParticipProfTC.Field.Text);
    aPlanilla.DoctoradosXCantParticipProfTP:= StrToInt(DBedtDoctoradosXCantParticipProfTP.Field.Text);
    aPlanilla.DoctoradosXCantParticipUnivMun:= StrToInt(DBedtDoctoradosXCantParticipUnivMun.Field.Text);
    aPlanilla.DoctoradosXCantParticipADistancia:= StrToInt(DBedtDoctoradosXCantParticipADistancia.Field.Text);
    aPlanilla.DoctoradosXCantGradTotal:= StrToInt(DBedtDoctoradosXCantGradTotal.Field.Text);
    aPlanilla.DoctoradosXCantGradMujeres:= StrToInt(DBedtDoctoradosXCantGradMujeres.Field.Text);
    aPlanilla.DoctoradosXCantGradExtranjeros:= StrToInt(DBedtDoctoradosXCantGradExtranjeros.Field.Text);
    aPlanilla.DoctoradosXCantGradProfTC:= StrToInt(DBedtDoctoradosXCantGradProfTC.Field.Text);
    aPlanilla.DoctoradosXCantGradProfTP:= StrToInt(DBedtDoctoradosXCantGradProfTP.Field.Text);

    //Especialidades
    aPlanilla.EspecialidadesXCantActivTotal:= StrToInt(DBedtEspecialidadesXCantActivTotal.Field.Text);
    aPlanilla.EspecialidadesXCantActivUnivMun:= StrToInt(DBedtEspecialidadesXCantActivUnivMun.Field.Text);
    aPlanilla.EspecialidadesXCantActivADistancia:= StrToInt(DBedtEspecialidadesXCantActivADistancia.Field.Text);
    aPlanilla.EspecialidadesXCantActivExtranjero:= StrToInt(DBedtEspecialidadesXCantActivExtranjero.Field.Text);
    aPlanilla.EspecialidadesXCantParticipTotal:= StrToInt(DBedtEspecialidadesXCantParticipTotal.Field.Text);
    aPlanilla.EspecialidadesXCantParticipMujeres:= StrToInt(DBedtEspecialidadesXCantParticipMujeres.Field.Text);
    aPlanilla.EspecialidadesXCantParticipExtranjeros:= StrToInt(DBedtEspecialidadesXCantParticipExtranjeros.Field.Text);
    aPlanilla.EspecialidadesXCantParticipProfTC:= StrToInt(DBedtEspecialidadesXCantParticipProfTC.Field.Text);
    aPlanilla.EspecialidadesXCantParticipProfTP:= StrToInt(DBedtEspecialidadesXCantParticipProfTP.Field.Text);
    aPlanilla.EspecialidadesXCantParticipUnivMun:= StrToInt(DBedtEspecialidadesXCantParticipUnivMun.Field.Text);
    aPlanilla.EspecialidadesXCantParticipADistancia:= StrToInt(DBedtEspecialidadesXCantParticipADistancia.Field.Text);
    aPlanilla.EspecialidadesXCantGradTotal:= StrToInt(DBedtEspecialidadesXCantGradTotal.Field.Text);
    aPlanilla.EspecialidadesXCantGradMujeres:= StrToInt(DBedtEspecialidadesXCantGradMujeres.Field.Text);
    aPlanilla.EspecialidadesXCantGradExtranjeros:= StrToInt(DBedtEspecialidadesXCantGradExtranjeros.Field.Text);
    aPlanilla.EspecialidadesXCantGradProfTC:= StrToInt(DBedtEspecialidadesXCantGradProfTC.Field.Text);
    aPlanilla.EspecialidadesXCantGradProfTP:= StrToInt(DBedtEspecialidadesXCantGradProfTP.Field.Text);

    //Maestrías
    aPlanilla.MaestriasXCantActivTotal:= StrToInt(DBedtMaestriasXCantActivTotal.Field.Text);
    aPlanilla.MaestriasXCantActivUnivMun:= StrToInt(DBedtMaestriasXCantActivUnivMun.Field.Text);
    aPlanilla.MaestriasXCantActivADistancia:= StrToInt(DBedtMaestriasXCantActivADistancia.Field.Text);
    aPlanilla.MaestriasXCantActivExtranjero:= StrToInt(DBedtMaestriasXCantActivExtranjero.Field.Text);
    aPlanilla.MaestriasXCantParticipTotal:= StrToInt(DBedtMaestriasXCantParticipTotal.Field.Text);
    aPlanilla.MaestriasXCantParticipMujeres:= StrToInt(DBedtMaestriasXCantParticipMujeres.Field.Text);
    aPlanilla.MaestriasXCantParticipExtranjeros:= StrToInt(DBedtMaestriasXCantParticipExtranjeros.Field.Text);
    aPlanilla.MaestriasXCantParticipProfTC:= StrToInt(DBedtMaestriasXCantParticipProfTC.Field.Text);
    aPlanilla.MaestriasXCantParticipProfTP:= StrToInt(DBedtMaestriasXCantParticipProfTP.Field.Text);
    aPlanilla.MaestriasXCantParticipUnivMun:= StrToInt(DBedtMaestriasXCantParticipUnivMun.Field.Text);
    aPlanilla.MaestriasXCantParticipADistancia:= StrToInt(DBedtMaestriasXCantParticipADistancia.Field.Text);
    aPlanilla.MaestriasXCantGradTotal:= StrToInt(DBedtMaestriasXCantGradTotal.Field.Text);
    aPlanilla.MaestriasXCantGradMujeres:= StrToInt(DBedtMaestriasXCantGradMujeres.Field.Text);
    aPlanilla.MaestriasXCantGradExtranjeros:= StrToInt(DBedtMaestriasXCantGradExtranjeros.Field.Text);
    aPlanilla.MaestriasXCantGradProfTC:= StrToInt(DBedtMaestriasXCantGradProfTC.Field.Text);
    aPlanilla.MaestriasXCantGradProfTP:= StrToInt(DBedtMaestriasXCantGradProfTP.Field.Text);

    //SubTotal III
    aPlanilla.SubTotal3XCantActivTotal:= StrToInt(DBedtSubTotal3XCantActivTotal.Field.Text);
    aPlanilla.SubTotal3XCantActivUnivMun:= StrToInt(DBedtSubTotal3XCantActivUnivMun.Field.Text);
    aPlanilla.SubTotal3XCantActivADistancia:= StrToInt(DBedtSubTotal3XCantActivADistancia.Field.Text);
    aPlanilla.SubTotal3XCantActivExtranjero:= StrToInt(DBedtSubTotal3XCantActivExtranjero.Field.Text);
    aPlanilla.SubTotal3XCantParticipTotal:= StrToInt(DBedtSubTotal3XCantParticipTotal.Field.Text);
    aPlanilla.SubTotal3XCantParticipMujeres:= StrToInt(DBedtSubTotal3XCantParticipMujeres.Field.Text);
    aPlanilla.SubTotal3XCantParticipExtranjeros:= StrToInt(DBedtSubTotal3XCantParticipExtranjeros.Field.Text);
    aPlanilla.SubTotal3XCantParticipProfTC:= StrToInt(DBedtSubTotal3XCantParticipProfTC.Field.Text);
    aPlanilla.SubTotal3XCantParticipProfTP:= StrToInt(DBedtSubTotal3XCantParticipProfTP.Field.Text);
    aPlanilla.SubTotal3XCantParticipUnivMun:= StrToInt(DBedtSubTotal3XCantParticipUnivMun.Field.Text);
    aPlanilla.SubTotal3XCantParticipADistancia:= StrToInt(DBedtSubTotal3XCantParticipADistancia.Field.Text);
    aPlanilla.SubTotal3XCantGradTotal:= StrToInt(DBedtSubTotal3XCantGradTotal.Field.Text);
    aPlanilla.SubTotal3XCantGradMujeres:= StrToInt(DBedtSubTotal3XCantGradMujeres.Field.Text);
    aPlanilla.SubTotal3XCantGradExtranjeros:= StrToInt(DBedtSubTotal3XCantGradExtranjeros.Field.Text);
    aPlanilla.SubTotal3XCantGradProfTC:= StrToInt(DBedtSubTotal3XCantGradProfTC.Field.Text);
    aPlanilla.SubTotal3XCantGradProfTP:= StrToInt(DBedtSubTotal3XCantGradProfTP.Field.Text);


    //Total
    aPlanilla.TotalXCantActivTotal:= StrToInt(DBedtTotalXCantActivTotal.Field.Text);
    aPlanilla.TotalXCantActivUnivMun:= StrToInt(DBedtTotalXCantActivUnivMun.Field.Text);
    aPlanilla.TotalXCantActivADistancia:= StrToInt(DBedtTotalXCantActivADistancia.Field.Text);
    aPlanilla.TotalXCantActivExtranjero:= StrToInt(DBedtTotalXCantActivExtranjero.Field.Text);
    aPlanilla.TotalXCantParticipTotal:= StrToInt(DBedtTotalXCantParticipTotal.Field.Text);
    aPlanilla.TotalXCantParticipMujeres:= StrToInt(DBedtTotalXCantParticipMujeres.Field.Text);
    aPlanilla.TotalXCantParticipExtranjeros:= StrToInt(DBedtTotalXCantParticipExtranjeros.Field.Text);
    aPlanilla.TotalXCantParticipProfTC:= StrToInt(DBedtTotalXCantParticipProfTC.Field.Text);
    aPlanilla.TotalXCantParticipProfTP:= StrToInt(DBedtTotalXCantParticipProfTP.Field.Text);
    aPlanilla.TotalXCantParticipUnivMun:= StrToInt(DBedtTotalXCantParticipUnivMun.Field.Text);
    aPlanilla.TotalXCantParticipADistancia:= StrToInt(DBedtTotalXCantParticipADistancia.Field.Text);
    aPlanilla.TotalXCantGradTotal:= StrToInt(DBedtTotalXCantGradTotal.Field.Text);
    aPlanilla.TotalXCantGradMujeres:= StrToInt(DBedtTotalXCantGradMujeres.Field.Text);
    aPlanilla.TotalXCantGradExtranjeros:= StrToInt(DBedtTotalXCantGradExtranjeros.Field.Text);
    aPlanilla.TotalXCantGradProfTC:= StrToInt(DBedtTotalXCantGradProfTC.Field.Text);
    aPlanilla.TotalXCantGradProfTP:= StrToInt(DBedtTotalXCantGradProfTP.Field.Text);
end;



procedure TfrmModificarPlanilla1164_01.ResetearComponentes;
begin
  //Muestro todos los datos de la Planilla
  BookLogger.BuscarPlanilla1164_01PorID_Planilla(FID_Planilla);

  //Reposiciono los componentes no directos
  ReposicionarComponentesNoDirectos;
end;



procedure TfrmModificarPlanilla1164_01.BlanquearDBEditsDeLaForma;
begin
  //Datos Generales
  DBedtNombreCentroInformante.Color:= clWhite;
  DBedtCodigoCentroInformante.Color:= clWhite;
  DBedtNombreDirectorEconomico.Color:= clWhite;
  DBedtNombreRectorODirector.Color:= clWhite;


  //Sección I: Caracterización
  DBedtDoctoresXTotal.Color:= clWhite;
  DBedtDoctoresXCantGrad.Color:= clWhite;
  DBedtDoctoresXCantParticip.Color:= clWhite;



  //Sección II: Superación Profesional
  //Diplomados
  DBedtDiplomadosXCantActivTotal.Color:= clWhite;
  DBedtDiplomadosXCantActivUnivMun.Color:= clWhite;
  DBedtDiplomadosXCantActivADistancia.Color:= clWhite;
  DBedtDiplomadosXCantActivExtranjero.Color:= clWhite;
  DBedtDiplomadosXCantParticipTotal.Color:= clWhite;
  DBedtDiplomadosXCantParticipMujeres.Color:= clWhite;
  DBedtDiplomadosXCantParticipExtranjeros.Color:= clWhite;
  DBedtDiplomadosXCantParticipProfTC.Color:= clWhite;
  DBedtDiplomadosXCantParticipProfTP.Color:= clWhite;
  DBedtDiplomadosXCantParticipUnivMun.Color:= clWhite;
  DBedtDiplomadosXCantParticipADistancia.Color:= clWhite;
  DBedtDiplomadosXCantGradTotal.Color:= clWhite;
  DBedtDiplomadosXCantGradMujeres.Color:= clWhite;
  DBedtDiplomadosXCantGradExtranjeros.Color:= clWhite;
  DBedtDiplomadosXCantGradProfTC.Color:= clWhite;
  DBedtDiplomadosXCantGradProfTP.Color:= clWhite;

  //Entrenamientos
  DBedtEntrenamientosXCantActivTotal.Color:= clWhite;
  DBedtEntrenamientosXCantActivUnivMun.Color:= clWhite;
  DBedtEntrenamientosXCantActivADistancia.Color:= clWhite;
  DBedtEntrenamientosXCantActivExtranjero.Color:= clWhite;
  DBedtEntrenamientosXCantParticipTotal.Color:= clWhite;
  DBedtEntrenamientosXCantParticipMujeres.Color:= clWhite;
  DBedtEntrenamientosXCantParticipExtranjeros.Color:= clWhite;
  DBedtEntrenamientosXCantParticipProfTC.Color:= clWhite;
  DBedtEntrenamientosXCantParticipProfTP.Color:= clWhite;
  DBedtEntrenamientosXCantParticipUnivMun.Color:= clWhite;
  DBedtEntrenamientosXCantParticipADistancia.Color:= clWhite;
  DBedtEntrenamientosXCantGradTotal.Color:= clWhite;
  DBedtEntrenamientosXCantGradMujeres.Color:= clWhite;
  DBedtEntrenamientosXCantGradExtranjeros.Color:= clWhite;
  DBedtEntrenamientosXCantGradProfTC.Color:= clWhite;
  DBedtEntrenamientosXCantGradProfTP.Color:= clWhite;

  //Cursos
  DBedtCursosXCantActivTotal.Color:= clWhite;
  DBedtCursosXCantActivUnivMun.Color:= clWhite;
  DBedtCursosXCantActivADistancia.Color:= clWhite;
  DBedtCursosXCantActivExtranjero.Color:= clWhite;
  DBedtCursosXCantParticipTotal.Color:= clWhite;
  DBedtCursosXCantParticipMujeres.Color:= clWhite;
  DBedtCursosXCantParticipExtranjeros.Color:= clWhite;
  DBedtCursosXCantParticipProfTC.Color:= clWhite;
  DBedtCursosXCantParticipProfTP.Color:= clWhite;
  DBedtCursosXCantParticipUnivMun.Color:= clWhite;
  DBedtCursosXCantParticipADistancia.Color:= clWhite;
  DBedtCursosXCantGradTotal.Color:= clWhite;
  DBedtCursosXCantGradMujeres.Color:= clWhite;
  DBedtCursosXCantGradExtranjeros.Color:= clWhite;
  DBedtCursosXCantGradProfTC.Color:= clWhite;
  DBedtCursosXCantGradProfTP.Color:= clWhite;

  //SubTotal II
  DBedtSubTotal2XCantActivTotal.Color:= clWhite;
  DBedtSubTotal2XCantActivUnivMun.Color:= clWhite;
  DBedtSubTotal2XCantActivADistancia.Color:= clWhite;
  DBedtSubTotal2XCantActivExtranjero.Color:= clWhite;
  DBedtSubTotal2XCantParticipTotal.Color:= clWhite;
  DBedtSubTotal2XCantParticipMujeres.Color:= clWhite;
  DBedtSubTotal2XCantParticipExtranjeros.Color:= clWhite;
  DBedtSubTotal2XCantParticipProfTC.Color:= clWhite;
  DBedtSubTotal2XCantParticipProfTP.Color:= clWhite;
  DBedtSubTotal2XCantParticipUnivMun.Color:= clWhite;
  DBedtSubTotal2XCantParticipADistancia.Color:= clWhite;
  DBedtSubTotal2XCantGradTotal.Color:= clWhite;
  DBedtSubTotal2XCantGradMujeres.Color:= clWhite;
  DBedtSubTotal2XCantGradExtranjeros.Color:= clWhite;
  DBedtSubTotal2XCantGradProfTC.Color:= clWhite;
  DBedtSubTotal2XCantGradProfTP.Color:= clWhite;


  //Sección II: Postgrado Académico

  //Doctorados
  DBedtDoctoradosXCantActivTotal.Color:= clWhite;
  DBedtDoctoradosXCantActivUnivMun.Color:= clWhite;
  DBedtDoctoradosXCantActivADistancia.Color:= clWhite;
  DBedtDoctoradosXCantActivExtranjero.Color:= clWhite;
  DBedtDoctoradosXCantParticipTotal.Color:= clWhite;
  DBedtDoctoradosXCantParticipMujeres.Color:= clWhite;
  DBedtDoctoradosXCantParticipExtranjeros.Color:= clWhite;
  DBedtDoctoradosXCantParticipProfTC.Color:= clWhite;
  DBedtDoctoradosXCantParticipProfTP.Color:= clWhite;
  DBedtDoctoradosXCantParticipUnivMun.Color:= clWhite;
  DBedtDoctoradosXCantParticipADistancia.Color:= clWhite;
  DBedtDoctoradosXCantGradTotal.Color:= clWhite;
  DBedtDoctoradosXCantGradMujeres.Color:= clWhite;
  DBedtDoctoradosXCantGradExtranjeros.Color:= clWhite;
  DBedtDoctoradosXCantGradProfTC.Color:= clWhite;
  DBedtDoctoradosXCantGradProfTP.Color:= clWhite;

  //Especialidades
  DBedtEspecialidadesXCantActivTotal.Color:= clWhite;
  DBedtEspecialidadesXCantActivUnivMun.Color:= clWhite;
  DBedtEspecialidadesXCantActivADistancia.Color:= clWhite;
  DBedtEspecialidadesXCantActivExtranjero.Color:= clWhite;
  DBedtEspecialidadesXCantParticipTotal.Color:= clWhite;
  DBedtEspecialidadesXCantParticipMujeres.Color:= clWhite;
  DBedtEspecialidadesXCantParticipExtranjeros.Color:= clWhite;
  DBedtEspecialidadesXCantParticipProfTC.Color:= clWhite;
  DBedtEspecialidadesXCantParticipProfTP.Color:= clWhite;
  DBedtEspecialidadesXCantParticipUnivMun.Color:= clWhite;
  DBedtEspecialidadesXCantParticipADistancia.Color:= clWhite;
  DBedtEspecialidadesXCantGradTotal.Color:= clWhite;
  DBedtEspecialidadesXCantGradMujeres.Color:= clWhite;
  DBedtEspecialidadesXCantGradExtranjeros.Color:= clWhite;
  DBedtEspecialidadesXCantGradProfTC.Color:= clWhite;
  DBedtEspecialidadesXCantGradProfTP.Color:= clWhite;

  //Maestrías
  DBedtMaestriasXCantActivTotal.Color:= clWhite;
  DBedtMaestriasXCantActivUnivMun.Color:= clWhite;
  DBedtMaestriasXCantActivADistancia.Color:= clWhite;
  DBedtMaestriasXCantActivExtranjero.Color:= clWhite;
  DBedtMaestriasXCantParticipTotal.Color:= clWhite;
  DBedtMaestriasXCantParticipMujeres.Color:= clWhite;
  DBedtMaestriasXCantParticipExtranjeros.Color:= clWhite;
  DBedtMaestriasXCantParticipProfTC.Color:= clWhite;
  DBedtMaestriasXCantParticipProfTP.Color:= clWhite;
  DBedtMaestriasXCantParticipUnivMun.Color:= clWhite;
  DBedtMaestriasXCantParticipADistancia.Color:= clWhite;
  DBedtMaestriasXCantGradTotal.Color:= clWhite;
  DBedtMaestriasXCantGradMujeres.Color:= clWhite;
  DBedtMaestriasXCantGradExtranjeros.Color:= clWhite;
  DBedtMaestriasXCantGradProfTC.Color:= clWhite;
  DBedtMaestriasXCantGradProfTP.Color:= clWhite;

  //SubTotal III
  DBedtSubTotal3XCantActivTotal.Color:= clWhite;
  DBedtSubTotal3XCantActivUnivMun.Color:= clWhite;
  DBedtSubTotal3XCantActivADistancia.Color:= clWhite;
  DBedtSubTotal3XCantActivExtranjero.Color:= clWhite;
  DBedtSubTotal3XCantParticipTotal.Color:= clWhite;
  DBedtSubTotal3XCantParticipMujeres.Color:= clWhite;
  DBedtSubTotal3XCantParticipExtranjeros.Color:= clWhite;
  DBedtSubTotal3XCantParticipProfTC.Color:= clWhite;
  DBedtSubTotal3XCantParticipProfTP.Color:= clWhite;
  DBedtSubTotal3XCantParticipUnivMun.Color:= clWhite;
  DBedtSubTotal3XCantParticipADistancia.Color:= clWhite;
  DBedtSubTotal3XCantGradTotal.Color:= clWhite;
  DBedtSubTotal3XCantGradMujeres.Color:= clWhite;
  DBedtSubTotal3XCantGradExtranjeros.Color:= clWhite;
  DBedtSubTotal3XCantGradProfTC.Color:= clWhite;
  DBedtSubTotal3XCantGradProfTP.Color:= clWhite;


  //Total
  DBedtTotalXCantActivTotal.Color:= clWhite;
  DBedtTotalXCantActivUnivMun.Color:= clWhite;
  DBedtTotalXCantActivADistancia.Color:= clWhite;
  DBedtTotalXCantActivExtranjero.Color:= clWhite;
  DBedtTotalXCantParticipTotal.Color:= clWhite;
  DBedtTotalXCantParticipMujeres.Color:= clWhite;
  DBedtTotalXCantParticipExtranjeros.Color:= clWhite;
  DBedtTotalXCantParticipProfTC.Color:= clWhite;
  DBedtTotalXCantParticipProfTP.Color:= clWhite;
  DBedtTotalXCantParticipUnivMun.Color:= clWhite;
  DBedtTotalXCantParticipADistancia.Color:= clWhite;
  DBedtTotalXCantGradTotal.Color:= clWhite;
  DBedtTotalXCantGradMujeres.Color:= clWhite;
  DBedtTotalXCantGradExtranjeros.Color:= clWhite;
  DBedtTotalXCantGradProfTC.Color:= clWhite;
  DBedtTotalXCantGradProfTP.Color:= clWhite;
end;



procedure TfrmModificarPlanilla1164_01.ColorearDBEditsVacios;
const
  clColorEditVacio= TColor($00B7B7FF);
begin
  //Datos Generales
  if ( Trim(DBedtNombreCentroInformante.Field.Text) = '' ) then DBedtNombreCentroInformante.Color:= clColorEditVacio;
  if ( Trim(DBedtCodigoCentroInformante.Field.Text) = '' ) then DBedtCodigoCentroInformante.Color:= clColorEditVacio;
  if ( Trim(DBedtNombreDirectorEconomico.Field.Text) = '' ) then DBedtNombreDirectorEconomico.Color:= clColorEditVacio;
  if ( Trim(DBedtNombreRectorODirector.Field.Text) = '' ) then DBedtNombreRectorODirector.Color:= clColorEditVacio;


  //Sección I: Caracterización
  if ( Trim(DBedtDoctoresXTotal.Field.Text) = '' ) then DBedtDoctoresXTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoresXCantGrad.Field.Text) = '' ) then DBedtDoctoresXCantGrad.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoresXCantParticip.Field.Text) = '' ) then DBedtDoctoresXCantParticip.Color:= clColorEditVacio;



  //Sección II: Superación Profesional
  //Diplomados
  if ( Trim(DBedtDiplomadosXCantActivTotal.Field.Text) = '' ) then DBedtDiplomadosXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantActivUnivMun.Field.Text) = '' ) then DBedtDiplomadosXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantActivADistancia.Field.Text) = '' ) then DBedtDiplomadosXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantActivExtranjero.Field.Text) = '' ) then DBedtDiplomadosXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantParticipTotal.Field.Text) = '' ) then DBedtDiplomadosXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantParticipMujeres.Field.Text) = '' ) then DBedtDiplomadosXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantParticipExtranjeros.Field.Text) = '' ) then DBedtDiplomadosXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantParticipProfTC.Field.Text) = '' ) then DBedtDiplomadosXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantParticipProfTP.Field.Text) = '' ) then DBedtDiplomadosXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantParticipUnivMun.Field.Text) = '' ) then DBedtDiplomadosXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantParticipADistancia.Field.Text) = '' ) then DBedtDiplomadosXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantGradTotal.Field.Text) = '' ) then DBedtDiplomadosXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantGradMujeres.Field.Text) = '' ) then DBedtDiplomadosXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantGradExtranjeros.Field.Text) = '' ) then DBedtDiplomadosXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantGradProfTC.Field.Text) = '' ) then DBedtDiplomadosXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtDiplomadosXCantGradProfTP.Field.Text) = '' ) then DBedtDiplomadosXCantGradProfTP.Color:= clColorEditVacio;

  //Entrenamientos
  if ( Trim(DBedtEntrenamientosXCantActivTotal.Field.Text) = '' ) then DBedtEntrenamientosXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantActivUnivMun.Field.Text) = '' ) then DBedtEntrenamientosXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantActivADistancia.Field.Text) = '' ) then DBedtEntrenamientosXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantActivExtranjero.Field.Text) = '' ) then DBedtEntrenamientosXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantParticipTotal.Field.Text) = '' ) then DBedtEntrenamientosXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantParticipMujeres.Field.Text) = '' ) then DBedtEntrenamientosXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantParticipExtranjeros.Field.Text) = '' ) then DBedtEntrenamientosXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantParticipProfTC.Field.Text) = '' ) then DBedtEntrenamientosXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantParticipProfTP.Field.Text) = '' ) then DBedtEntrenamientosXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantParticipUnivMun.Field.Text) = '' ) then DBedtEntrenamientosXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantParticipADistancia.Field.Text) = '' ) then DBedtEntrenamientosXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantGradTotal.Field.Text) = '' ) then DBedtEntrenamientosXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantGradMujeres.Field.Text) = '' ) then DBedtEntrenamientosXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantGradExtranjeros.Field.Text) = '' ) then DBedtEntrenamientosXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantGradProfTC.Field.Text) = '' ) then DBedtEntrenamientosXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtEntrenamientosXCantGradProfTP.Field.Text) = '' ) then DBedtEntrenamientosXCantGradProfTP.Color:= clColorEditVacio;

  //Cursos
  if ( Trim(DBedtCursosXCantActivTotal.Field.Text) = '' ) then DBedtCursosXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantActivUnivMun.Field.Text) = '' ) then DBedtCursosXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantActivADistancia.Field.Text) = '' ) then DBedtCursosXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantActivExtranjero.Field.Text) = '' ) then DBedtCursosXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantParticipTotal.Field.Text) = '' ) then DBedtCursosXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantParticipMujeres.Field.Text) = '' ) then DBedtCursosXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantParticipExtranjeros.Field.Text) = '' ) then DBedtCursosXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantParticipProfTC.Field.Text) = '' ) then DBedtCursosXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantParticipProfTP.Field.Text) = '' ) then DBedtCursosXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantParticipUnivMun.Field.Text) = '' ) then DBedtCursosXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantParticipADistancia.Field.Text) = '' ) then DBedtCursosXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantGradTotal.Field.Text) = '' ) then DBedtCursosXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantGradMujeres.Field.Text) = '' ) then DBedtCursosXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantGradExtranjeros.Field.Text) = '' ) then DBedtCursosXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantGradProfTC.Field.Text) = '' ) then DBedtCursosXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtCursosXCantGradProfTP.Field.Text) = '' ) then DBedtCursosXCantGradProfTP.Color:= clColorEditVacio;

  //SubTotal II
  if ( Trim(DBedtSubTotal2XCantActivTotal.Field.Text) = '' ) then DBedtSubTotal2XCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantActivUnivMun.Field.Text) = '' ) then DBedtSubTotal2XCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantActivADistancia.Field.Text) = '' ) then DBedtSubTotal2XCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantActivExtranjero.Field.Text) = '' ) then DBedtSubTotal2XCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantParticipTotal.Field.Text) = '' ) then DBedtSubTotal2XCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantParticipMujeres.Field.Text) = '' ) then DBedtSubTotal2XCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantParticipExtranjeros.Field.Text) = '' ) then DBedtSubTotal2XCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantParticipProfTC.Field.Text) = '' ) then DBedtSubTotal2XCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantParticipProfTP.Field.Text) = '' ) then DBedtSubTotal2XCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantParticipUnivMun.Field.Text) = '' ) then DBedtSubTotal2XCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantParticipADistancia.Field.Text) = '' ) then DBedtSubTotal2XCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantGradTotal.Field.Text) = '' ) then DBedtSubTotal2XCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantGradMujeres.Field.Text) = '' ) then DBedtSubTotal2XCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantGradExtranjeros.Field.Text) = '' ) then DBedtSubTotal2XCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantGradProfTC.Field.Text) = '' ) then DBedtSubTotal2XCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal2XCantGradProfTP.Field.Text) = '' ) then DBedtSubTotal2XCantGradProfTP.Color:= clColorEditVacio;


  //Sección II: Postgrado Académico

  //Doctorados
  if ( Trim(DBedtDoctoradosXCantActivTotal.Field.Text) = '' ) then DBedtDoctoradosXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantActivUnivMun.Field.Text) = '' ) then DBedtDoctoradosXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantActivADistancia.Field.Text) = '' ) then DBedtDoctoradosXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantActivExtranjero.Field.Text) = '' ) then DBedtDoctoradosXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantParticipTotal.Field.Text) = '' ) then DBedtDoctoradosXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantParticipMujeres.Field.Text) = '' ) then DBedtDoctoradosXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantParticipExtranjeros.Field.Text) = '' ) then DBedtDoctoradosXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantParticipProfTC.Field.Text) = '' ) then DBedtDoctoradosXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantParticipProfTP.Field.Text) = '' ) then DBedtDoctoradosXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantParticipUnivMun.Field.Text) = '' ) then DBedtDoctoradosXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantParticipADistancia.Field.Text) = '' ) then DBedtDoctoradosXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantGradTotal.Field.Text) = '' ) then DBedtDoctoradosXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantGradMujeres.Field.Text) = '' ) then DBedtDoctoradosXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantGradExtranjeros.Field.Text) = '' ) then DBedtDoctoradosXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantGradProfTC.Field.Text) = '' ) then DBedtDoctoradosXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtDoctoradosXCantGradProfTP.Field.Text) = '' ) then DBedtDoctoradosXCantGradProfTP.Color:= clColorEditVacio;

  //Especialidades
  if ( Trim(DBedtEspecialidadesXCantActivTotal.Field.Text) = '' ) then DBedtEspecialidadesXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantActivUnivMun.Field.Text) = '' ) then DBedtEspecialidadesXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantActivADistancia.Field.Text) = '' ) then DBedtEspecialidadesXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantActivExtranjero.Field.Text) = '' ) then DBedtEspecialidadesXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantParticipTotal.Field.Text) = '' ) then DBedtEspecialidadesXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantParticipMujeres.Field.Text) = '' ) then DBedtEspecialidadesXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantParticipExtranjeros.Field.Text) = '' ) then DBedtEspecialidadesXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantParticipProfTC.Field.Text) = '' ) then DBedtEspecialidadesXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantParticipProfTP.Field.Text) = '' ) then DBedtEspecialidadesXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantParticipUnivMun.Field.Text) = '' ) then DBedtEspecialidadesXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantParticipADistancia.Field.Text) = '' ) then DBedtEspecialidadesXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantGradTotal.Field.Text) = '' ) then DBedtEspecialidadesXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantGradMujeres.Field.Text) = '' ) then DBedtEspecialidadesXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantGradExtranjeros.Field.Text) = '' ) then DBedtEspecialidadesXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantGradProfTC.Field.Text) = '' ) then DBedtEspecialidadesXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtEspecialidadesXCantGradProfTP.Field.Text) = '' ) then DBedtEspecialidadesXCantGradProfTP.Color:= clColorEditVacio;

  //Maestrías
  if ( Trim(DBedtMaestriasXCantActivTotal.Field.Text) = '' ) then DBedtMaestriasXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantActivUnivMun.Field.Text) = '' ) then DBedtMaestriasXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantActivADistancia.Field.Text) = '' ) then DBedtMaestriasXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantActivExtranjero.Field.Text) = '' ) then DBedtMaestriasXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantParticipTotal.Field.Text) = '' ) then DBedtMaestriasXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantParticipMujeres.Field.Text) = '' ) then DBedtMaestriasXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantParticipExtranjeros.Field.Text) = '' ) then DBedtMaestriasXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantParticipProfTC.Field.Text) = '' ) then DBedtMaestriasXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantParticipProfTP.Field.Text) = '' ) then DBedtMaestriasXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantParticipUnivMun.Field.Text) = '' ) then DBedtMaestriasXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantParticipADistancia.Field.Text) = '' ) then DBedtMaestriasXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantGradTotal.Field.Text) = '' ) then DBedtMaestriasXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantGradMujeres.Field.Text) = '' ) then DBedtMaestriasXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantGradExtranjeros.Field.Text) = '' ) then DBedtMaestriasXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantGradProfTC.Field.Text) = '' ) then DBedtMaestriasXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtMaestriasXCantGradProfTP.Field.Text) = '' ) then DBedtMaestriasXCantGradProfTP.Color:= clColorEditVacio;

  //SubTotal III
  if ( Trim(DBedtSubTotal3XCantActivTotal.Field.Text) = '' ) then DBedtSubTotal3XCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantActivUnivMun.Field.Text) = '' ) then DBedtSubTotal3XCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantActivADistancia.Field.Text) = '' ) then DBedtSubTotal3XCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantActivExtranjero.Field.Text) = '' ) then DBedtSubTotal3XCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantParticipTotal.Field.Text) = '' ) then DBedtSubTotal3XCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantParticipMujeres.Field.Text) = '' ) then DBedtSubTotal3XCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantParticipExtranjeros.Field.Text) = '' ) then DBedtSubTotal3XCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantParticipProfTC.Field.Text) = '' ) then DBedtSubTotal3XCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantParticipProfTP.Field.Text) = '' ) then DBedtSubTotal3XCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantParticipUnivMun.Field.Text) = '' ) then DBedtSubTotal3XCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantParticipADistancia.Field.Text) = '' ) then DBedtSubTotal3XCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantGradTotal.Field.Text) = '' ) then DBedtSubTotal3XCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantGradMujeres.Field.Text) = '' ) then DBedtSubTotal3XCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantGradExtranjeros.Field.Text) = '' ) then DBedtSubTotal3XCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantGradProfTC.Field.Text) = '' ) then DBedtSubTotal3XCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtSubTotal3XCantGradProfTP.Field.Text) = '' ) then DBedtSubTotal3XCantGradProfTP.Color:= clColorEditVacio;


  //Total
  if ( Trim(DBedtTotalXCantActivTotal.Field.Text) = '' ) then DBedtTotalXCantActivTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantActivUnivMun.Field.Text) = '' ) then DBedtTotalXCantActivUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantActivADistancia.Field.Text) = '' ) then DBedtTotalXCantActivADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantActivExtranjero.Field.Text) = '' ) then DBedtTotalXCantActivExtranjero.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantParticipTotal.Field.Text) = '' ) then DBedtTotalXCantParticipTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantParticipMujeres.Field.Text) = '' ) then DBedtTotalXCantParticipMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantParticipExtranjeros.Field.Text) = '' ) then DBedtTotalXCantParticipExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantParticipProfTC.Field.Text) = '' ) then DBedtTotalXCantParticipProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantParticipProfTP.Field.Text) = '' ) then DBedtTotalXCantParticipProfTP.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantParticipUnivMun.Field.Text) = '' ) then DBedtTotalXCantParticipUnivMun.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantParticipADistancia.Field.Text) = '' ) then DBedtTotalXCantParticipADistancia.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantGradTotal.Field.Text) = '' ) then DBedtTotalXCantGradTotal.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantGradMujeres.Field.Text) = '' ) then DBedtTotalXCantGradMujeres.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantGradExtranjeros.Field.Text) = '' ) then DBedtTotalXCantGradExtranjeros.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantGradProfTC.Field.Text) = '' ) then DBedtTotalXCantGradProfTC.Color:= clColorEditVacio;
  if ( Trim(DBedtTotalXCantGradProfTP.Field.Text) = '' ) then DBedtTotalXCantGradProfTP.Color:= clColorEditVacio;
end;



procedure TfrmModificarPlanilla1164_01.cmbxProvinciaChange(Sender: TObject);
begin
  //Muestro los municipios de la provincia mostrada en el ComboBox
  BookLogger.MostrarMunicipiosParaPlanilla1164_01PorNombreProvincia(cmbxProvincia.Text);
end;



procedure TfrmModificarPlanilla1164_01.BlanquearDBEditsLlenos;
begin
  //Datos Generales
  if ( Trim(DBedtNombreCentroInformante.Field.Text) <> '' ) then DBedtNombreCentroInformante.Color:= clWhite;
  if ( Trim(DBedtCodigoCentroInformante.Field.Text) <> '' ) then DBedtCodigoCentroInformante.Color:= clWhite;
  if ( Trim(DBedtNombreDirectorEconomico.Field.Text) <> '' ) then DBedtNombreDirectorEconomico.Color:= clWhite;
  if ( Trim(DBedtNombreRectorODirector.Field.Text) <> '' ) then DBedtNombreRectorODirector.Color:= clWhite;


  //Sección I: Caracterización
  if ( Trim(DBedtDoctoresXTotal.Field.Text) <> '' ) then DBedtDoctoresXTotal.Color:= clWhite;
  if ( Trim(DBedtDoctoresXCantGrad.Field.Text) <> '' ) then DBedtDoctoresXCantGrad.Color:= clWhite;
  if ( Trim(DBedtDoctoresXCantParticip.Field.Text) <> '' ) then DBedtDoctoresXCantParticip.Color:= clWhite;



  //Sección II: Superación Profesional
  //Diplomados
  if ( Trim(DBedtDiplomadosXCantActivTotal.Field.Text) <> '' ) then DBedtDiplomadosXCantActivTotal.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantActivUnivMun.Field.Text) <> '' ) then DBedtDiplomadosXCantActivUnivMun.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantActivADistancia.Field.Text) <> '' ) then DBedtDiplomadosXCantActivADistancia.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantActivExtranjero.Field.Text) <> '' ) then DBedtDiplomadosXCantActivExtranjero.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantParticipTotal.Field.Text) <> '' ) then DBedtDiplomadosXCantParticipTotal.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantParticipMujeres.Field.Text) <> '' ) then DBedtDiplomadosXCantParticipMujeres.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantParticipExtranjeros.Field.Text) <> '' ) then DBedtDiplomadosXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantParticipProfTC.Field.Text) <> '' ) then DBedtDiplomadosXCantParticipProfTC.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantParticipProfTP.Field.Text) <> '' ) then DBedtDiplomadosXCantParticipProfTP.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantParticipUnivMun.Field.Text) <> '' ) then DBedtDiplomadosXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantParticipADistancia.Field.Text) <> '' ) then DBedtDiplomadosXCantParticipADistancia.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantGradTotal.Field.Text) <> '' ) then DBedtDiplomadosXCantGradTotal.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantGradMujeres.Field.Text) <> '' ) then DBedtDiplomadosXCantGradMujeres.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantGradExtranjeros.Field.Text) <> '' ) then DBedtDiplomadosXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantGradProfTC.Field.Text) <> '' ) then DBedtDiplomadosXCantGradProfTC.Color:= clWhite;
  if ( Trim(DBedtDiplomadosXCantGradProfTP.Field.Text) <> '' ) then DBedtDiplomadosXCantGradProfTP.Color:= clWhite;

  //Entrenamientos
  if ( Trim(DBedtEntrenamientosXCantActivTotal.Field.Text) <> '' ) then DBedtEntrenamientosXCantActivTotal.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantActivUnivMun.Field.Text) <> '' ) then DBedtEntrenamientosXCantActivUnivMun.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantActivADistancia.Field.Text) <> '' ) then DBedtEntrenamientosXCantActivADistancia.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantActivExtranjero.Field.Text) <> '' ) then DBedtEntrenamientosXCantActivExtranjero.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantParticipTotal.Field.Text) <> '' ) then DBedtEntrenamientosXCantParticipTotal.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantParticipMujeres.Field.Text) <> '' ) then DBedtEntrenamientosXCantParticipMujeres.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantParticipExtranjeros.Field.Text) <> '' ) then DBedtEntrenamientosXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantParticipProfTC.Field.Text) <> '' ) then DBedtEntrenamientosXCantParticipProfTC.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantParticipProfTP.Field.Text) <> '' ) then DBedtEntrenamientosXCantParticipProfTP.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantParticipUnivMun.Field.Text) <> '' ) then DBedtEntrenamientosXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantParticipADistancia.Field.Text) <> '' ) then DBedtEntrenamientosXCantParticipADistancia.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantGradTotal.Field.Text) <> '' ) then DBedtEntrenamientosXCantGradTotal.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantGradMujeres.Field.Text) <> '' ) then DBedtEntrenamientosXCantGradMujeres.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantGradExtranjeros.Field.Text) <> '' ) then DBedtEntrenamientosXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantGradProfTC.Field.Text) <> '' ) then DBedtEntrenamientosXCantGradProfTC.Color:= clWhite;
  if ( Trim(DBedtEntrenamientosXCantGradProfTP.Field.Text) <> '' ) then DBedtEntrenamientosXCantGradProfTP.Color:= clWhite;

  //Cursos
  if ( Trim(DBedtCursosXCantActivTotal.Field.Text) <> '' ) then DBedtCursosXCantActivTotal.Color:= clWhite;
  if ( Trim(DBedtCursosXCantActivUnivMun.Field.Text) <> '' ) then DBedtCursosXCantActivUnivMun.Color:= clWhite;
  if ( Trim(DBedtCursosXCantActivADistancia.Field.Text) <> '' ) then DBedtCursosXCantActivADistancia.Color:= clWhite;
  if ( Trim(DBedtCursosXCantActivExtranjero.Field.Text) <> '' ) then DBedtCursosXCantActivExtranjero.Color:= clWhite;
  if ( Trim(DBedtCursosXCantParticipTotal.Field.Text) <> '' ) then DBedtCursosXCantParticipTotal.Color:= clWhite;
  if ( Trim(DBedtCursosXCantParticipMujeres.Field.Text) <> '' ) then DBedtCursosXCantParticipMujeres.Color:= clWhite;
  if ( Trim(DBedtCursosXCantParticipExtranjeros.Field.Text) <> '' ) then DBedtCursosXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(DBedtCursosXCantParticipProfTC.Field.Text) <> '' ) then DBedtCursosXCantParticipProfTC.Color:= clWhite;
  if ( Trim(DBedtCursosXCantParticipProfTP.Field.Text) <> '' ) then DBedtCursosXCantParticipProfTP.Color:= clWhite;
  if ( Trim(DBedtCursosXCantParticipUnivMun.Field.Text) <> '' ) then DBedtCursosXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(DBedtCursosXCantParticipADistancia.Field.Text) <> '' ) then DBedtCursosXCantParticipADistancia.Color:= clWhite;
  if ( Trim(DBedtCursosXCantGradTotal.Field.Text) <> '' ) then DBedtCursosXCantGradTotal.Color:= clWhite;
  if ( Trim(DBedtCursosXCantGradMujeres.Field.Text) <> '' ) then DBedtCursosXCantGradMujeres.Color:= clWhite;
  if ( Trim(DBedtCursosXCantGradExtranjeros.Field.Text) <> '' ) then DBedtCursosXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(DBedtCursosXCantGradProfTC.Field.Text) <> '' ) then DBedtCursosXCantGradProfTC.Color:= clWhite;
  if ( Trim(DBedtCursosXCantGradProfTP.Field.Text) <> '' ) then DBedtCursosXCantGradProfTP.Color:= clWhite;

  //SubTotal II
  if ( Trim(DBedtSubTotal2XCantActivTotal.Field.Text) <> '' ) then DBedtSubTotal2XCantActivTotal.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantActivUnivMun.Field.Text) <> '' ) then DBedtSubTotal2XCantActivUnivMun.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantActivADistancia.Field.Text) <> '' ) then DBedtSubTotal2XCantActivADistancia.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantActivExtranjero.Field.Text) <> '' ) then DBedtSubTotal2XCantActivExtranjero.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantParticipTotal.Field.Text) <> '' ) then DBedtSubTotal2XCantParticipTotal.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantParticipMujeres.Field.Text) <> '' ) then DBedtSubTotal2XCantParticipMujeres.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantParticipExtranjeros.Field.Text) <> '' ) then DBedtSubTotal2XCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantParticipProfTC.Field.Text) <> '' ) then DBedtSubTotal2XCantParticipProfTC.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantParticipProfTP.Field.Text) <> '' ) then DBedtSubTotal2XCantParticipProfTP.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantParticipUnivMun.Field.Text) <> '' ) then DBedtSubTotal2XCantParticipUnivMun.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantParticipADistancia.Field.Text) <> '' ) then DBedtSubTotal2XCantParticipADistancia.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantGradTotal.Field.Text) <> '' ) then DBedtSubTotal2XCantGradTotal.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantGradMujeres.Field.Text) <> '' ) then DBedtSubTotal2XCantGradMujeres.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantGradExtranjeros.Field.Text) <> '' ) then DBedtSubTotal2XCantGradExtranjeros.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantGradProfTC.Field.Text) <> '' ) then DBedtSubTotal2XCantGradProfTC.Color:= clWhite;
  if ( Trim(DBedtSubTotal2XCantGradProfTP.Field.Text) <> '' ) then DBedtSubTotal2XCantGradProfTP.Color:= clWhite;


  //Sección II: Postgrado Académico

  //Doctorados
  if ( Trim(DBedtDoctoradosXCantActivTotal.Field.Text) <> '' ) then DBedtDoctoradosXCantActivTotal.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantActivUnivMun.Field.Text) <> '' ) then DBedtDoctoradosXCantActivUnivMun.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantActivADistancia.Field.Text) <> '' ) then DBedtDoctoradosXCantActivADistancia.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantActivExtranjero.Field.Text) <> '' ) then DBedtDoctoradosXCantActivExtranjero.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantParticipTotal.Field.Text) <> '' ) then DBedtDoctoradosXCantParticipTotal.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantParticipMujeres.Field.Text) <> '' ) then DBedtDoctoradosXCantParticipMujeres.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantParticipExtranjeros.Field.Text) <> '' ) then DBedtDoctoradosXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantParticipProfTC.Field.Text) <> '' ) then DBedtDoctoradosXCantParticipProfTC.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantParticipProfTP.Field.Text) <> '' ) then DBedtDoctoradosXCantParticipProfTP.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantParticipUnivMun.Field.Text) <> '' ) then DBedtDoctoradosXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantParticipADistancia.Field.Text) <> '' ) then DBedtDoctoradosXCantParticipADistancia.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantGradTotal.Field.Text) <> '' ) then DBedtDoctoradosXCantGradTotal.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantGradMujeres.Field.Text) <> '' ) then DBedtDoctoradosXCantGradMujeres.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantGradExtranjeros.Field.Text) <> '' ) then DBedtDoctoradosXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantGradProfTC.Field.Text) <> '' ) then DBedtDoctoradosXCantGradProfTC.Color:= clWhite;
  if ( Trim(DBedtDoctoradosXCantGradProfTP.Field.Text) <> '' ) then DBedtDoctoradosXCantGradProfTP.Color:= clWhite;

  //Especialidades
  if ( Trim(DBedtEspecialidadesXCantActivTotal.Field.Text) <> '' ) then DBedtEspecialidadesXCantActivTotal.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantActivUnivMun.Field.Text) <> '' ) then DBedtEspecialidadesXCantActivUnivMun.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantActivADistancia.Field.Text) <> '' ) then DBedtEspecialidadesXCantActivADistancia.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantActivExtranjero.Field.Text) <> '' ) then DBedtEspecialidadesXCantActivExtranjero.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantParticipTotal.Field.Text) <> '' ) then DBedtEspecialidadesXCantParticipTotal.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantParticipMujeres.Field.Text) <> '' ) then DBedtEspecialidadesXCantParticipMujeres.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantParticipExtranjeros.Field.Text) <> '' ) then DBedtEspecialidadesXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantParticipProfTC.Field.Text) <> '' ) then DBedtEspecialidadesXCantParticipProfTC.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantParticipProfTP.Field.Text) <> '' ) then DBedtEspecialidadesXCantParticipProfTP.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantParticipUnivMun.Field.Text) <> '' ) then DBedtEspecialidadesXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantParticipADistancia.Field.Text) <> '' ) then DBedtEspecialidadesXCantParticipADistancia.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantGradTotal.Field.Text) <> '' ) then DBedtEspecialidadesXCantGradTotal.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantGradMujeres.Field.Text) <> '' ) then DBedtEspecialidadesXCantGradMujeres.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantGradExtranjeros.Field.Text) <> '' ) then DBedtEspecialidadesXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantGradProfTC.Field.Text) <> '' ) then DBedtEspecialidadesXCantGradProfTC.Color:= clWhite;
  if ( Trim(DBedtEspecialidadesXCantGradProfTP.Field.Text) <> '' ) then DBedtEspecialidadesXCantGradProfTP.Color:= clWhite;

  //Maestrías
  if ( Trim(DBedtMaestriasXCantActivTotal.Field.Text) <> '' ) then DBedtMaestriasXCantActivTotal.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantActivUnivMun.Field.Text) <> '' ) then DBedtMaestriasXCantActivUnivMun.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantActivADistancia.Field.Text) <> '' ) then DBedtMaestriasXCantActivADistancia.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantActivExtranjero.Field.Text) <> '' ) then DBedtMaestriasXCantActivExtranjero.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantParticipTotal.Field.Text) <> '' ) then DBedtMaestriasXCantParticipTotal.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantParticipMujeres.Field.Text) <> '' ) then DBedtMaestriasXCantParticipMujeres.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantParticipExtranjeros.Field.Text) <> '' ) then DBedtMaestriasXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantParticipProfTC.Field.Text) <> '' ) then DBedtMaestriasXCantParticipProfTC.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantParticipProfTP.Field.Text) <> '' ) then DBedtMaestriasXCantParticipProfTP.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantParticipUnivMun.Field.Text) <> '' ) then DBedtMaestriasXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantParticipADistancia.Field.Text) <> '' ) then DBedtMaestriasXCantParticipADistancia.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantGradTotal.Field.Text) <> '' ) then DBedtMaestriasXCantGradTotal.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantGradMujeres.Field.Text) <> '' ) then DBedtMaestriasXCantGradMujeres.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantGradExtranjeros.Field.Text) <> '' ) then DBedtMaestriasXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantGradProfTC.Field.Text) <> '' ) then DBedtMaestriasXCantGradProfTC.Color:= clWhite;
  if ( Trim(DBedtMaestriasXCantGradProfTP.Field.Text) <> '' ) then DBedtMaestriasXCantGradProfTP.Color:= clWhite;

  //SubTotal III
  if ( Trim(DBedtSubTotal3XCantActivTotal.Field.Text) <> '' ) then DBedtSubTotal3XCantActivTotal.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantActivUnivMun.Field.Text) <> '' ) then DBedtSubTotal3XCantActivUnivMun.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantActivADistancia.Field.Text) <> '' ) then DBedtSubTotal3XCantActivADistancia.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantActivExtranjero.Field.Text) <> '' ) then DBedtSubTotal3XCantActivExtranjero.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantParticipTotal.Field.Text) <> '' ) then DBedtSubTotal3XCantParticipTotal.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantParticipMujeres.Field.Text) <> '' ) then DBedtSubTotal3XCantParticipMujeres.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantParticipExtranjeros.Field.Text) <> '' ) then DBedtSubTotal3XCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantParticipProfTC.Field.Text) <> '' ) then DBedtSubTotal3XCantParticipProfTC.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantParticipProfTP.Field.Text) <> '' ) then DBedtSubTotal3XCantParticipProfTP.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantParticipUnivMun.Field.Text) <> '' ) then DBedtSubTotal3XCantParticipUnivMun.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantParticipADistancia.Field.Text) <> '' ) then DBedtSubTotal3XCantParticipADistancia.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantGradTotal.Field.Text) <> '' ) then DBedtSubTotal3XCantGradTotal.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantGradMujeres.Field.Text) <> '' ) then DBedtSubTotal3XCantGradMujeres.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantGradExtranjeros.Field.Text) <> '' ) then DBedtSubTotal3XCantGradExtranjeros.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantGradProfTC.Field.Text) <> '' ) then DBedtSubTotal3XCantGradProfTC.Color:= clWhite;
  if ( Trim(DBedtSubTotal3XCantGradProfTP.Field.Text) <> '' ) then DBedtSubTotal3XCantGradProfTP.Color:= clWhite;


  //Total
  if ( Trim(DBedtTotalXCantActivTotal.Field.Text) <> '' ) then DBedtTotalXCantActivTotal.Color:= clWhite;
  if ( Trim(DBedtTotalXCantActivUnivMun.Field.Text) <> '' ) then DBedtTotalXCantActivUnivMun.Color:= clWhite;
  if ( Trim(DBedtTotalXCantActivADistancia.Field.Text) <> '' ) then DBedtTotalXCantActivADistancia.Color:= clWhite;
  if ( Trim(DBedtTotalXCantActivExtranjero.Field.Text) <> '' ) then DBedtTotalXCantActivExtranjero.Color:= clWhite;
  if ( Trim(DBedtTotalXCantParticipTotal.Field.Text) <> '' ) then DBedtTotalXCantParticipTotal.Color:= clWhite;
  if ( Trim(DBedtTotalXCantParticipMujeres.Field.Text) <> '' ) then DBedtTotalXCantParticipMujeres.Color:= clWhite;
  if ( Trim(DBedtTotalXCantParticipExtranjeros.Field.Text) <> '' ) then DBedtTotalXCantParticipExtranjeros.Color:= clWhite;
  if ( Trim(DBedtTotalXCantParticipProfTC.Field.Text) <> '' ) then DBedtTotalXCantParticipProfTC.Color:= clWhite;
  if ( Trim(DBedtTotalXCantParticipProfTP.Field.Text) <> '' ) then DBedtTotalXCantParticipProfTP.Color:= clWhite;
  if ( Trim(DBedtTotalXCantParticipUnivMun.Field.Text) <> '' ) then DBedtTotalXCantParticipUnivMun.Color:= clWhite;
  if ( Trim(DBedtTotalXCantParticipADistancia.Field.Text) <> '' ) then DBedtTotalXCantParticipADistancia.Color:= clWhite;
  if ( Trim(DBedtTotalXCantGradTotal.Field.Text) <> '' ) then DBedtTotalXCantGradTotal.Color:= clWhite;
  if ( Trim(DBedtTotalXCantGradMujeres.Field.Text) <> '' ) then DBedtTotalXCantGradMujeres.Color:= clWhite;
  if ( Trim(DBedtTotalXCantGradExtranjeros.Field.Text) <> '' ) then DBedtTotalXCantGradExtranjeros.Color:= clWhite;
  if ( Trim(DBedtTotalXCantGradProfTC.Field.Text) <> '' ) then DBedtTotalXCantGradProfTC.Color:= clWhite;
  if ( Trim(DBedtTotalXCantGradProfTP.Field.Text) <> '' ) then DBedtTotalXCantGradProfTP.Color:= clWhite;
end;



procedure TfrmModificarPlanilla1164_01.ReposicionarComponentesNoDirectos;
var
  ID_Municipio: Integer;
begin
  //Reordeno los componentes no directos (provincia)
  cmbxProvincia.Text:= FProvincia;

  //Ejecuto el evento ONChange del ComboBox de provincia (esto llena el DBLookUpComboBox de los municipios)
  cmbxProvincia.OnChange(self);

  //Busco el ID_Municipio, por su Municipio
  BookLogger.BuscarID_MunicipioParaPlanilla1164_01PorNombreMunicipio(DBtxtMunicipio.Field.Text);

  //Recojo el ID del municipio encontrado
  ID_Municipio:= StrToInt(DBtxtID_MunicipioBuscado.Field.Text);

  //Posiciono el DBLookUpComboBox de Municipios en la posicion correcta
  DBlucmbxMunicipio.KeyValue:= ID_Municipio;

  //Reordeno los componentes no directos (Año - DateTimePicker)
  dtpAnno.Date:= StrToDate('21/01/' + DBtxtAnno.Field.Text);
end;



procedure TfrmModificarPlanilla1164_01.btnPrevisualizarPlanilla1164_01Click(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Planilla 1164-01
        PrevisualizarReportePlanilla1164_01;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmModificarPlanilla1164_01.ExportarHaciaPDFReportePlanilla1164_01;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmModificarPlanilla1164_01.Caption:= 'BookLogger. Exportando el Reporte de Planilla 1164-01 a PDF';

        //*** Usando QuickReport ***
        //Conformo los captions del QuickReport
        QuickReportPlanilla1164_01.QRlblReferente.Caption:= 'Modelo 1164-01.  Año ' + IntToStr(TempViejaPlanilla.Anno) + '.  Centro: ' + TempViejaPlanilla.NombreCentroInformante + ' (' + TempViejaPlanilla.CodigoCentroInformante + ')';
        QuickReportPlanilla1164_01.QRlblFechaConfeccionado.Caption:= 'Confeccionado el: ' + DateTimeToStr(TempViejaPlanilla.FechaConfeccion);
        QuickReportPlanilla1164_01.QRlblFechaEmitido.Caption:= 'Emitida la presente copia el: ' + BookLogger.ObtenerFechaDelSistema;
        QuickReportPlanilla1164_01.QRlblProcedencia.Caption:= 'Procedencia: ' + TempViejaPlanilla.Provincia + ' / ' + TempViejaPlanilla.Municipio;

        //Actualizo y muestro la planilla 1164-01
        BookLogger.BuscarPlanilla1164_01PorID_Planilla(FID_Planilla);

        //Envio datos adicionales para el Preview
        //frmPreviewReportePlanilla1164_01.IdiomaImperante:= BookLogger.IdiomaImperante;
        frmPreviewReportePlanilla1164_01.FechaDelSistema:= BookLogger.ObtenerFechaDelSistema;

        //Le envio el reporte hacia el ExportQR
        //QuickReportHabitacionesExistentes.Prepare;
        EXQR.Report := QuickReportPlanilla1164_01;

        //Mando a que el ExportQR exporte el reporte ya almacenado
        EXQR.ExportQR;

        QuickReportPlanilla1164_01.QRPrinter.Free;
        QuickReportPlanilla1164_01.QRPrinter := nil;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmModificarPlanilla1164_01.Caption:= 'BookLogger - Sistema de Control Docente Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmModificarPlanilla1164_01.ImprimirReportePlanilla1164_01;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Conformo los captions del QuickReport
        QuickReportPlanilla1164_01.QRlblReferente.Caption:= 'Modelo 1164-01.  Año ' + IntToStr(TempViejaPlanilla.Anno) + '.  Centro: ' + TempViejaPlanilla.NombreCentroInformante + ' (' + TempViejaPlanilla.CodigoCentroInformante + ')';
        QuickReportPlanilla1164_01.QRlblFechaConfeccionado.Caption:= 'Confeccionado el: ' + DateTimeToStr(TempViejaPlanilla.FechaConfeccion);
        QuickReportPlanilla1164_01.QRlblFechaEmitido.Caption:= 'Emitida la presente copia el: ' + BookLogger.ObtenerFechaDelSistema;
        QuickReportPlanilla1164_01.QRlblProcedencia.Caption:= 'Procedencia: ' + TempViejaPlanilla.Provincia + ' / ' + TempViejaPlanilla.Municipio;

        //Actualizo y muestro la planilla 1164-01
        BookLogger.BuscarPlanilla1164_01PorID_Planilla(FID_Planilla);

        //Envio datos adicionales para el Preview
        //frmPreviewReportePlanilla1164_01.IdiomaImperante:= BookLogger.IdiomaImperante;
        frmPreviewReportePlanilla1164_01.FechaDelSistema:= BookLogger.ObtenerFechaDelSistema;

        //Imprimo el reporte
        QuickReportPlanilla1164_01.Print;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmModificarPlanilla1164_01.PrevisualizarReportePlanilla1164_01;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Conformo los captions del QuickReport
        QuickReportPlanilla1164_01.QRlblReferente.Caption:= 'Modelo 1164-01.  Año ' + IntToStr(TempViejaPlanilla.Anno) + '.  Centro: ' + TempViejaPlanilla.NombreCentroInformante + ' (' + TempViejaPlanilla.CodigoCentroInformante + ')';
        QuickReportPlanilla1164_01.QRlblFechaConfeccionado.Caption:= 'Confeccionado el: ' + DateTimeToStr(TempViejaPlanilla.FechaConfeccion);
        QuickReportPlanilla1164_01.QRlblFechaEmitido.Caption:= 'Emitida la presente copia el: ' + BookLogger.ObtenerFechaDelSistema;
        QuickReportPlanilla1164_01.QRlblProcedencia.Caption:= 'Procedencia: ' + TempViejaPlanilla.Provincia + ' / ' + TempViejaPlanilla.Municipio;

        //Actualizo y muestro la planilla 1164-01
        BookLogger.BuscarPlanilla1164_01PorID_Planilla(FID_Planilla);

        //Envio datos adicionales para el Preview
        //frmPreviewReportePlanilla1164_01.IdiomaImperante:= BookLogger.IdiomaImperante;
        frmPreviewReportePlanilla1164_01.FechaDelSistema:= BookLogger.ObtenerFechaDelSistema;

        //Muestro el reporte (Quick Report, vista previa)
        QuickReportPlanilla1164_01.PreviewModal;

        QuickReportPlanilla1164_01.QRImageLogo.Refresh;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmModificarPlanilla1164_01.btnExportarHaciaPDFPlanilla1164_01Click(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto a PDF el Reporte de Planilla 1164-01
        ExportarHaciaPDFReportePlanilla1164_01;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmModificarPlanilla1164_01.btnImprimirPlanilla1164_01Click(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Planilla 1164-01
        ImprimirReportePlanilla1164_01;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmModificarPlanilla1164_01.btnImportarPlanillaDesdeFicheroClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Importo la Planilla 1164-01 desde un fichero
        //ImportarPlanilla1164_01DesdeFichero;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmModificarPlanilla1164_01.ImportarPlanilla1164_01DesdeFichero;
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



procedure TfrmModificarPlanilla1164_01.RellenarComponentesDesdePlanilla1164_01(aPlanilla1164_01: TPlanilla1164_01);
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
  DBedtNombreCentroInformante.Text:= aPlanilla1164_01.NombreCentroInformante;
  DBedtCodigoCentroInformante.Text:= aPlanilla1164_01.CodigoCentroInformante;
  DBedtNombreDirectorEconomico.Text:= aPlanilla1164_01.NombreDirectorEconomico;
  DBedtNombreRectorODirector.Text:= aPlanilla1164_01.NombreRectorODirector;
  //edtFechaConfeccion:= StrToDateTime(BookLogger.ObtenerFechaDelSistema + ' ' + BookLogger.ObtenerHoraDelSistema) );


  //Sección I: Caracterización
  DBedtDoctoresXTotal.Text:= IntToStr(aPlanilla1164_01.DoctoresXTotal);
  DBedtDoctoresXCantGrad.Text:= IntToStr(aPlanilla1164_01.DoctoresXCantGrad);
  DBedtDoctoresXCantParticip.Text:= IntToStr(aPlanilla1164_01.DoctoresXCantParticip);

    

  //Sección II: Superación Profesional
  //Diplomados
  DBedtDiplomadosXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantActivTotal);
  DBedtDiplomadosXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantActivUnivMun);
  DBedtDiplomadosXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantActivADistancia);
  DBedtDiplomadosXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantActivExtranjero);
  DBedtDiplomadosXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipTotal);
  DBedtDiplomadosXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipMujeres);
  DBedtDiplomadosXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipExtranjeros);
  DBedtDiplomadosXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipProfTC);
  DBedtDiplomadosXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipProfTP);
  DBedtDiplomadosXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipUnivMun);
  DBedtDiplomadosXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantParticipADistancia);
  DBedtDiplomadosXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradTotal);
  DBedtDiplomadosXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradMujeres);
  DBedtDiplomadosXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradExtranjeros);
  DBedtDiplomadosXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradProfTC);
  DBedtDiplomadosXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.DiplomadosXCantGradProfTP);

  //Entrenamientos
  DBedtEntrenamientosXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantActivTotal);
  DBedtEntrenamientosXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantActivUnivMun);
  DBedtEntrenamientosXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantActivADistancia);
  DBedtEntrenamientosXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantActivExtranjero);
  DBedtEntrenamientosXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipTotal);
  DBedtEntrenamientosXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipMujeres);
  DBedtEntrenamientosXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipExtranjeros);
  DBedtEntrenamientosXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipProfTC);
  DBedtEntrenamientosXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipProfTP);
  DBedtEntrenamientosXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipUnivMun);
  DBedtEntrenamientosXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantParticipADistancia);
  DBedtEntrenamientosXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradTotal);
  DBedtEntrenamientosXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradMujeres);
  DBedtEntrenamientosXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradExtranjeros);
  DBedtEntrenamientosXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradProfTC);
  DBedtEntrenamientosXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.EntrenamientosXCantGradProfTP);

  //Cursos
  DBedtCursosXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.CursosXCantActivTotal);
  DBedtCursosXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.CursosXCantActivUnivMun);
  DBedtCursosXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.CursosXCantActivADistancia);
  DBedtCursosXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.CursosXCantActivExtranjero);
  DBedtCursosXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipTotal);
  DBedtCursosXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipMujeres);
  DBedtCursosXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipExtranjeros);
  DBedtCursosXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipProfTC);
  DBedtCursosXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipProfTP);
  DBedtCursosXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipUnivMun);
  DBedtCursosXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.CursosXCantParticipADistancia);
  DBedtCursosXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradTotal);
  DBedtCursosXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradMujeres);
  DBedtCursosXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradExtranjeros);
  DBedtCursosXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradProfTC);
  DBedtCursosXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.CursosXCantGradProfTP);

  //SubTotal II
  DBedtSubTotal2XCantActivTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantActivTotal);
  DBedtSubTotal2XCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantActivUnivMun);
  DBedtSubTotal2XCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantActivADistancia);
  DBedtSubTotal2XCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantActivExtranjero);
  DBedtSubTotal2XCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipTotal);
  DBedtSubTotal2XCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipMujeres);
  DBedtSubTotal2XCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipExtranjeros);
  DBedtSubTotal2XCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipProfTC);
  DBedtSubTotal2XCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipProfTP);
  DBedtSubTotal2XCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipUnivMun);
  DBedtSubTotal2XCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantParticipADistancia);
  DBedtSubTotal2XCantGradTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradTotal);
  DBedtSubTotal2XCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradMujeres);
  DBedtSubTotal2XCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradExtranjeros);
  DBedtSubTotal2XCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradProfTC);
  DBedtSubTotal2XCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.SubTotal2XCantGradProfTP);


  //Sección II: Postgrado Académico

  //Doctorados
  DBedtDoctoradosXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantActivTotal);
  DBedtDoctoradosXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantActivUnivMun);
  DBedtDoctoradosXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantActivADistancia);
  DBedtDoctoradosXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantActivExtranjero);
  DBedtDoctoradosXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipTotal);
  DBedtDoctoradosXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipMujeres);
  DBedtDoctoradosXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipExtranjeros);
  DBedtDoctoradosXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipProfTC);
  DBedtDoctoradosXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipProfTP);
  DBedtDoctoradosXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipUnivMun);
  DBedtDoctoradosXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantParticipADistancia);
  DBedtDoctoradosXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradTotal);
  DBedtDoctoradosXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradMujeres);
  DBedtDoctoradosXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradExtranjeros);
  DBedtDoctoradosXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradProfTC);
  DBedtDoctoradosXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.DoctoradosXCantGradProfTP);

  //Especialidades
  DBedtEspecialidadesXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantActivTotal);
  DBedtEspecialidadesXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantActivUnivMun);
  DBedtEspecialidadesXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantActivADistancia);
  DBedtEspecialidadesXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantActivExtranjero);
  DBedtEspecialidadesXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipTotal);
  DBedtEspecialidadesXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipMujeres);
  DBedtEspecialidadesXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipExtranjeros);
  DBedtEspecialidadesXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipProfTC);
  DBedtEspecialidadesXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipProfTP);
  DBedtEspecialidadesXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipUnivMun);
  DBedtEspecialidadesXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantParticipADistancia);
  DBedtEspecialidadesXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradTotal);
  DBedtEspecialidadesXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradMujeres);
  DBedtEspecialidadesXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradExtranjeros);
  DBedtEspecialidadesXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradProfTC);
  DBedtEspecialidadesXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.EspecialidadesXCantGradProfTP);

  //Maestrías
  DBedtMaestriasXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantActivTotal);
  DBedtMaestriasXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantActivUnivMun);
  DBedtMaestriasXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantActivADistancia);
  DBedtMaestriasXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantActivExtranjero);
  DBedtMaestriasXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipTotal);
  DBedtMaestriasXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipMujeres);
  DBedtMaestriasXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipExtranjeros);
  DBedtMaestriasXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipProfTC);
  DBedtMaestriasXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipProfTP);
  DBedtMaestriasXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipUnivMun);
  DBedtMaestriasXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantParticipADistancia);
  DBedtMaestriasXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradTotal);
  DBedtMaestriasXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradMujeres);
  DBedtMaestriasXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradExtranjeros);
  DBedtMaestriasXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradProfTC);
  DBedtMaestriasXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.MaestriasXCantGradProfTP);

  //SubTotal III
  DBedtSubTotal3XCantActivTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantActivTotal);
  DBedtSubTotal3XCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantActivUnivMun);
  DBedtSubTotal3XCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantActivADistancia);
  DBedtSubTotal3XCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantActivExtranjero);
  DBedtSubTotal3XCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipTotal);
  DBedtSubTotal3XCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipMujeres);
  DBedtSubTotal3XCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipExtranjeros);
  DBedtSubTotal3XCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipProfTC);
  DBedtSubTotal3XCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipProfTP);
  DBedtSubTotal3XCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipUnivMun);
  DBedtSubTotal3XCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantParticipADistancia);
  DBedtSubTotal3XCantGradTotal.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradTotal);
  DBedtSubTotal3XCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradMujeres);
  DBedtSubTotal3XCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradExtranjeros);
  DBedtSubTotal3XCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradProfTC);
  DBedtSubTotal3XCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.SubTotal3XCantGradProfTP);


  //Total
  DBedtTotalXCantActivTotal.Text:= IntToStr(aPlanilla1164_01.TotalXCantActivTotal);
  DBedtTotalXCantActivUnivMun.Text:= IntToStr(aPlanilla1164_01.TotalXCantActivUnivMun);
  DBedtTotalXCantActivADistancia.Text:= IntToStr(aPlanilla1164_01.TotalXCantActivADistancia);
  DBedtTotalXCantActivExtranjero.Text:= IntToStr(aPlanilla1164_01.TotalXCantActivExtranjero);
  DBedtTotalXCantParticipTotal.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipTotal);
  DBedtTotalXCantParticipMujeres.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipMujeres);
  DBedtTotalXCantParticipExtranjeros.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipExtranjeros);
  DBedtTotalXCantParticipProfTC.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipProfTC);
  DBedtTotalXCantParticipProfTP.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipProfTP);
  DBedtTotalXCantParticipUnivMun.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipUnivMun);
  DBedtTotalXCantParticipADistancia.Text:= IntToStr(aPlanilla1164_01.TotalXCantParticipADistancia);
  DBedtTotalXCantGradTotal.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradTotal);
  DBedtTotalXCantGradMujeres.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradMujeres);
  DBedtTotalXCantGradExtranjeros.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradExtranjeros);
  DBedtTotalXCantGradProfTC.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradProfTC);
  DBedtTotalXCantGradProfTP.Text:= IntToStr(aPlanilla1164_01.TotalXCantGradProfTP);
end;



procedure TfrmModificarPlanilla1164_01.ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
{
        //Cálculo del 1er total (Edit) en la seccion de caracterizacion
        if ( (DBedtDoctoresXCantGrad.Field.Text <> '') and (DBedtDoctoresXCantParticip.Field.Text <> '') ) then
          begin
            DBedtDoctoresXTotal.Text:= IntToStr(  StrToInt(DBedtDoctoresXCantGrad.Field.Text) + StrToInt(DBedtDoctoresXCantParticip.Field.Text) );
          end;


        //*** Sección II: Superación Profesional ***

        // * Calculo los 3 totales de diplomado *
  
        if ( (DBedtDiplomadosXCantActivUnivMun.Field.Text <> '') and (DBedtDiplomadosXCantActivADistancia.Field.Text <> '') and (DBedtDiplomadosXCantActivExtranjero.Field.Text <> '')) then
          begin
            DBedtDiplomadosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivUnivMun.Field.Text) + StrToInt(DBedtDiplomadosXCantActivADistancia.Field.Text) + StrToInt(DBedtDiplomadosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipMujeres.Field.Text <> '') and (DBedtDiplomadosXCantParticipExtranjeros.Field.Text <> '') and (DBedtDiplomadosXCantParticipProfTC.Field.Text <> '') and (DBedtDiplomadosXCantParticipProfTP.Field.Text <> '') and (DBedtDiplomadosXCantParticipUnivMun.Field.Text <> '') and (DBedtDiplomadosXCantParticipADistancia.Field.Text <> '') ) then
          begin
            DBedtDiplomadosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipMujeres.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipProfTC.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipProfTP.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtDiplomadosXCantGradMujeres.Field.Text <> '') and (DBedtDiplomadosXCantGradExtranjeros.Field.Text <> '') and (DBedtDiplomadosXCantGradProfTC.Field.Text <> '') and (DBedtDiplomadosXCantGradProfTP.Field.Text <> '') ) then
          begin
            DBedtDiplomadosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradMujeres.Field.Text) + StrToInt(DBedtDiplomadosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtDiplomadosXCantGradProfTC.Field.Text) + StrToInt(DBedtDiplomadosXCantGradProfTP.Field.Text));
          end;
        

        // * Calculo los 3 totales de Entrenamientos *

        if ( (DBedtEntrenamientosXCantActivUnivMun.Field.Text <> '') and (DBedtEntrenamientosXCantActivADistancia.Field.Text <> '') and (DBedtEntrenamientosXCantActivExtranjero.Field.Text <> '')) then
          begin
            DBedtEntrenamientosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtEntrenamientosXCantActivUnivMun.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivADistancia.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtEntrenamientosXCantParticipMujeres.Field.Text <> '') and (DBedtEntrenamientosXCantParticipExtranjeros.Field.Text <> '') and (DBedtEntrenamientosXCantParticipProfTC.Field.Text <> '') and (DBedtEntrenamientosXCantParticipProfTP.Field.Text <> '') and (DBedtEntrenamientosXCantParticipUnivMun.Field.Text <> '') and (DBedtEntrenamientosXCantParticipADistancia.Field.Text <> '') ) then
          begin
            DBedtEntrenamientosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtEntrenamientosXCantParticipMujeres.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTC.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTP.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtEntrenamientosXCantGradMujeres.Field.Text <> '') and (DBedtEntrenamientosXCantGradExtranjeros.Field.Text <> '') and (DBedtEntrenamientosXCantGradProfTC.Field.Text <> '') and (DBedtEntrenamientosXCantGradProfTP.Field.Text <> '') ) then
          begin
            DBedtEntrenamientosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtEntrenamientosXCantGradMujeres.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTC.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTP.Field.Text));
          end;  


        // * Calculo los 3 totales de Cursos *

        if ( (DBedtCursosXCantActivUnivMun.Field.Text <> '') and (DBedtCursosXCantActivADistancia.Field.Text <> '') and (DBedtCursosXCantActivExtranjero.Field.Text <> '')) then
          begin
            DBedtCursosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtCursosXCantActivUnivMun.Field.Text) + StrToInt(DBedtCursosXCantActivADistancia.Field.Text) + StrToInt(DBedtCursosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtCursosXCantParticipMujeres.Field.Text <> '') and (DBedtCursosXCantParticipExtranjeros.Field.Text <> '') and (DBedtCursosXCantParticipProfTC.Field.Text <> '') and (DBedtCursosXCantParticipProfTP.Field.Text <> '') and (DBedtCursosXCantParticipUnivMun.Field.Text <> '') and (DBedtCursosXCantParticipADistancia.Field.Text <> '') ) then
          begin
            DBedtCursosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtCursosXCantParticipMujeres.Field.Text) + StrToInt(DBedtCursosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtCursosXCantParticipProfTC.Field.Text) + StrToInt(DBedtCursosXCantParticipProfTP.Field.Text) + StrToInt(DBedtCursosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtCursosXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtCursosXCantGradMujeres.Field.Text <> '') and (DBedtCursosXCantGradExtranjeros.Field.Text <> '') and (DBedtCursosXCantGradProfTC.Field.Text <> '') and (DBedtCursosXCantGradProfTP.Field.Text <> '') ) then
          begin
            DBedtCursosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtCursosXCantGradMujeres.Field.Text) + StrToInt(DBedtCursosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtCursosXCantGradProfTC.Field.Text) + StrToInt(DBedtCursosXCantGradProfTP.Field.Text));
          end;


        // * Calculo los 16 SubTotales de la Sección II *
  
        if ( (DBedtDiplomadosXCantActivTotal.Field.Text <> '') and (DBedtEntrenamientosXCantActivTotal.Field.Text <> '') and (DBedtCursosXCantActivTotal.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivTotal.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivTotal.Field.Text) + StrToInt(DBedtCursosXCantActivTotal.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantActivUnivMun.Field.Text <> '') and (DBedtEntrenamientosXCantActivUnivMun.Field.Text <> '') and (DBedtCursosXCantActivUnivMun.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivUnivMun.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivUnivMun.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivUnivMun.Field.Text) + StrToInt(DBedtCursosXCantActivUnivMun.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantActivADistancia.Field.Text <> '') and (DBedtEntrenamientosXCantActivADistancia.Field.Text <> '') and (DBedtCursosXCantActivADistancia.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivADistancia.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivADistancia.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivADistancia.Field.Text) + StrToInt(DBedtCursosXCantActivADistancia.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantActivExtranjero.Field.Text <> '') and (DBedtEntrenamientosXCantActivExtranjero.Field.Text <> '') and (DBedtCursosXCantActivExtranjero.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivExtranjero.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivExtranjero.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivExtranjero.Field.Text) + StrToInt(DBedtCursosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipTotal.Field.Text <> '') and (DBedtEntrenamientosXCantParticipTotal.Field.Text <> '') and (DBedtCursosXCantParticipTotal.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipTotal.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipTotal.Field.Text) + StrToInt(DBedtCursosXCantParticipTotal.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipMujeres.Field.Text <> '') and (DBedtEntrenamientosXCantParticipMujeres.Field.Text <> '') and (DBedtCursosXCantParticipMujeres.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipMujeres.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipMujeres.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipMujeres.Field.Text) + StrToInt(DBedtCursosXCantParticipMujeres.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipExtranjeros.Field.Text <> '') and (DBedtEntrenamientosXCantParticipExtranjeros.Field.Text <> '') and (DBedtCursosXCantParticipExtranjeros.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipExtranjeros.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtCursosXCantParticipExtranjeros.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipProfTC.Field.Text <> '') and (DBedtEntrenamientosXCantParticipProfTC.Field.Text <> '') and (DBedtCursosXCantParticipProfTC.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipProfTC.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipProfTC.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTC.Field.Text) + StrToInt(DBedtCursosXCantParticipProfTC.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipProfTP.Field.Text <> '') and (DBedtEntrenamientosXCantParticipProfTP.Field.Text <> '') and (DBedtCursosXCantParticipProfTP.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipProfTP.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipProfTP.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTP.Field.Text) + StrToInt(DBedtCursosXCantParticipProfTP.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipUnivMun.Field.Text <> '') and (DBedtEntrenamientosXCantParticipUnivMun.Field.Text <> '') and (DBedtCursosXCantParticipUnivMun.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipUnivMun.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtCursosXCantParticipUnivMun.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipADistancia.Field.Text <> '') and (DBedtEntrenamientosXCantParticipADistancia.Field.Text <> '') and (DBedtCursosXCantParticipADistancia.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipADistancia.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipADistancia.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipADistancia.Field.Text) + StrToInt(DBedtCursosXCantParticipADistancia.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradTotal.Field.Text <> '') and (DBedtEntrenamientosXCantGradTotal.Field.Text <> '') and (DBedtCursosXCantGradTotal.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradTotal.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradTotal.Field.Text) + StrToInt(DBedtCursosXCantGradTotal.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradMujeres.Field.Text <> '') and (DBedtEntrenamientosXCantGradMujeres.Field.Text <> '') and (DBedtCursosXCantGradMujeres.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradMujeres.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradMujeres.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradMujeres.Field.Text) + StrToInt(DBedtCursosXCantGradMujeres.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradExtranjeros.Field.Text <> '') and (DBedtEntrenamientosXCantGradExtranjeros.Field.Text <> '') and (DBedtCursosXCantGradExtranjeros.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradExtranjeros.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtCursosXCantGradExtranjeros.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradProfTC.Field.Text <> '') and (DBedtEntrenamientosXCantGradProfTC.Field.Text <> '') and (DBedtCursosXCantGradProfTC.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradProfTC.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradProfTC.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTC.Field.Text) + StrToInt(DBedtCursosXCantGradProfTC.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradProfTP.Field.Text <> '') and (DBedtEntrenamientosXCantGradProfTP.Field.Text <> '') and (DBedtCursosXCantGradProfTP.Field.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradProfTP.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradProfTP.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTP.Field.Text) + StrToInt(DBedtCursosXCantGradProfTP.Field.Text));
          end;


    

        //*** Sección III: Postgrado Académico ***

        // * Calculo los 3 totales de Doctorados *
  
        if ( (DBedtDoctoradosXCantActivUnivMun.Field.Text <> '') and (DBedtDoctoradosXCantActivADistancia.Field.Text <> '') and (DBedtDoctoradosXCantActivExtranjero.Field.Text <> '')) then
          begin
            DBedtDoctoradosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivUnivMun.Field.Text) + StrToInt(DBedtDoctoradosXCantActivADistancia.Field.Text) + StrToInt(DBedtDoctoradosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipMujeres.Field.Text <> '') and (DBedtDoctoradosXCantParticipExtranjeros.Field.Text <> '') and (DBedtDoctoradosXCantParticipProfTC.Field.Text <> '') and (DBedtDoctoradosXCantParticipProfTP.Field.Text <> '') and (DBedtDoctoradosXCantParticipUnivMun.Field.Text <> '') and (DBedtDoctoradosXCantParticipADistancia.Field.Text <> '') ) then
          begin
            DBedtDoctoradosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipMujeres.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipProfTC.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipProfTP.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtDoctoradosXCantGradMujeres.Field.Text <> '') and (DBedtDoctoradosXCantGradExtranjeros.Field.Text <> '') and (DBedtDoctoradosXCantGradProfTC.Field.Text <> '') and (DBedtDoctoradosXCantGradProfTP.Field.Text <> '') ) then
          begin
            DBedtDoctoradosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradMujeres.Field.Text) + StrToInt(DBedtDoctoradosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtDoctoradosXCantGradProfTC.Field.Text) + StrToInt(DBedtDoctoradosXCantGradProfTP.Field.Text));
          end;
        

        // * Calculo los 3 totales de Especialidades *

        if ( (DBedtEspecialidadesXCantActivUnivMun.Field.Text <> '') and (DBedtEspecialidadesXCantActivADistancia.Field.Text <> '') and (DBedtEspecialidadesXCantActivExtranjero.Field.Text <> '')) then
          begin
            DBedtEspecialidadesXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtEspecialidadesXCantActivUnivMun.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivADistancia.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtEspecialidadesXCantParticipMujeres.Field.Text <> '') and (DBedtEspecialidadesXCantParticipExtranjeros.Field.Text <> '') and (DBedtEspecialidadesXCantParticipProfTC.Field.Text <> '') and (DBedtEspecialidadesXCantParticipProfTP.Field.Text <> '') and (DBedtEspecialidadesXCantParticipUnivMun.Field.Text <> '') and (DBedtEspecialidadesXCantParticipADistancia.Field.Text <> '') ) then
          begin
            DBedtEspecialidadesXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtEspecialidadesXCantParticipMujeres.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTC.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTP.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipUnivMun.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtEspecialidadesXCantGradMujeres.Field.Text <> '') and (DBedtEspecialidadesXCantGradExtranjeros.Field.Text <> '') and (DBedtEspecialidadesXCantGradProfTC.Field.Text <> '') and (DBedtEspecialidadesXCantGradProfTP.Field.Text <> '') ) then
          begin
            DBedtEspecialidadesXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtEspecialidadesXCantGradMujeres.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradExtranjeros.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTC.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTP.Field.Text));
          end;  


        // * Calculo los 3 totales de Maestrias *

        if ( (DBedtMaestriasXCantActivUnivMun.Field.Text <> '') and (DBedtMaestriasXCantActivADistancia.Field.Text <> '') and (DBedtMaestriasXCantActivExtranjero.Field.Text <> '')) then
          begin
            DBedtMaestriasXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtMaestriasXCantActivUnivMun.Field.Text) + StrToInt(DBedtMaestriasXCantActivADistancia.Field.Text) + StrToInt(DBedtMaestriasXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtMaestriasXCantParticipMujeres.Field.Text <> '') and (DBedtMaestriasXCantParticipExtranjeros.Field.Text <> '') and (DBedtMaestriasXCantParticipProfTC.Field.Text <> '') and (DBedtMaestriasXCantParticipProfTP.Field.Text <> '') and (DBedtMaestriasXCantParticipUnivMun.Field.Text <> '') and (DBedtMaestriasXCantParticipADistancia.Field.Text <> '') ) then
          begin
            DBedtMaestriasXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtMaestriasXCantParticipMujeres.Field.Text) + StrToInt(DBedtMaestriasXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtMaestriasXCantParticipProfTC.Field.Text) + StrToInt(DBedtMaestriasXCantParticipProfTP.Field.Text) + StrToInt(DBedtMaestriasXCantParticipUnivMun.Field.Text) + StrToInt(DBedtMaestriasXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtMaestriasXCantGradMujeres.Field.Text <> '') and (DBedtMaestriasXCantGradExtranjeros.Field.Text <> '') and (DBedtMaestriasXCantGradProfTC.Field.Text <> '') and (DBedtMaestriasXCantGradProfTP.Field.Text <> '') ) then
          begin
            DBedtMaestriasXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtMaestriasXCantGradMujeres.Field.Text) + StrToInt(DBedtMaestriasXCantGradExtranjeros.Field.Text) + StrToInt(DBedtMaestriasXCantGradProfTC.Field.Text) + StrToInt(DBedtMaestriasXCantGradProfTP.Field.Text));
          end;


        // * Calculo los 16 SubTotales de la Sección III *
  
        if ( (DBedtDoctoradosXCantActivTotal.Field.Text <> '') and (DBedtEspecialidadesXCantActivTotal.Field.Text <> '') and (DBedtMaestriasXCantActivTotal.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivTotal.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivTotal.Field.Text) + StrToInt(DBedtMaestriasXCantActivTotal.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantActivUnivMun.Field.Text <> '') and (DBedtEspecialidadesXCantActivUnivMun.Field.Text <> '') and (DBedtMaestriasXCantActivUnivMun.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivUnivMun.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivUnivMun.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivUnivMun.Field.Text) + StrToInt(DBedtMaestriasXCantActivUnivMun.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantActivADistancia.Field.Text <> '') and (DBedtEspecialidadesXCantActivADistancia.Field.Text <> '') and (DBedtMaestriasXCantActivADistancia.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivADistancia.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivADistancia.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivADistancia.Field.Text) + StrToInt(DBedtMaestriasXCantActivADistancia.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantActivExtranjero.Field.Text <> '') and (DBedtEspecialidadesXCantActivExtranjero.Field.Text <> '') and (DBedtMaestriasXCantActivExtranjero.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivExtranjero.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivExtranjero.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivExtranjero.Field.Text) + StrToInt(DBedtMaestriasXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipTotal.Field.Text <> '') and (DBedtEspecialidadesXCantParticipTotal.Field.Text <> '') and (DBedtMaestriasXCantParticipTotal.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipTotal.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipTotal.Field.Text) + StrToInt(DBedtMaestriasXCantParticipTotal.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipMujeres.Field.Text <> '') and (DBedtEspecialidadesXCantParticipMujeres.Field.Text <> '') and (DBedtMaestriasXCantParticipMujeres.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipMujeres.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipMujeres.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipMujeres.Field.Text) + StrToInt(DBedtMaestriasXCantParticipMujeres.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipExtranjeros.Field.Text <> '') and (DBedtEspecialidadesXCantParticipExtranjeros.Field.Text <> '') and (DBedtMaestriasXCantParticipExtranjeros.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipExtranjeros.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtMaestriasXCantParticipExtranjeros.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipProfTC.Field.Text <> '') and (DBedtEspecialidadesXCantParticipProfTC.Field.Text <> '') and (DBedtMaestriasXCantParticipProfTC.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipProfTC.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipProfTC.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTC.Field.Text) + StrToInt(DBedtMaestriasXCantParticipProfTC.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipProfTP.Field.Text <> '') and (DBedtEspecialidadesXCantParticipProfTP.Field.Text <> '') and (DBedtMaestriasXCantParticipProfTP.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipProfTP.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipProfTP.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTP.Field.Text) + StrToInt(DBedtMaestriasXCantParticipProfTP.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipUnivMun.Field.Text <> '') and (DBedtEspecialidadesXCantParticipUnivMun.Field.Text <> '') and (DBedtMaestriasXCantParticipUnivMun.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipUnivMun.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipUnivMun.Field.Text) + StrToInt(DBedtMaestriasXCantParticipUnivMun.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipADistancia.Field.Text <> '') and (DBedtEspecialidadesXCantParticipADistancia.Field.Text <> '') and (DBedtMaestriasXCantParticipADistancia.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipADistancia.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipADistancia.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipADistancia.Field.Text) + StrToInt(DBedtMaestriasXCantParticipADistancia.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradTotal.Field.Text <> '') and (DBedtEspecialidadesXCantGradTotal.Field.Text <> '') and (DBedtMaestriasXCantGradTotal.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradTotal.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradTotal.Field.Text) + StrToInt(DBedtMaestriasXCantGradTotal.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradMujeres.Field.Text <> '') and (DBedtEspecialidadesXCantGradMujeres.Field.Text <> '') and (DBedtMaestriasXCantGradMujeres.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradMujeres.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradMujeres.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradMujeres.Field.Text) + StrToInt(DBedtMaestriasXCantGradMujeres.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradExtranjeros.Field.Text <> '') and (DBedtEspecialidadesXCantGradExtranjeros.Field.Text <> '') and (DBedtMaestriasXCantGradExtranjeros.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradExtranjeros.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradExtranjeros.Field.Text) + StrToInt(DBedtMaestriasXCantGradExtranjeros.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradProfTC.Field.Text <> '') and (DBedtEspecialidadesXCantGradProfTC.Field.Text <> '') and (DBedtMaestriasXCantGradProfTC.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradProfTC.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradProfTC.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTC.Field.Text) + StrToInt(DBedtMaestriasXCantGradProfTC.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradProfTP.Field.Text <> '') and (DBedtEspecialidadesXCantGradProfTP.Field.Text <> '') and (DBedtMaestriasXCantGradProfTP.Field.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradProfTP.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradProfTP.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTP.Field.Text) + StrToInt(DBedtMaestriasXCantGradProfTP.Field.Text));
          end;



    
        // *** Calculo los 16 Totales de la Planilla 1164-01 ***

        if ( (DBedtSubTotal2XCantActivTotal.Field.Text <> '') and (DBedtSubTotal3XCantActivTotal.Field.Text <> '') ) then
          begin
            DBedtTotalXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivTotal.Field.Text) + StrToInt(DBedtSubTotal3XCantActivTotal.Field.Text)  );
          end;

        if ( (DBedtSubTotal2XCantActivUnivMun.Field.Text <> '') and (DBedtSubTotal3XCantActivUnivMun.Field.Text <> '') ) then
          begin
            DBedtTotalXCantActivUnivMun.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivUnivMun.Field.Text) + StrToInt(DBedtSubTotal3XCantActivUnivMun.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantActivADistancia.Field.Text <> '') and (DBedtSubTotal3XCantActivADistancia.Field.Text <> '') ) then
          begin
            DBedtTotalXCantActivADistancia.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivADistancia.Field.Text) + StrToInt(DBedtSubTotal3XCantActivADistancia.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantActivExtranjero.Field.Text <> '') and (DBedtSubTotal3XCantActivExtranjero.Field.Text <> '') ) then
          begin
            DBedtTotalXCantActivExtranjero.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivExtranjero.Field.Text) + StrToInt(DBedtSubTotal3XCantActivExtranjero.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipTotal.Field.Text <> '') and (DBedtSubTotal3XCantParticipTotal.Field.Text <> '') ) then
          begin
            DBedtTotalXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipTotal.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipTotal.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipMujeres.Field.Text <> '') and (DBedtSubTotal3XCantParticipMujeres.Field.Text <> '') ) then
          begin
            DBedtTotalXCantParticipMujeres.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipMujeres.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipMujeres.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipExtranjeros.Field.Text <> '') and (DBedtSubTotal3XCantParticipExtranjeros.Field.Text <> '') ) then
          begin
            DBedtTotalXCantParticipExtranjeros.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipExtranjeros.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipExtranjeros.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipProfTC.Field.Text <> '') and (DBedtSubTotal3XCantParticipProfTC.Field.Text <> '') ) then
          begin
            DBedtTotalXCantParticipProfTC.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipProfTC.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipProfTC.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipProfTP.Field.Text <> '') and (DBedtSubTotal3XCantParticipProfTP.Field.Text <> '') ) then
          begin
            DBedtTotalXCantParticipProfTP.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipProfTP.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipProfTP.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipUnivMun.Field.Text <> '') and (DBedtSubTotal3XCantParticipUnivMun.Field.Text <> '') ) then
          begin
            DBedtTotalXCantParticipUnivMun.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipUnivMun.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipUnivMun.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipADistancia.Field.Text <> '') and (DBedtSubTotal3XCantParticipADistancia.Field.Text <> '') ) then
          begin
            DBedtTotalXCantParticipADistancia.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipADistancia.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipADistancia.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradTotal.Field.Text <> '') and (DBedtSubTotal3XCantGradTotal.Field.Text <> '') ) then
          begin
            DBedtTotalXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradTotal.Field.Text) + StrToInt(DBedtSubTotal3XCantGradTotal.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradMujeres.Field.Text <> '') and (DBedtSubTotal3XCantGradMujeres.Field.Text <> '') ) then
          begin
            DBedtTotalXCantGradMujeres.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradMujeres.Field.Text) + StrToInt(DBedtSubTotal3XCantGradMujeres.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradExtranjeros.Field.Text <> '') and (DBedtSubTotal3XCantGradExtranjeros.Field.Text <> '') ) then
          begin
            DBedtTotalXCantGradExtranjeros.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradExtranjeros.Field.Text) + StrToInt(DBedtSubTotal3XCantGradExtranjeros.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradProfTC.Field.Text <> '') and (DBedtSubTotal3XCantGradProfTC.Field.Text <> '') ) then
          begin
            DBedtTotalXCantGradProfTC.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradProfTC.Field.Text) + StrToInt(DBedtSubTotal3XCantGradProfTC.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradProfTP.Field.Text <> '') and (DBedtSubTotal3XCantGradProfTP.Field.Text <> '') ) then
          begin
            DBedtTotalXCantGradProfTP.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradProfTP.Field.Text) + StrToInt(DBedtSubTotal3XCantGradProfTP.Field.Text) );
          end;
}


          //Version 2

{
        //Cálculo del 1er total (Edit) en la seccion de caracterizacion
        if ( (DBedtDoctoresXCantGrad.Text <> '') and (DBedtDoctoresXCantParticip.Text <> '') ) then
          begin
            DBedtDoctoresXTotal.Text:= IntToStr(  StrToInt(DBedtDoctoresXCantGrad.Field.Text) + StrToInt(DBedtDoctoresXCantParticip.Field.Text) );
          end;


        //*** Sección II: Superación Profesional ***

        // * Calculo los 3 totales de diplomado *
  
        if ( (DBedtDiplomadosXCantActivUnivMun.Text <> '') and (DBedtDiplomadosXCantActivADistancia.Text <> '') and (DBedtDiplomadosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtDiplomadosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivUnivMun.Field.Text) + StrToInt(DBedtDiplomadosXCantActivADistancia.Field.Text) + StrToInt(DBedtDiplomadosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipMujeres.Text <> '') and (DBedtDiplomadosXCantParticipExtranjeros.Text <> '') and (DBedtDiplomadosXCantParticipProfTC.Text <> '') and (DBedtDiplomadosXCantParticipProfTP.Text <> '') and (DBedtDiplomadosXCantParticipUnivMun.Text <> '') and (DBedtDiplomadosXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtDiplomadosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipMujeres.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipProfTC.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipProfTP.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtDiplomadosXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtDiplomadosXCantGradMujeres.Text <> '') and (DBedtDiplomadosXCantGradExtranjeros.Text <> '') and (DBedtDiplomadosXCantGradProfTC.Text <> '') and (DBedtDiplomadosXCantGradProfTP.Text <> '') ) then
          begin
            DBedtDiplomadosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradMujeres.Field.Text) + StrToInt(DBedtDiplomadosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtDiplomadosXCantGradProfTC.Field.Text) + StrToInt(DBedtDiplomadosXCantGradProfTP.Field.Text));
          end;
        

        // * Calculo los 3 totales de Entrenamientos *

        if ( (DBedtEntrenamientosXCantActivUnivMun.Text <> '') and (DBedtEntrenamientosXCantActivADistancia.Text <> '') and (DBedtEntrenamientosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtEntrenamientosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtEntrenamientosXCantActivUnivMun.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivADistancia.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtEntrenamientosXCantParticipMujeres.Text <> '') and (DBedtEntrenamientosXCantParticipExtranjeros.Text <> '') and (DBedtEntrenamientosXCantParticipProfTC.Text <> '') and (DBedtEntrenamientosXCantParticipProfTP.Text <> '') and (DBedtEntrenamientosXCantParticipUnivMun.Text <> '') and (DBedtEntrenamientosXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtEntrenamientosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtEntrenamientosXCantParticipMujeres.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTC.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTP.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtEntrenamientosXCantGradMujeres.Text <> '') and (DBedtEntrenamientosXCantGradExtranjeros.Text <> '') and (DBedtEntrenamientosXCantGradProfTC.Text <> '') and (DBedtEntrenamientosXCantGradProfTP.Text <> '') ) then
          begin
            DBedtEntrenamientosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtEntrenamientosXCantGradMujeres.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTC.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTP.Field.Text));
          end;  


        // * Calculo los 3 totales de Cursos *

        if ( (DBedtCursosXCantActivUnivMun.Text <> '') and (DBedtCursosXCantActivADistancia.Text <> '') and (DBedtCursosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtCursosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtCursosXCantActivUnivMun.Field.Text) + StrToInt(DBedtCursosXCantActivADistancia.Field.Text) + StrToInt(DBedtCursosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtCursosXCantParticipMujeres.Text <> '') and (DBedtCursosXCantParticipExtranjeros.Text <> '') and (DBedtCursosXCantParticipProfTC.Text <> '') and (DBedtCursosXCantParticipProfTP.Text <> '') and (DBedtCursosXCantParticipUnivMun.Text <> '') and (DBedtCursosXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtCursosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtCursosXCantParticipMujeres.Field.Text) + StrToInt(DBedtCursosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtCursosXCantParticipProfTC.Field.Text) + StrToInt(DBedtCursosXCantParticipProfTP.Field.Text) + StrToInt(DBedtCursosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtCursosXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtCursosXCantGradMujeres.Text <> '') and (DBedtCursosXCantGradExtranjeros.Text <> '') and (DBedtCursosXCantGradProfTC.Text <> '') and (DBedtCursosXCantGradProfTP.Text <> '') ) then
          begin
            DBedtCursosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtCursosXCantGradMujeres.Field.Text) + StrToInt(DBedtCursosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtCursosXCantGradProfTC.Field.Text) + StrToInt(DBedtCursosXCantGradProfTP.Field.Text));
          end;


        // * Calculo los 16 SubTotales de la Sección II *
  
        if ( (DBedtDiplomadosXCantActivTotal.Text <> '') and (DBedtEntrenamientosXCantActivTotal.Text <> '') and (DBedtCursosXCantActivTotal.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivTotal.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivTotal.Field.Text) + StrToInt(DBedtCursosXCantActivTotal.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantActivUnivMun.Text <> '') and (DBedtEntrenamientosXCantActivUnivMun.Text <> '') and (DBedtCursosXCantActivUnivMun.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivUnivMun.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivUnivMun.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivUnivMun.Field.Text) + StrToInt(DBedtCursosXCantActivUnivMun.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantActivADistancia.Text <> '') and (DBedtEntrenamientosXCantActivADistancia.Text <> '') and (DBedtCursosXCantActivADistancia.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivADistancia.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivADistancia.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivADistancia.Field.Text) + StrToInt(DBedtCursosXCantActivADistancia.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantActivExtranjero.Text <> '') and (DBedtEntrenamientosXCantActivExtranjero.Text <> '') and (DBedtCursosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivExtranjero.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivExtranjero.Field.Text) + StrToInt(DBedtEntrenamientosXCantActivExtranjero.Field.Text) + StrToInt(DBedtCursosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipTotal.Text <> '') and (DBedtEntrenamientosXCantParticipTotal.Text <> '') and (DBedtCursosXCantParticipTotal.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipTotal.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipTotal.Field.Text) + StrToInt(DBedtCursosXCantParticipTotal.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipMujeres.Text <> '') and (DBedtEntrenamientosXCantParticipMujeres.Text <> '') and (DBedtCursosXCantParticipMujeres.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipMujeres.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipMujeres.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipMujeres.Field.Text) + StrToInt(DBedtCursosXCantParticipMujeres.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipExtranjeros.Text <> '') and (DBedtEntrenamientosXCantParticipExtranjeros.Text <> '') and (DBedtCursosXCantParticipExtranjeros.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipExtranjeros.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtCursosXCantParticipExtranjeros.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipProfTC.Text <> '') and (DBedtEntrenamientosXCantParticipProfTC.Text <> '') and (DBedtCursosXCantParticipProfTC.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipProfTC.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipProfTC.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTC.Field.Text) + StrToInt(DBedtCursosXCantParticipProfTC.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipProfTP.Text <> '') and (DBedtEntrenamientosXCantParticipProfTP.Text <> '') and (DBedtCursosXCantParticipProfTP.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipProfTP.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipProfTP.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTP.Field.Text) + StrToInt(DBedtCursosXCantParticipProfTP.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipUnivMun.Text <> '') and (DBedtEntrenamientosXCantParticipUnivMun.Text <> '') and (DBedtCursosXCantParticipUnivMun.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipUnivMun.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtCursosXCantParticipUnivMun.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipADistancia.Text <> '') and (DBedtEntrenamientosXCantParticipADistancia.Text <> '') and (DBedtCursosXCantParticipADistancia.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipADistancia.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipADistancia.Field.Text) + StrToInt(DBedtEntrenamientosXCantParticipADistancia.Field.Text) + StrToInt(DBedtCursosXCantParticipADistancia.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradTotal.Text <> '') and (DBedtEntrenamientosXCantGradTotal.Text <> '') and (DBedtCursosXCantGradTotal.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradTotal.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradTotal.Field.Text) + StrToInt(DBedtCursosXCantGradTotal.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradMujeres.Text <> '') and (DBedtEntrenamientosXCantGradMujeres.Text <> '') and (DBedtCursosXCantGradMujeres.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradMujeres.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradMujeres.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradMujeres.Field.Text) + StrToInt(DBedtCursosXCantGradMujeres.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradExtranjeros.Text <> '') and (DBedtEntrenamientosXCantGradExtranjeros.Text <> '') and (DBedtCursosXCantGradExtranjeros.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradExtranjeros.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtCursosXCantGradExtranjeros.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradProfTC.Text <> '') and (DBedtEntrenamientosXCantGradProfTC.Text <> '') and (DBedtCursosXCantGradProfTC.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradProfTC.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradProfTC.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTC.Field.Text) + StrToInt(DBedtCursosXCantGradProfTC.Field.Text));
          end;

        if ( (DBedtDiplomadosXCantGradProfTP.Text <> '') and (DBedtEntrenamientosXCantGradProfTP.Text <> '') and (DBedtCursosXCantGradProfTP.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradProfTP.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradProfTP.Field.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTP.Field.Text) + StrToInt(DBedtCursosXCantGradProfTP.Field.Text));
          end;


    

        //*** Sección III: Postgrado Académico ***

        // * Calculo los 3 totales de Doctorados *
  
        if ( (DBedtDoctoradosXCantActivUnivMun.Text <> '') and (DBedtDoctoradosXCantActivADistancia.Text <> '') and (DBedtDoctoradosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtDoctoradosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivUnivMun.Field.Text) + StrToInt(DBedtDoctoradosXCantActivADistancia.Field.Text) + StrToInt(DBedtDoctoradosXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipMujeres.Text <> '') and (DBedtDoctoradosXCantParticipExtranjeros.Text <> '') and (DBedtDoctoradosXCantParticipProfTC.Text <> '') and (DBedtDoctoradosXCantParticipProfTP.Text <> '') and (DBedtDoctoradosXCantParticipUnivMun.Text <> '') and (DBedtDoctoradosXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtDoctoradosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipMujeres.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipProfTC.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipProfTP.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtDoctoradosXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtDoctoradosXCantGradMujeres.Text <> '') and (DBedtDoctoradosXCantGradExtranjeros.Text <> '') and (DBedtDoctoradosXCantGradProfTC.Text <> '') and (DBedtDoctoradosXCantGradProfTP.Text <> '') ) then
          begin
            DBedtDoctoradosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradMujeres.Field.Text) + StrToInt(DBedtDoctoradosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtDoctoradosXCantGradProfTC.Field.Text) + StrToInt(DBedtDoctoradosXCantGradProfTP.Field.Text));
          end;
        

        // * Calculo los 3 totales de Especialidades *

        if ( (DBedtEspecialidadesXCantActivUnivMun.Text <> '') and (DBedtEspecialidadesXCantActivADistancia.Text <> '') and (DBedtEspecialidadesXCantActivExtranjero.Text <> '')) then
          begin
            DBedtEspecialidadesXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtEspecialidadesXCantActivUnivMun.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivADistancia.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtEspecialidadesXCantParticipMujeres.Text <> '') and (DBedtEspecialidadesXCantParticipExtranjeros.Text <> '') and (DBedtEspecialidadesXCantParticipProfTC.Text <> '') and (DBedtEspecialidadesXCantParticipProfTP.Text <> '') and (DBedtEspecialidadesXCantParticipUnivMun.Text <> '') and (DBedtEspecialidadesXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtEspecialidadesXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtEspecialidadesXCantParticipMujeres.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTC.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTP.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipUnivMun.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtEspecialidadesXCantGradMujeres.Text <> '') and (DBedtEspecialidadesXCantGradExtranjeros.Text <> '') and (DBedtEspecialidadesXCantGradProfTC.Text <> '') and (DBedtEspecialidadesXCantGradProfTP.Text <> '') ) then
          begin
            DBedtEspecialidadesXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtEspecialidadesXCantGradMujeres.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradExtranjeros.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTC.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTP.Field.Text));
          end;  


        // * Calculo los 3 totales de Maestrias *

        if ( (DBedtMaestriasXCantActivUnivMun.Text <> '') and (DBedtMaestriasXCantActivADistancia.Text <> '') and (DBedtMaestriasXCantActivExtranjero.Text <> '')) then
          begin
            DBedtMaestriasXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtMaestriasXCantActivUnivMun.Field.Text) + StrToInt(DBedtMaestriasXCantActivADistancia.Field.Text) + StrToInt(DBedtMaestriasXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtMaestriasXCantParticipMujeres.Text <> '') and (DBedtMaestriasXCantParticipExtranjeros.Text <> '') and (DBedtMaestriasXCantParticipProfTC.Text <> '') and (DBedtMaestriasXCantParticipProfTP.Text <> '') and (DBedtMaestriasXCantParticipUnivMun.Text <> '') and (DBedtMaestriasXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtMaestriasXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtMaestriasXCantParticipMujeres.Field.Text) + StrToInt(DBedtMaestriasXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtMaestriasXCantParticipProfTC.Field.Text) + StrToInt(DBedtMaestriasXCantParticipProfTP.Field.Text) + StrToInt(DBedtMaestriasXCantParticipUnivMun.Field.Text) + StrToInt(DBedtMaestriasXCantParticipADistancia.Field.Text)  );
          end;

        if ( (DBedtMaestriasXCantGradMujeres.Text <> '') and (DBedtMaestriasXCantGradExtranjeros.Text <> '') and (DBedtMaestriasXCantGradProfTC.Text <> '') and (DBedtMaestriasXCantGradProfTP.Text <> '') ) then
          begin
            DBedtMaestriasXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtMaestriasXCantGradMujeres.Field.Text) + StrToInt(DBedtMaestriasXCantGradExtranjeros.Field.Text) + StrToInt(DBedtMaestriasXCantGradProfTC.Field.Text) + StrToInt(DBedtMaestriasXCantGradProfTP.Field.Text));
          end;


        // * Calculo los 16 SubTotales de la Sección III *
  
        if ( (DBedtDoctoradosXCantActivTotal.Text <> '') and (DBedtEspecialidadesXCantActivTotal.Text <> '') and (DBedtMaestriasXCantActivTotal.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivTotal.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivTotal.Field.Text) + StrToInt(DBedtMaestriasXCantActivTotal.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantActivUnivMun.Text <> '') and (DBedtEspecialidadesXCantActivUnivMun.Text <> '') and (DBedtMaestriasXCantActivUnivMun.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivUnivMun.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivUnivMun.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivUnivMun.Field.Text) + StrToInt(DBedtMaestriasXCantActivUnivMun.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantActivADistancia.Text <> '') and (DBedtEspecialidadesXCantActivADistancia.Text <> '') and (DBedtMaestriasXCantActivADistancia.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivADistancia.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivADistancia.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivADistancia.Field.Text) + StrToInt(DBedtMaestriasXCantActivADistancia.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantActivExtranjero.Text <> '') and (DBedtEspecialidadesXCantActivExtranjero.Text <> '') and (DBedtMaestriasXCantActivExtranjero.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivExtranjero.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivExtranjero.Field.Text) + StrToInt(DBedtEspecialidadesXCantActivExtranjero.Field.Text) + StrToInt(DBedtMaestriasXCantActivExtranjero.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipTotal.Text <> '') and (DBedtEspecialidadesXCantParticipTotal.Text <> '') and (DBedtMaestriasXCantParticipTotal.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipTotal.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipTotal.Field.Text) + StrToInt(DBedtMaestriasXCantParticipTotal.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipMujeres.Text <> '') and (DBedtEspecialidadesXCantParticipMujeres.Text <> '') and (DBedtMaestriasXCantParticipMujeres.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipMujeres.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipMujeres.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipMujeres.Field.Text) + StrToInt(DBedtMaestriasXCantParticipMujeres.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipExtranjeros.Text <> '') and (DBedtEspecialidadesXCantParticipExtranjeros.Text <> '') and (DBedtMaestriasXCantParticipExtranjeros.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipExtranjeros.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipExtranjeros.Field.Text) + StrToInt(DBedtMaestriasXCantParticipExtranjeros.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipProfTC.Text <> '') and (DBedtEspecialidadesXCantParticipProfTC.Text <> '') and (DBedtMaestriasXCantParticipProfTC.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipProfTC.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipProfTC.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTC.Field.Text) + StrToInt(DBedtMaestriasXCantParticipProfTC.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipProfTP.Text <> '') and (DBedtEspecialidadesXCantParticipProfTP.Text <> '') and (DBedtMaestriasXCantParticipProfTP.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipProfTP.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipProfTP.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTP.Field.Text) + StrToInt(DBedtMaestriasXCantParticipProfTP.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipUnivMun.Text <> '') and (DBedtEspecialidadesXCantParticipUnivMun.Text <> '') and (DBedtMaestriasXCantParticipUnivMun.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipUnivMun.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipUnivMun.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipUnivMun.Field.Text) + StrToInt(DBedtMaestriasXCantParticipUnivMun.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipADistancia.Text <> '') and (DBedtEspecialidadesXCantParticipADistancia.Text <> '') and (DBedtMaestriasXCantParticipADistancia.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipADistancia.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipADistancia.Field.Text) + StrToInt(DBedtEspecialidadesXCantParticipADistancia.Field.Text) + StrToInt(DBedtMaestriasXCantParticipADistancia.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradTotal.Text <> '') and (DBedtEspecialidadesXCantGradTotal.Text <> '') and (DBedtMaestriasXCantGradTotal.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradTotal.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradTotal.Field.Text) + StrToInt(DBedtMaestriasXCantGradTotal.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradMujeres.Text <> '') and (DBedtEspecialidadesXCantGradMujeres.Text <> '') and (DBedtMaestriasXCantGradMujeres.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradMujeres.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradMujeres.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradMujeres.Field.Text) + StrToInt(DBedtMaestriasXCantGradMujeres.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradExtranjeros.Text <> '') and (DBedtEspecialidadesXCantGradExtranjeros.Text <> '') and (DBedtMaestriasXCantGradExtranjeros.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradExtranjeros.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradExtranjeros.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradExtranjeros.Field.Text) + StrToInt(DBedtMaestriasXCantGradExtranjeros.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradProfTC.Text <> '') and (DBedtEspecialidadesXCantGradProfTC.Text <> '') and (DBedtMaestriasXCantGradProfTC.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradProfTC.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradProfTC.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTC.Field.Text) + StrToInt(DBedtMaestriasXCantGradProfTC.Field.Text));
          end;

        if ( (DBedtDoctoradosXCantGradProfTP.Text <> '') and (DBedtEspecialidadesXCantGradProfTP.Text <> '') and (DBedtMaestriasXCantGradProfTP.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradProfTP.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradProfTP.Field.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTP.Field.Text) + StrToInt(DBedtMaestriasXCantGradProfTP.Field.Text));
          end;



    
        // *** Calculo los 16 Totales de la Planilla 1164-01 ***

        if ( (DBedtSubTotal2XCantActivTotal.Text <> '') and (DBedtSubTotal3XCantActivTotal.Text <> '') ) then
          begin
            DBedtTotalXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivTotal.Field.Text) + StrToInt(DBedtSubTotal3XCantActivTotal.Field.Text)  );
          end;

        if ( (DBedtSubTotal2XCantActivUnivMun.Text <> '') and (DBedtSubTotal3XCantActivUnivMun.Text <> '') ) then
          begin
            DBedtTotalXCantActivUnivMun.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivUnivMun.Field.Text) + StrToInt(DBedtSubTotal3XCantActivUnivMun.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantActivADistancia.Text <> '') and (DBedtSubTotal3XCantActivADistancia.Text <> '') ) then
          begin
            DBedtTotalXCantActivADistancia.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivADistancia.Field.Text) + StrToInt(DBedtSubTotal3XCantActivADistancia.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantActivExtranjero.Text <> '') and (DBedtSubTotal3XCantActivExtranjero.Text <> '') ) then
          begin
            DBedtTotalXCantActivExtranjero.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivExtranjero.Field.Text) + StrToInt(DBedtSubTotal3XCantActivExtranjero.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipTotal.Text <> '') and (DBedtSubTotal3XCantParticipTotal.Text <> '') ) then
          begin
            DBedtTotalXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipTotal.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipTotal.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipMujeres.Text <> '') and (DBedtSubTotal3XCantParticipMujeres.Text <> '') ) then
          begin
            DBedtTotalXCantParticipMujeres.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipMujeres.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipMujeres.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipExtranjeros.Text <> '') and (DBedtSubTotal3XCantParticipExtranjeros.Text <> '') ) then
          begin
            DBedtTotalXCantParticipExtranjeros.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipExtranjeros.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipExtranjeros.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipProfTC.Text <> '') and (DBedtSubTotal3XCantParticipProfTC.Text <> '') ) then
          begin
            DBedtTotalXCantParticipProfTC.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipProfTC.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipProfTC.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipProfTP.Text <> '') and (DBedtSubTotal3XCantParticipProfTP.Text <> '') ) then
          begin
            DBedtTotalXCantParticipProfTP.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipProfTP.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipProfTP.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipUnivMun.Text <> '') and (DBedtSubTotal3XCantParticipUnivMun.Text <> '') ) then
          begin
            DBedtTotalXCantParticipUnivMun.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipUnivMun.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipUnivMun.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipADistancia.Text <> '') and (DBedtSubTotal3XCantParticipADistancia.Text <> '') ) then
          begin
            DBedtTotalXCantParticipADistancia.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipADistancia.Field.Text) + StrToInt(DBedtSubTotal3XCantParticipADistancia.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradTotal.Text <> '') and (DBedtSubTotal3XCantGradTotal.Text <> '') ) then
          begin
            DBedtTotalXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradTotal.Field.Text) + StrToInt(DBedtSubTotal3XCantGradTotal.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradMujeres.Text <> '') and (DBedtSubTotal3XCantGradMujeres.Text <> '') ) then
          begin
            DBedtTotalXCantGradMujeres.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradMujeres.Field.Text) + StrToInt(DBedtSubTotal3XCantGradMujeres.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradExtranjeros.Text <> '') and (DBedtSubTotal3XCantGradExtranjeros.Text <> '') ) then
          begin
            DBedtTotalXCantGradExtranjeros.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradExtranjeros.Field.Text) + StrToInt(DBedtSubTotal3XCantGradExtranjeros.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradProfTC.Text <> '') and (DBedtSubTotal3XCantGradProfTC.Text <> '') ) then
          begin
            DBedtTotalXCantGradProfTC.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradProfTC.Field.Text) + StrToInt(DBedtSubTotal3XCantGradProfTC.Field.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradProfTP.Text <> '') and (DBedtSubTotal3XCantGradProfTP.Text <> '') ) then
          begin
            DBedtTotalXCantGradProfTP.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradProfTP.Field.Text) + StrToInt(DBedtSubTotal3XCantGradProfTP.Field.Text) );
          end;
}


        //Cálculo del 1er total (Edit) en la seccion de caracterizacion
        if ( (DBedtDoctoresXCantGrad.Text <> '') and (DBedtDoctoresXCantParticip.Text <> '') ) then
          begin
            DBedtDoctoresXTotal.Text:= IntToStr(  StrToInt(DBedtDoctoresXCantGrad.Text) + StrToInt(DBedtDoctoresXCantParticip.Text) );
          end;


        //*** Sección II: Superación Profesional ***

        // * Calculo los 3 totales de diplomado *
  
        if ( (DBedtDiplomadosXCantActivUnivMun.Text <> '') and (DBedtDiplomadosXCantActivADistancia.Text <> '') and (DBedtDiplomadosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtDiplomadosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivUnivMun.Text) + StrToInt(DBedtDiplomadosXCantActivADistancia.Text) + StrToInt(DBedtDiplomadosXCantActivExtranjero.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipMujeres.Text <> '') and (DBedtDiplomadosXCantParticipExtranjeros.Text <> '') and (DBedtDiplomadosXCantParticipProfTC.Text <> '') and (DBedtDiplomadosXCantParticipProfTP.Text <> '') and (DBedtDiplomadosXCantParticipUnivMun.Text <> '') and (DBedtDiplomadosXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtDiplomadosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipMujeres.Text) + StrToInt(DBedtDiplomadosXCantParticipExtranjeros.Text) + StrToInt(DBedtDiplomadosXCantParticipProfTC.Text) + StrToInt(DBedtDiplomadosXCantParticipProfTP.Text) + StrToInt(DBedtDiplomadosXCantParticipUnivMun.Text) + StrToInt(DBedtDiplomadosXCantParticipADistancia.Text)  );
          end;

        if ( (DBedtDiplomadosXCantGradMujeres.Text <> '') and (DBedtDiplomadosXCantGradExtranjeros.Text <> '') and (DBedtDiplomadosXCantGradProfTC.Text <> '') and (DBedtDiplomadosXCantGradProfTP.Text <> '') ) then
          begin
            DBedtDiplomadosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradMujeres.Text) + StrToInt(DBedtDiplomadosXCantGradExtranjeros.Text) + StrToInt(DBedtDiplomadosXCantGradProfTC.Text) + StrToInt(DBedtDiplomadosXCantGradProfTP.Text));
          end;
        

        // * Calculo los 3 totales de Entrenamientos *

        if ( (DBedtEntrenamientosXCantActivUnivMun.Text <> '') and (DBedtEntrenamientosXCantActivADistancia.Text <> '') and (DBedtEntrenamientosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtEntrenamientosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtEntrenamientosXCantActivUnivMun.Text) + StrToInt(DBedtEntrenamientosXCantActivADistancia.Text) + StrToInt(DBedtEntrenamientosXCantActivExtranjero.Text));
          end;

        if ( (DBedtEntrenamientosXCantParticipMujeres.Text <> '') and (DBedtEntrenamientosXCantParticipExtranjeros.Text <> '') and (DBedtEntrenamientosXCantParticipProfTC.Text <> '') and (DBedtEntrenamientosXCantParticipProfTP.Text <> '') and (DBedtEntrenamientosXCantParticipUnivMun.Text <> '') and (DBedtEntrenamientosXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtEntrenamientosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtEntrenamientosXCantParticipMujeres.Text) + StrToInt(DBedtEntrenamientosXCantParticipExtranjeros.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTC.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTP.Text) + StrToInt(DBedtEntrenamientosXCantParticipUnivMun.Text) + StrToInt(DBedtEntrenamientosXCantParticipADistancia.Text)  );
          end;

        if ( (DBedtEntrenamientosXCantGradMujeres.Text <> '') and (DBedtEntrenamientosXCantGradExtranjeros.Text <> '') and (DBedtEntrenamientosXCantGradProfTC.Text <> '') and (DBedtEntrenamientosXCantGradProfTP.Text <> '') ) then
          begin
            DBedtEntrenamientosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtEntrenamientosXCantGradMujeres.Text) + StrToInt(DBedtEntrenamientosXCantGradExtranjeros.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTC.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTP.Text));
          end;  


        // * Calculo los 3 totales de Cursos *

        if ( (DBedtCursosXCantActivUnivMun.Text <> '') and (DBedtCursosXCantActivADistancia.Text <> '') and (DBedtCursosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtCursosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtCursosXCantActivUnivMun.Text) + StrToInt(DBedtCursosXCantActivADistancia.Text) + StrToInt(DBedtCursosXCantActivExtranjero.Text));
          end;

        if ( (DBedtCursosXCantParticipMujeres.Text <> '') and (DBedtCursosXCantParticipExtranjeros.Text <> '') and (DBedtCursosXCantParticipProfTC.Text <> '') and (DBedtCursosXCantParticipProfTP.Text <> '') and (DBedtCursosXCantParticipUnivMun.Text <> '') and (DBedtCursosXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtCursosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtCursosXCantParticipMujeres.Text) + StrToInt(DBedtCursosXCantParticipExtranjeros.Text) + StrToInt(DBedtCursosXCantParticipProfTC.Text) + StrToInt(DBedtCursosXCantParticipProfTP.Text) + StrToInt(DBedtCursosXCantParticipUnivMun.Text) + StrToInt(DBedtCursosXCantParticipADistancia.Text)  );
          end;

        if ( (DBedtCursosXCantGradMujeres.Text <> '') and (DBedtCursosXCantGradExtranjeros.Text <> '') and (DBedtCursosXCantGradProfTC.Text <> '') and (DBedtCursosXCantGradProfTP.Text <> '') ) then
          begin
            DBedtCursosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtCursosXCantGradMujeres.Text) + StrToInt(DBedtCursosXCantGradExtranjeros.Text) + StrToInt(DBedtCursosXCantGradProfTC.Text) + StrToInt(DBedtCursosXCantGradProfTP.Text));
          end;


        // * Calculo los 16 SubTotales de la Sección II *
  
        if ( (DBedtDiplomadosXCantActivTotal.Text <> '') and (DBedtEntrenamientosXCantActivTotal.Text <> '') and (DBedtCursosXCantActivTotal.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivTotal.Text) + StrToInt(DBedtEntrenamientosXCantActivTotal.Text) + StrToInt(DBedtCursosXCantActivTotal.Text));
          end;

        if ( (DBedtDiplomadosXCantActivUnivMun.Text <> '') and (DBedtEntrenamientosXCantActivUnivMun.Text <> '') and (DBedtCursosXCantActivUnivMun.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivUnivMun.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivUnivMun.Text) + StrToInt(DBedtEntrenamientosXCantActivUnivMun.Text) + StrToInt(DBedtCursosXCantActivUnivMun.Text));
          end;

        if ( (DBedtDiplomadosXCantActivADistancia.Text <> '') and (DBedtEntrenamientosXCantActivADistancia.Text <> '') and (DBedtCursosXCantActivADistancia.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivADistancia.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivADistancia.Text) + StrToInt(DBedtEntrenamientosXCantActivADistancia.Text) + StrToInt(DBedtCursosXCantActivADistancia.Text));
          end;

        if ( (DBedtDiplomadosXCantActivExtranjero.Text <> '') and (DBedtEntrenamientosXCantActivExtranjero.Text <> '') and (DBedtCursosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtSubTotal2XCantActivExtranjero.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantActivExtranjero.Text) + StrToInt(DBedtEntrenamientosXCantActivExtranjero.Text) + StrToInt(DBedtCursosXCantActivExtranjero.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipTotal.Text <> '') and (DBedtEntrenamientosXCantParticipTotal.Text <> '') and (DBedtCursosXCantParticipTotal.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipTotal.Text) + StrToInt(DBedtEntrenamientosXCantParticipTotal.Text) + StrToInt(DBedtCursosXCantParticipTotal.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipMujeres.Text <> '') and (DBedtEntrenamientosXCantParticipMujeres.Text <> '') and (DBedtCursosXCantParticipMujeres.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipMujeres.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipMujeres.Text) + StrToInt(DBedtEntrenamientosXCantParticipMujeres.Text) + StrToInt(DBedtCursosXCantParticipMujeres.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipExtranjeros.Text <> '') and (DBedtEntrenamientosXCantParticipExtranjeros.Text <> '') and (DBedtCursosXCantParticipExtranjeros.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipExtranjeros.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipExtranjeros.Text) + StrToInt(DBedtEntrenamientosXCantParticipExtranjeros.Text) + StrToInt(DBedtCursosXCantParticipExtranjeros.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipProfTC.Text <> '') and (DBedtEntrenamientosXCantParticipProfTC.Text <> '') and (DBedtCursosXCantParticipProfTC.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipProfTC.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipProfTC.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTC.Text) + StrToInt(DBedtCursosXCantParticipProfTC.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipProfTP.Text <> '') and (DBedtEntrenamientosXCantParticipProfTP.Text <> '') and (DBedtCursosXCantParticipProfTP.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipProfTP.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipProfTP.Text) + StrToInt(DBedtEntrenamientosXCantParticipProfTP.Text) + StrToInt(DBedtCursosXCantParticipProfTP.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipUnivMun.Text <> '') and (DBedtEntrenamientosXCantParticipUnivMun.Text <> '') and (DBedtCursosXCantParticipUnivMun.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipUnivMun.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipUnivMun.Text) + StrToInt(DBedtEntrenamientosXCantParticipUnivMun.Text) + StrToInt(DBedtCursosXCantParticipUnivMun.Text));
          end;

        if ( (DBedtDiplomadosXCantParticipADistancia.Text <> '') and (DBedtEntrenamientosXCantParticipADistancia.Text <> '') and (DBedtCursosXCantParticipADistancia.Text <> '')) then
          begin
            DBedtSubTotal2XCantParticipADistancia.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantParticipADistancia.Text) + StrToInt(DBedtEntrenamientosXCantParticipADistancia.Text) + StrToInt(DBedtCursosXCantParticipADistancia.Text));
          end;

        if ( (DBedtDiplomadosXCantGradTotal.Text <> '') and (DBedtEntrenamientosXCantGradTotal.Text <> '') and (DBedtCursosXCantGradTotal.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradTotal.Text) + StrToInt(DBedtEntrenamientosXCantGradTotal.Text) + StrToInt(DBedtCursosXCantGradTotal.Text));
          end;

        if ( (DBedtDiplomadosXCantGradMujeres.Text <> '') and (DBedtEntrenamientosXCantGradMujeres.Text <> '') and (DBedtCursosXCantGradMujeres.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradMujeres.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradMujeres.Text) + StrToInt(DBedtEntrenamientosXCantGradMujeres.Text) + StrToInt(DBedtCursosXCantGradMujeres.Text));
          end;

        if ( (DBedtDiplomadosXCantGradExtranjeros.Text <> '') and (DBedtEntrenamientosXCantGradExtranjeros.Text <> '') and (DBedtCursosXCantGradExtranjeros.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradExtranjeros.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradExtranjeros.Text) + StrToInt(DBedtEntrenamientosXCantGradExtranjeros.Text) + StrToInt(DBedtCursosXCantGradExtranjeros.Text));
          end;

        if ( (DBedtDiplomadosXCantGradProfTC.Text <> '') and (DBedtEntrenamientosXCantGradProfTC.Text <> '') and (DBedtCursosXCantGradProfTC.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradProfTC.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradProfTC.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTC.Text) + StrToInt(DBedtCursosXCantGradProfTC.Text));
          end;

        if ( (DBedtDiplomadosXCantGradProfTP.Text <> '') and (DBedtEntrenamientosXCantGradProfTP.Text <> '') and (DBedtCursosXCantGradProfTP.Text <> '')) then
          begin
            DBedtSubTotal2XCantGradProfTP.Text:= IntToStr(  StrToInt(DBedtDiplomadosXCantGradProfTP.Text) + StrToInt(DBedtEntrenamientosXCantGradProfTP.Text) + StrToInt(DBedtCursosXCantGradProfTP.Text));
          end;


    

        //*** Sección III: Postgrado Académico ***

        // * Calculo los 3 totales de Doctorados *
  
        if ( (DBedtDoctoradosXCantActivUnivMun.Text <> '') and (DBedtDoctoradosXCantActivADistancia.Text <> '') and (DBedtDoctoradosXCantActivExtranjero.Text <> '')) then
          begin
            DBedtDoctoradosXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivUnivMun.Text) + StrToInt(DBedtDoctoradosXCantActivADistancia.Text) + StrToInt(DBedtDoctoradosXCantActivExtranjero.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipMujeres.Text <> '') and (DBedtDoctoradosXCantParticipExtranjeros.Text <> '') and (DBedtDoctoradosXCantParticipProfTC.Text <> '') and (DBedtDoctoradosXCantParticipProfTP.Text <> '') and (DBedtDoctoradosXCantParticipUnivMun.Text <> '') and (DBedtDoctoradosXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtDoctoradosXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipMujeres.Text) + StrToInt(DBedtDoctoradosXCantParticipExtranjeros.Text) + StrToInt(DBedtDoctoradosXCantParticipProfTC.Text) + StrToInt(DBedtDoctoradosXCantParticipProfTP.Text) + StrToInt(DBedtDoctoradosXCantParticipUnivMun.Text) + StrToInt(DBedtDoctoradosXCantParticipADistancia.Text)  );
          end;

        if ( (DBedtDoctoradosXCantGradMujeres.Text <> '') and (DBedtDoctoradosXCantGradExtranjeros.Text <> '') and (DBedtDoctoradosXCantGradProfTC.Text <> '') and (DBedtDoctoradosXCantGradProfTP.Text <> '') ) then
          begin
            DBedtDoctoradosXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradMujeres.Text) + StrToInt(DBedtDoctoradosXCantGradExtranjeros.Text) + StrToInt(DBedtDoctoradosXCantGradProfTC.Text) + StrToInt(DBedtDoctoradosXCantGradProfTP.Text));
          end;
        

        // * Calculo los 3 totales de Especialidades *

        if ( (DBedtEspecialidadesXCantActivUnivMun.Text <> '') and (DBedtEspecialidadesXCantActivADistancia.Text <> '') and (DBedtEspecialidadesXCantActivExtranjero.Text <> '')) then
          begin
            DBedtEspecialidadesXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtEspecialidadesXCantActivUnivMun.Text) + StrToInt(DBedtEspecialidadesXCantActivADistancia.Text) + StrToInt(DBedtEspecialidadesXCantActivExtranjero.Text));
          end;

        if ( (DBedtEspecialidadesXCantParticipMujeres.Text <> '') and (DBedtEspecialidadesXCantParticipExtranjeros.Text <> '') and (DBedtEspecialidadesXCantParticipProfTC.Text <> '') and (DBedtEspecialidadesXCantParticipProfTP.Text <> '') and (DBedtEspecialidadesXCantParticipUnivMun.Text <> '') and (DBedtEspecialidadesXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtEspecialidadesXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtEspecialidadesXCantParticipMujeres.Text) + StrToInt(DBedtEspecialidadesXCantParticipExtranjeros.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTC.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTP.Text) + StrToInt(DBedtEspecialidadesXCantParticipUnivMun.Text) + StrToInt(DBedtEspecialidadesXCantParticipADistancia.Text)  );
          end;

        if ( (DBedtEspecialidadesXCantGradMujeres.Text <> '') and (DBedtEspecialidadesXCantGradExtranjeros.Text <> '') and (DBedtEspecialidadesXCantGradProfTC.Text <> '') and (DBedtEspecialidadesXCantGradProfTP.Text <> '') ) then
          begin
            DBedtEspecialidadesXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtEspecialidadesXCantGradMujeres.Text) + StrToInt(DBedtEspecialidadesXCantGradExtranjeros.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTC.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTP.Text));
          end;  


        // * Calculo los 3 totales de Maestrias *

        if ( (DBedtMaestriasXCantActivUnivMun.Text <> '') and (DBedtMaestriasXCantActivADistancia.Text <> '') and (DBedtMaestriasXCantActivExtranjero.Text <> '')) then
          begin
            DBedtMaestriasXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtMaestriasXCantActivUnivMun.Text) + StrToInt(DBedtMaestriasXCantActivADistancia.Text) + StrToInt(DBedtMaestriasXCantActivExtranjero.Text));
          end;

        if ( (DBedtMaestriasXCantParticipMujeres.Text <> '') and (DBedtMaestriasXCantParticipExtranjeros.Text <> '') and (DBedtMaestriasXCantParticipProfTC.Text <> '') and (DBedtMaestriasXCantParticipProfTP.Text <> '') and (DBedtMaestriasXCantParticipUnivMun.Text <> '') and (DBedtMaestriasXCantParticipADistancia.Text <> '') ) then
          begin
            DBedtMaestriasXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtMaestriasXCantParticipMujeres.Text) + StrToInt(DBedtMaestriasXCantParticipExtranjeros.Text) + StrToInt(DBedtMaestriasXCantParticipProfTC.Text) + StrToInt(DBedtMaestriasXCantParticipProfTP.Text) + StrToInt(DBedtMaestriasXCantParticipUnivMun.Text) + StrToInt(DBedtMaestriasXCantParticipADistancia.Text)  );
          end;

        if ( (DBedtMaestriasXCantGradMujeres.Text <> '') and (DBedtMaestriasXCantGradExtranjeros.Text <> '') and (DBedtMaestriasXCantGradProfTC.Text <> '') and (DBedtMaestriasXCantGradProfTP.Text <> '') ) then
          begin
            DBedtMaestriasXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtMaestriasXCantGradMujeres.Text) + StrToInt(DBedtMaestriasXCantGradExtranjeros.Text) + StrToInt(DBedtMaestriasXCantGradProfTC.Text) + StrToInt(DBedtMaestriasXCantGradProfTP.Text));
          end;


        // * Calculo los 16 SubTotales de la Sección III *
  
        if ( (DBedtDoctoradosXCantActivTotal.Text <> '') and (DBedtEspecialidadesXCantActivTotal.Text <> '') and (DBedtMaestriasXCantActivTotal.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivTotal.Text) + StrToInt(DBedtEspecialidadesXCantActivTotal.Text) + StrToInt(DBedtMaestriasXCantActivTotal.Text));
          end;

        if ( (DBedtDoctoradosXCantActivUnivMun.Text <> '') and (DBedtEspecialidadesXCantActivUnivMun.Text <> '') and (DBedtMaestriasXCantActivUnivMun.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivUnivMun.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivUnivMun.Text) + StrToInt(DBedtEspecialidadesXCantActivUnivMun.Text) + StrToInt(DBedtMaestriasXCantActivUnivMun.Text));
          end;

        if ( (DBedtDoctoradosXCantActivADistancia.Text <> '') and (DBedtEspecialidadesXCantActivADistancia.Text <> '') and (DBedtMaestriasXCantActivADistancia.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivADistancia.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivADistancia.Text) + StrToInt(DBedtEspecialidadesXCantActivADistancia.Text) + StrToInt(DBedtMaestriasXCantActivADistancia.Text));
          end;

        if ( (DBedtDoctoradosXCantActivExtranjero.Text <> '') and (DBedtEspecialidadesXCantActivExtranjero.Text <> '') and (DBedtMaestriasXCantActivExtranjero.Text <> '')) then
          begin
            DBedtSubTotal3XCantActivExtranjero.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantActivExtranjero.Text) + StrToInt(DBedtEspecialidadesXCantActivExtranjero.Text) + StrToInt(DBedtMaestriasXCantActivExtranjero.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipTotal.Text <> '') and (DBedtEspecialidadesXCantParticipTotal.Text <> '') and (DBedtMaestriasXCantParticipTotal.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipTotal.Text) + StrToInt(DBedtEspecialidadesXCantParticipTotal.Text) + StrToInt(DBedtMaestriasXCantParticipTotal.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipMujeres.Text <> '') and (DBedtEspecialidadesXCantParticipMujeres.Text <> '') and (DBedtMaestriasXCantParticipMujeres.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipMujeres.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipMujeres.Text) + StrToInt(DBedtEspecialidadesXCantParticipMujeres.Text) + StrToInt(DBedtMaestriasXCantParticipMujeres.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipExtranjeros.Text <> '') and (DBedtEspecialidadesXCantParticipExtranjeros.Text <> '') and (DBedtMaestriasXCantParticipExtranjeros.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipExtranjeros.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipExtranjeros.Text) + StrToInt(DBedtEspecialidadesXCantParticipExtranjeros.Text) + StrToInt(DBedtMaestriasXCantParticipExtranjeros.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipProfTC.Text <> '') and (DBedtEspecialidadesXCantParticipProfTC.Text <> '') and (DBedtMaestriasXCantParticipProfTC.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipProfTC.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipProfTC.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTC.Text) + StrToInt(DBedtMaestriasXCantParticipProfTC.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipProfTP.Text <> '') and (DBedtEspecialidadesXCantParticipProfTP.Text <> '') and (DBedtMaestriasXCantParticipProfTP.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipProfTP.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipProfTP.Text) + StrToInt(DBedtEspecialidadesXCantParticipProfTP.Text) + StrToInt(DBedtMaestriasXCantParticipProfTP.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipUnivMun.Text <> '') and (DBedtEspecialidadesXCantParticipUnivMun.Text <> '') and (DBedtMaestriasXCantParticipUnivMun.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipUnivMun.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipUnivMun.Text) + StrToInt(DBedtEspecialidadesXCantParticipUnivMun.Text) + StrToInt(DBedtMaestriasXCantParticipUnivMun.Text));
          end;

        if ( (DBedtDoctoradosXCantParticipADistancia.Text <> '') and (DBedtEspecialidadesXCantParticipADistancia.Text <> '') and (DBedtMaestriasXCantParticipADistancia.Text <> '')) then
          begin
            DBedtSubTotal3XCantParticipADistancia.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantParticipADistancia.Text) + StrToInt(DBedtEspecialidadesXCantParticipADistancia.Text) + StrToInt(DBedtMaestriasXCantParticipADistancia.Text));
          end;

        if ( (DBedtDoctoradosXCantGradTotal.Text <> '') and (DBedtEspecialidadesXCantGradTotal.Text <> '') and (DBedtMaestriasXCantGradTotal.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradTotal.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradTotal.Text) + StrToInt(DBedtEspecialidadesXCantGradTotal.Text) + StrToInt(DBedtMaestriasXCantGradTotal.Text));
          end;

        if ( (DBedtDoctoradosXCantGradMujeres.Text <> '') and (DBedtEspecialidadesXCantGradMujeres.Text <> '') and (DBedtMaestriasXCantGradMujeres.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradMujeres.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradMujeres.Text) + StrToInt(DBedtEspecialidadesXCantGradMujeres.Text) + StrToInt(DBedtMaestriasXCantGradMujeres.Text));
          end;

        if ( (DBedtDoctoradosXCantGradExtranjeros.Text <> '') and (DBedtEspecialidadesXCantGradExtranjeros.Text <> '') and (DBedtMaestriasXCantGradExtranjeros.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradExtranjeros.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradExtranjeros.Text) + StrToInt(DBedtEspecialidadesXCantGradExtranjeros.Text) + StrToInt(DBedtMaestriasXCantGradExtranjeros.Text));
          end;

        if ( (DBedtDoctoradosXCantGradProfTC.Text <> '') and (DBedtEspecialidadesXCantGradProfTC.Text <> '') and (DBedtMaestriasXCantGradProfTC.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradProfTC.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradProfTC.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTC.Text) + StrToInt(DBedtMaestriasXCantGradProfTC.Text));
          end;

        if ( (DBedtDoctoradosXCantGradProfTP.Text <> '') and (DBedtEspecialidadesXCantGradProfTP.Text <> '') and (DBedtMaestriasXCantGradProfTP.Text <> '')) then
          begin
            DBedtSubTotal3XCantGradProfTP.Text:= IntToStr(  StrToInt(DBedtDoctoradosXCantGradProfTP.Text) + StrToInt(DBedtEspecialidadesXCantGradProfTP.Text) + StrToInt(DBedtMaestriasXCantGradProfTP.Text));
          end;



    
        // *** Calculo los 16 Totales de la Planilla 1164-01 ***

        if ( (DBedtSubTotal2XCantActivTotal.Text <> '') and (DBedtSubTotal3XCantActivTotal.Text <> '') ) then
          begin
            DBedtTotalXCantActivTotal.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivTotal.Text) + StrToInt(DBedtSubTotal3XCantActivTotal.Text)  );
          end;

        if ( (DBedtSubTotal2XCantActivUnivMun.Text <> '') and (DBedtSubTotal3XCantActivUnivMun.Text <> '') ) then
          begin
            DBedtTotalXCantActivUnivMun.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivUnivMun.Text) + StrToInt(DBedtSubTotal3XCantActivUnivMun.Text) );
          end;

        if ( (DBedtSubTotal2XCantActivADistancia.Text <> '') and (DBedtSubTotal3XCantActivADistancia.Text <> '') ) then
          begin
            DBedtTotalXCantActivADistancia.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivADistancia.Text) + StrToInt(DBedtSubTotal3XCantActivADistancia.Text) );
          end;

        if ( (DBedtSubTotal2XCantActivExtranjero.Text <> '') and (DBedtSubTotal3XCantActivExtranjero.Text <> '') ) then
          begin
            DBedtTotalXCantActivExtranjero.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantActivExtranjero.Text) + StrToInt(DBedtSubTotal3XCantActivExtranjero.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipTotal.Text <> '') and (DBedtSubTotal3XCantParticipTotal.Text <> '') ) then
          begin
            DBedtTotalXCantParticipTotal.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipTotal.Text) + StrToInt(DBedtSubTotal3XCantParticipTotal.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipMujeres.Text <> '') and (DBedtSubTotal3XCantParticipMujeres.Text <> '') ) then
          begin
            DBedtTotalXCantParticipMujeres.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipMujeres.Text) + StrToInt(DBedtSubTotal3XCantParticipMujeres.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipExtranjeros.Text <> '') and (DBedtSubTotal3XCantParticipExtranjeros.Text <> '') ) then
          begin
            DBedtTotalXCantParticipExtranjeros.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipExtranjeros.Text) + StrToInt(DBedtSubTotal3XCantParticipExtranjeros.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipProfTC.Text <> '') and (DBedtSubTotal3XCantParticipProfTC.Text <> '') ) then
          begin
            DBedtTotalXCantParticipProfTC.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipProfTC.Text) + StrToInt(DBedtSubTotal3XCantParticipProfTC.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipProfTP.Text <> '') and (DBedtSubTotal3XCantParticipProfTP.Text <> '') ) then
          begin
            DBedtTotalXCantParticipProfTP.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipProfTP.Text) + StrToInt(DBedtSubTotal3XCantParticipProfTP.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipUnivMun.Text <> '') and (DBedtSubTotal3XCantParticipUnivMun.Text <> '') ) then
          begin
            DBedtTotalXCantParticipUnivMun.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipUnivMun.Text) + StrToInt(DBedtSubTotal3XCantParticipUnivMun.Text) );
          end;

        if ( (DBedtSubTotal2XCantParticipADistancia.Text <> '') and (DBedtSubTotal3XCantParticipADistancia.Text <> '') ) then
          begin
            DBedtTotalXCantParticipADistancia.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantParticipADistancia.Text) + StrToInt(DBedtSubTotal3XCantParticipADistancia.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradTotal.Text <> '') and (DBedtSubTotal3XCantGradTotal.Text <> '') ) then
          begin
            DBedtTotalXCantGradTotal.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradTotal.Text) + StrToInt(DBedtSubTotal3XCantGradTotal.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradMujeres.Text <> '') and (DBedtSubTotal3XCantGradMujeres.Text <> '') ) then
          begin
            DBedtTotalXCantGradMujeres.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradMujeres.Text) + StrToInt(DBedtSubTotal3XCantGradMujeres.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradExtranjeros.Text <> '') and (DBedtSubTotal3XCantGradExtranjeros.Text <> '') ) then
          begin
            DBedtTotalXCantGradExtranjeros.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradExtranjeros.Text) + StrToInt(DBedtSubTotal3XCantGradExtranjeros.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradProfTC.Text <> '') and (DBedtSubTotal3XCantGradProfTC.Text <> '') ) then
          begin
            DBedtTotalXCantGradProfTC.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradProfTC.Text) + StrToInt(DBedtSubTotal3XCantGradProfTC.Text) );
          end;

        if ( (DBedtSubTotal2XCantGradProfTP.Text <> '') and (DBedtSubTotal3XCantGradProfTP.Text <> '') ) then
          begin
            DBedtTotalXCantGradProfTP.Text:= IntToStr(  StrToInt(DBedtSubTotal2XCantGradProfTP.Text) + StrToInt(DBedtSubTotal3XCantGradProfTP.Text) );
          end;


      end;
end;



procedure TfrmModificarPlanilla1164_01.ExtraerFicheroP01(aPath: AnsiString);
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



function TfrmModificarPlanilla1164_01.QuitaEn(Cadena, Esto: String): String;
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



end.
