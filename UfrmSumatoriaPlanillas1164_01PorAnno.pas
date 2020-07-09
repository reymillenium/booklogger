unit UfrmSumatoriaPlanillas1164_01PorAnno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils,

  UPlanilla1164_01, UGestionDocente, LbButton,

  //DataModules
  UDataModuleInformes,

  //Reportes usando QuickReport
  UfrmQRReporteSumatoriaPlanillas1164_01PorAnno,
  UfrmPreviewReporteSumatoriaPlanillas1164_01PorAnno,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, AdvGroupBox, AdvOfficePager, AdvOfficePagerStylers, DBCtrls,
  ComCtrls, AdvOfficeComboBox, Mask, ExportPack;

  
type
  TfrmSumatoriaPlanillas1164_01PorAnno = class(TForm)
    btnCerrar: TLbButton;
    dtpAnno: TDateTimePicker;
    lblAnno: TLabel;
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
    AdvGroupBox2: TAdvGroupBox;
    btnExportarHaciaPDFPlanilla1164_01: TLbButton;
    btnPrevisualizarPlanilla1164_01: TLbButton;
    btnImprimirPlanilla1164_01: TLbButton;
    DBtxtCantidadDePlanillas: TDBText;
    DBtxtCantidadDeProvincias: TDBText;
    lblConfeccion: TLabel;
    EXQR: TExportQR;
    procedure btnCerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
    procedure dtpAnnoChange(Sender: TObject);
    procedure btnPrevisualizarPlanilla1164_01Click(Sender: TObject);
    procedure btnExportarHaciaPDFPlanilla1164_01Click(Sender: TObject);
    procedure btnImprimirPlanilla1164_01Click(Sender: TObject);

  private

    procedure PrevisualizarReporteSumatoriaPlanillas1164_01PorAnno;
    procedure ExportarHaciaPDFReporteSumatoriaPlanillas1164_01PorAnno;
    procedure ImprimirReporteSumatoriaPlanillas1164_01PorAnno;

    { Private declarations }
  public
    { Public declarations }
    FAnno: Integer;
    
  end;

var
  frmSumatoriaPlanillas1164_01PorAnno: TfrmSumatoriaPlanillas1164_01PorAnno;

implementation
var
    BookLogger: TGestionDocente;
    
{$R *.dfm}

procedure TfrmSumatoriaPlanillas1164_01PorAnno.btnCerrarClick(Sender: TObject);
begin  
  //Cierro la forma
  frmSumatoriaPlanillas1164_01PorAnno.Close;
end;



procedure TfrmSumatoriaPlanillas1164_01PorAnno.FormShow(Sender: TObject);
var
  CantidadPlanillas, CantidadProvincias: Integer;
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmSumatoriaPlanillas1164_01PorAnno.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);

  //Muestro todos los datos de la Sumatoria de las Planillas 1164_01
  BookLogger.MostrarSumatoriaPlanillas1164_01PorAnno(FAnno);

  //Determino la cantidasd de planillas procesadas
  CantidadPlanillas:= StrToInt(DBtxtCantidadDePlanillas.Field.Text);
  CantidadProvincias:= StrToInt(DBtxtCantidadDeProvincias.Field.Text);

  //Vario el caption de enunciado  
  lblConfeccion.Caption:= 'Confeccionado en base a  ' + IntToStr(CantidadPlanillas) + ' planillas, de ' + IntToStr(CantidadProvincias) + ' provincias';

  //Reordeno el componentes no directo (Año - DateTimePicker)
  dtpAnno.Date:= StrToDate('21/01/' + IntToStr(FAnno));
end;



procedure TfrmSumatoriaPlanillas1164_01PorAnno.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmSumatoriaPlanillas1164_01PorAnno.dtpAnnoChange(Sender: TObject);
var
  CantidadPlanillas, CantidadProvincias: Integer;
  anno: Integer;
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

  //Cambio el año de la variable global
  FAnno:= anno;

  //Muestro todos los datos de la Sumatoria de las Planillas 1164_01
  BookLogger.MostrarSumatoriaPlanillas1164_01PorAnno(FAnno);

  //Determino la cantidasd de planillas procesadas
  CantidadPlanillas:= StrToInt(DBtxtCantidadDePlanillas.Field.Text);
  CantidadProvincias:= StrToInt(DBtxtCantidadDeProvincias.Field.Text);

  //Vario el caption de enunciado
  lblConfeccion.Caption:= 'Confeccionado en base a  ' + IntToStr(CantidadPlanillas) + ' planillas, de ' + IntToStr(CantidadProvincias) + ' provincias';
end;



