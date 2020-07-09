program BookLogger;

uses
  uiapp in 'uiapp.pas',
  Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UfrmAcercaDe in 'UfrmAcercaDe.pas' {frmAcercaDe},
  UfrmPresentacion in 'UfrmPresentacion.pas' {frmPresentacion},
  UPantalla in 'UPantalla.pas',
  UFicheroIdioma in 'UFicheroIdioma.pas',
  UFicheroAlineacionVisores in 'UFicheroAlineacionVisores.pas',
  UFicheroTipoVisores in 'UFicheroTipoVisores.pas',
  UFicheroZoomImagen in 'UFicheroZoomImagen.pas',
  UFicheroComentarios in 'UFicheroComentarios.pas',
  UfrmValidacionPuestoDeTrabajo in 'UfrmValidacionPuestoDeTrabajo.pas' {frmValidacionPuestoDeTrabajo},
  UCapaSeguridad in 'UCapaSeguridad.pas',
  UPuestoDeTrabajo in 'UPuestoDeTrabajo.pas',
  UDataModuleConexionGeneral in 'UDataModuleConexionGeneral.pas' {DataModuleConexionGeneral: TDataModule},
  UDataModuleControlDelSistema in 'UDataModuleControlDelSistema.pas' {DataModuleControlDelSistema: TDataModule},
  UModuloControlDelSistema in 'UModuloControlDelSistema.pas',
  UGestionDocente in 'UGestionDocente.pas',
  UfrmNotificacionDeAlguienLoggeado in 'UfrmNotificacionDeAlguienLoggeado.pas' {frmNotificacionDeAlguienLoggeado},
  UfrmNuevoPuestoDeTrabajo in 'UfrmNuevoPuestoDeTrabajo.pas' {frmNuevoPuestoDeTrabajo},
  UfrmModificarPuestoDeTrabajo in 'UfrmModificarPuestoDeTrabajo.pas' {frmModificarPuestoDeTrabajo},
  UfrmDetallesDeTrazaDelSistema in 'UfrmDetallesDeTrazaDelSistema.pas' {frmDetallesDeTrazasDelSistema},
  UfrmQRReporteTrazasDelSistema in 'UfrmQRReporteTrazasDelSistema.pas' {QuickReportTrazasDelSistema: TQuickRep},
  UfrmPreviewReporteTrazasDelSistema in 'UfrmPreviewReporteTrazasDelSistema.pas' {frmPreviewReporteTrazasDelSistema},
  UfrmPreviewReporteCuentasDeUsuarios in 'UfrmPreviewReporteCuentasDeUsuarios.pas' {frmPreviewReporteCuentasDeUsuarios},
  UfrmQRReporteCuentasDeUsuarios in 'UfrmQRReporteCuentasDeUsuarios.pas' {QuickReportCuentasDeUsuarios: TQuickRep},
  UPlanilla1164_01 in 'UPlanilla1164_01.pas',
  UfrmNuevaPlanilla1164_01 in 'UfrmNuevaPlanilla1164_01.pas' {frmNuevaPlanilla1164_01},
  UDataModuleInformes in 'UDataModuleInformes.pas' {DataModuleInformes: TDataModule},
  UModuloInformes in 'UModuloInformes.pas',
  UfrmModificarPlanilla1164_01 in 'UfrmModificarPlanilla1164_01.pas' {frmModificarPlanilla1164_01},
  UfrmSumatoriaPlanillas1164_01PorAnno in 'UfrmSumatoriaPlanillas1164_01PorAnno.pas' {frmSumatoriaPlanillas1164_01PorAnno},
  UfrmQRReportePlanilla1164_01 in 'UfrmQRReportePlanilla1164_01.pas' {QuickReportPlanilla1164_01: TQuickRep},
  UfrmPreviewReportePlanilla1164_01 in 'UfrmPreviewReportePlanilla1164_01.pas' {frmPreviewReportePlanilla1164_01},
  UfrmQRReporteSumatoriaPlanillas1164_01PorAnno in 'UfrmQRReporteSumatoriaPlanillas1164_01PorAnno.pas' {QuickReportSumatoriaPlanillas1164_01PorAnno: TQuickRep},
  UfrmPreviewReporteSumatoriaPlanillas1164_01PorAnno in 'UfrmPreviewReporteSumatoriaPlanillas1164_01PorAnno.pas' {frmPreviewReporteSumatoriaPlanillas1164_01PorAnno},
  UFicheroPlanilla1164_01 in 'UFicheroPlanilla1164_01.pas',
  UfrmPreviewReporteInformes1164_01 in 'UfrmPreviewReporteInformes1164_01.pas' {frmPreviewReporteInformes1164_01},
  UfrmQRReporteInformes1164_01 in 'UfrmQRReporteInformes1164_01.pas' {QuickReportInformes1164_01: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'BookLogger v1.0';
  Application.HelpFile := 'HelpFiles\HELP.HLP';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmAcercaDe, frmAcercaDe);
  Application.CreateForm(TfrmPresentacion, frmPresentacion);
  Application.CreateForm(TfrmValidacionPuestoDeTrabajo, frmValidacionPuestoDeTrabajo);
  Application.CreateForm(TDataModuleConexionGeneral, DataModuleConexionGeneral);
  Application.CreateForm(TDataModuleControlDelSistema, DataModuleControlDelSistema);
  Application.CreateForm(TfrmNotificacionDeAlguienLoggeado, frmNotificacionDeAlguienLoggeado);
  Application.CreateForm(TfrmNuevoPuestoDeTrabajo, frmNuevoPuestoDeTrabajo);
  Application.CreateForm(TfrmModificarPuestoDeTrabajo, frmModificarPuestoDeTrabajo);
  Application.CreateForm(TfrmDetallesDeTrazasDelSistema, frmDetallesDeTrazasDelSistema);
  Application.CreateForm(TQuickReportTrazasDelSistema, QuickReportTrazasDelSistema);
  Application.CreateForm(TfrmPreviewReporteTrazasDelSistema, frmPreviewReporteTrazasDelSistema);
  Application.CreateForm(TfrmPreviewReporteCuentasDeUsuarios, frmPreviewReporteCuentasDeUsuarios);
  Application.CreateForm(TQuickReportCuentasDeUsuarios, QuickReportCuentasDeUsuarios);
  Application.CreateForm(TfrmNuevaPlanilla1164_01, frmNuevaPlanilla1164_01);
  Application.CreateForm(TDataModuleInformes, DataModuleInformes);
  Application.CreateForm(TfrmModificarPlanilla1164_01, frmModificarPlanilla1164_01);
  Application.CreateForm(TfrmSumatoriaPlanillas1164_01PorAnno, frmSumatoriaPlanillas1164_01PorAnno);
  Application.CreateForm(TQuickReportPlanilla1164_01, QuickReportPlanilla1164_01);
  Application.CreateForm(TfrmPreviewReportePlanilla1164_01, frmPreviewReportePlanilla1164_01);
  Application.CreateForm(TQuickReportSumatoriaPlanillas1164_01PorAnno, QuickReportSumatoriaPlanillas1164_01PorAnno);
  Application.CreateForm(TfrmPreviewReporteSumatoriaPlanillas1164_01PorAnno, frmPreviewReporteSumatoriaPlanillas1164_01PorAnno);
  Application.CreateForm(TfrmPreviewReporteInformes1164_01, frmPreviewReporteInformes1164_01);
  Application.CreateForm(TQuickReportInformes1164_01, QuickReportInformes1164_01);
  Application.Run;
end.
