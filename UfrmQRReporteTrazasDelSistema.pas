unit UfrmQRReporteTrazasDelSistema;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  UDataModuleControlDelSistema, RpDefine, RpRender, RpRenderPDF,
  QRExport;

type
  TQuickReportTrazasDelSistema = class(TQuickRep)
    QRBandTitleHabitacionesExistentes: TQRBand;
    QRBandDetalHabitacionesExistentes: TQRBand;
    QRImageLogo: TQRImage;
    QRMemo1: TQRMemo;
    QRLabelProvincia: TQRLabel;
    QRDBtxtFecha: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage2: TQRImage;
    QRDBtxtUsuario: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRlblReferente: TQRLabel;
    QRShape1: TQRShape;
    QRlblFechaEmitido: TQRLabel;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRDBtxtAccionRealizada: TQRDBText;
    QRBand1: TQRBand;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportTrazasDelSistema: TQuickReportTrazasDelSistema;

implementation
Uses
  UfrmPreviewReporteTrazasDelSistema;
{$R *.DFM}



procedure TQuickReportTrazasDelSistema.QuickRepPreview(Sender: TObject);
begin
  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewReporteTrazasDelSistema.Preview.QRPrinter := QuickReportTrazasDelSistema.QRPrinter;

  //Mando a que se muestre el Preview   
  frmPreviewReporteTrazasDelSistema.Position:= poDesktopCenter;
  frmPreviewReporteTrazasDelSistema.ShowModal;
end;



end.
