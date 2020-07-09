unit UfrmQRReporteInformes1164_01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModuleInformes, RpDefine, RpRender, RpRenderPDF,
  QRExport;

type
  TQuickReportInformes1164_01 = class(TQuickRep)
    QRBandTitleHabitacionesExistentes: TQRBand;
    QRBandDetalHabitacionesExistentes: TQRBand;
    QRImageLogo: TQRImage;
    QRMemo1: TQRMemo;
    QRLabelProvincia: TQRLabel;
    QRDBtxtAnno: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage2: TQRImage;
    QRDBtxtNombreCentroInformante: TQRDBText;
    QRDBtxtMunicipio: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRlblReferente: TQRLabel;
    QRShape1: TQRShape;
    QRlblFechaEmitido: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBtxtProvincia: TQRDBText;
    QRBand1: TQRBand;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportInformes1164_01: TQuickReportInformes1164_01;

implementation
Uses
  UfrmPreviewReporteInformes1164_01;
{$R *.DFM}



procedure TQuickReportInformes1164_01.QuickRepPreview(Sender: TObject);
begin
  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewReporteInformes1164_01.Preview.QRPrinter := QuickReportInformes1164_01.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewReporteInformes1164_01.Position:= poDesktopCenter;
  frmPreviewReporteInformes1164_01.ShowModal;
end;



end.