procedure TfrmSumatoriaPlanillas1164_01PorAnno.ExportarHaciaPDFReporteSumatoriaPlanillas1164_01PorAnno;
var
  CantidadPlanillas, CantidadProvincias: Integer;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmSumatoriaPlanillas1164_01PorAnno.Caption:= 'BookLogger. Exportando el Reporte del Resumen Anual de Planillas 1164-01 a PDF';
              
        //Determino la cantidasd de planillas procesadas
        CantidadPlanillas:= StrToInt(DBtxtCantidadDePlanillas.Field.Text);
        CantidadProvincias:= StrToInt(DBtxtCantidadDeProvincias.Field.Text);
        
        //*** Usando QuickReport ***
        //Conformo los captions del QuickReport
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRlblReferente.Caption:= 'Resumen Anual de Planillas 1164-01. Año: ' + IntToStr(FAnno);
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRlblConfeccion.Caption:= 'Confeccionado en base a  ' + IntToStr(CantidadPlanillas) + ' planillas, de ' + IntToStr(CantidadProvincias) + ' provincias';
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRlblFechaEmitido.Caption:= 'Emitida la presente copia el: ' + BookLogger.ObtenerFechaDelSistema;

        //Muestro todos los datos de la Sumatoria de las Planillas 1164_01
        BookLogger.MostrarSumatoriaPlanillas1164_01PorAnno(FAnno);

        //Envio datos adicionales para el Preview
        //frmPreviewReportePlanilla1164_01.IdiomaImperante:= BookLogger.IdiomaImperante;
        frmPreviewReporteSumatoriaPlanillas1164_01PorAnno.FechaDelSistema:= BookLogger.ObtenerFechaDelSistema;

        //Le envio el reporte hacia el ExportQR
        //QuickReportHabitacionesExistentes.Prepare;
        EXQR.Report := QuickReportSumatoriaPlanillas1164_01PorAnno;

        //Mando a que el ExportQR exporte el reporte ya almacenado
        EXQR.ExportQR;

        QuickReportSumatoriaPlanillas1164_01PorAnno.QRPrinter.Free;
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRPrinter := nil;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmSumatoriaPlanillas1164_01PorAnno.Caption:= 'BookLogger - Sistema de Control Docente Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmSumatoriaPlanillas1164_01PorAnno.ImprimirReporteSumatoriaPlanillas1164_01PorAnno;
var
  CantidadPlanillas, CantidadProvincias: Integer;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Determino la cantidasd de planillas procesadas
        CantidadPlanillas:= StrToInt(DBtxtCantidadDePlanillas.Field.Text);
        CantidadProvincias:= StrToInt(DBtxtCantidadDeProvincias.Field.Text);
        
        //*** Usando QuickReport ***
        //Conformo los captions del QuickReport
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRlblReferente.Caption:= 'Resumen Anual de Planillas 1164-01. Año: ' + IntToStr(FAnno);
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRlblConfeccion.Caption:= 'Confeccionado en base a  ' + IntToStr(CantidadPlanillas) + ' planillas, de ' + IntToStr(CantidadProvincias) + ' provincias';
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRlblFechaEmitido.Caption:= 'Emitida la presente copia el: ' + BookLogger.ObtenerFechaDelSistema;

        //Muestro todos los datos de la Sumatoria de las Planillas 1164_01
        BookLogger.MostrarSumatoriaPlanillas1164_01PorAnno(FAnno);

        //Envio datos adicionales para el Preview
        //frmPreviewReportePlanilla1164_01.IdiomaImperante:= BookLogger.IdiomaImperante;
        frmPreviewReporteSumatoriaPlanillas1164_01PorAnno.FechaDelSistema:= BookLogger.ObtenerFechaDelSistema;

        //Imprimo el reporte
        QuickReportSumatoriaPlanillas1164_01PorAnno.Print;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmSumatoriaPlanillas1164_01PorAnno.PrevisualizarReporteSumatoriaPlanillas1164_01PorAnno;
var
  CantidadPlanillas, CantidadProvincias: Integer;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Determino la cantidasd de planillas procesadas
        CantidadPlanillas:= StrToInt(DBtxtCantidadDePlanillas.Field.Text);
        CantidadProvincias:= StrToInt(DBtxtCantidadDeProvincias.Field.Text);
        
        //*** Usando QuickReport ***
        //Conformo los captions del QuickReport
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRlblReferente.Caption:= 'Resumen Anual de Planillas 1164-01. Año: ' + IntToStr(FAnno);
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRlblConfeccion.Caption:= 'Confeccionado en base a  ' + IntToStr(CantidadPlanillas) + ' planillas, de ' + IntToStr(CantidadProvincias) + ' provincias';
        QuickReportSumatoriaPlanillas1164_01PorAnno.QRlblFechaEmitido.Caption:= 'Emitida la presente copia el: ' + BookLogger.ObtenerFechaDelSistema;

        //Muestro todos los datos de la Sumatoria de las Planillas 1164_01
        BookLogger.MostrarSumatoriaPlanillas1164_01PorAnno(FAnno);

        //Envio datos adicionales para el Preview
        //frmPreviewReportePlanilla1164_01.IdiomaImperante:= BookLogger.IdiomaImperante;
        frmPreviewReporteSumatoriaPlanillas1164_01PorAnno.FechaDelSistema:= BookLogger.ObtenerFechaDelSistema;

        //Muestro el reporte (Quick Report, vista previa)
        QuickReportSumatoriaPlanillas1164_01PorAnno.PreviewModal;

        QuickReportSumatoriaPlanillas1164_01PorAnno.QRImageLogo.Refresh;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmSumatoriaPlanillas1164_01PorAnno.btnPrevisualizarPlanilla1164_01Click(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Sumatoria de Planillas 1164-01
        PrevisualizarReporteSumatoriaPlanillas1164_01PorAnno;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmSumatoriaPlanillas1164_01PorAnno.btnExportarHaciaPDFPlanilla1164_01Click(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto a PDF el Reporte de Sumatoria de Planillas 1164-01
        ExportarHaciaPDFReporteSumatoriaPlanillas1164_01PorAnno;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmSumatoriaPlanillas1164_01PorAnno.btnImprimirPlanilla1164_01Click(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (BookLogger.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Sumatoria de Planillas 1164-01
        ImprimirReporteSumatoriaPlanillas1164_01PorAnno;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



end.

