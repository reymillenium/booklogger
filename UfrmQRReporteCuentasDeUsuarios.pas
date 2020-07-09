unit UfrmQRReporteCuentasDeUsuarios;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModuleControlDelSistema, RpDefine, RpRender, RpRenderPDF,
  QRExport;

type
  TQuickReportCuentasDeUsuarios = class(TQuickRep)
    QRBandTitleHabitacionesExistentes: TQRBand;
    QRBandDetalHabitacionesExistentes: TQRBand;
    QRImageLogo: TQRImage;
    QRMemo1: TQRMemo;
    QRLabelProvincia: TQRLabel;
    QRDBtxtUsuario: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage2: TQRImage;
    QRDBtxtPrivilegio: TQRDBText;
    QRDBtxtNombre: TQRDBText;
    QRDBtxtSegundoApellido: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRlblReferente: TQRLabel;
    QRShape1: TQRShape;
    QRlblFechaEmitido: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBtxtPrimerApellido: TQRDBText;
    QRBand1: TQRBand;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportCuentasDeUsuarios: TQuickReportCuentasDeUsuarios;

implementation
Uses
  UfrmPreviewReporteCuentasDeUsuarios;
{$R *.DFM}



procedure TQuickReportCuentasDeUsuarios.QuickRepPreview(Sender: TObject);
begin
  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewReporteCuentasDeUsuarios.Preview.QRPrinter := QuickReportCuentasDeUsuarios.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewReporteCuentasDeUsuarios.Position:= poDesktopCenter;
  frmPreviewReporteCuentasDeUsuarios.ShowModal;
end;



end.
