unit UfrmPreviewReportePlanilla1164_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExportPack, ImgList, QRPrntr, ComCtrls, ToolWin, ExtCtrls,
  StdCtrls, RpDefine, RpBase, RpSystem, ATImageBox, RpRender, RpRenderPDF,
  AdvToolBar, AdvToolBarStylers;

type
  TfrmPreviewReportePlanilla1164_01 = class(TForm)
    ToolBar1: TToolBar;
    Preview: TQRPreview;
    IL: TImageList;
    EXQR: TExportQR;
    SaveDialogSimulacionImagenes: TSaveDialog;
    RvRenderPDFSimulacionImagenes: TRvRenderPDF;
    AdvToolBar1: TAdvToolBar;
    barbtnSalvar: TAdvToolBarButton;
    barbtnImprimir: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarFantasyStylerHostalWare: TAdvToolBarFantasyStyler;
    barbtnPrimero: TAdvToolBarButton;
    barbtnAnterior: TAdvToolBarButton;
    barbtnSiguiente: TAdvToolBarButton;
    barbtnUltimo: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    barbtnAumentarZoom: TAdvToolBarButton;
    barbtnReducirZoom: TAdvToolBarButton;
    barbtnZoomToWidth: TAdvToolBarButton;
    barbtnZoomToFit: TAdvToolBarButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    barbtnExit: TAdvToolBarButton;
    procedure TBSaveClick(Sender: TObject);
    procedure TBPrintClick(Sender: TObject);
    procedure TBExitClick(Sender: TObject);
    procedure TBPrimeroClick(Sender: TObject);
    procedure TBZoomToFitClick(Sender: TObject);
    procedure TBZoomToWidthClick(Sender: TObject);
    procedure TBAumentarZoomClick(Sender: TObject);
    procedure TBReducirZoomClick(Sender: TObject);
    procedure TBUltimoClick(Sender: TObject);
    procedure TBSiguienteClick(Sender: TObject);
    procedure TBAnteriorClick(Sender: TObject);
    procedure PreviewPageAvailable(Sender: TObject; PageNum: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    IdiomaImperante: AnsiString;
    NombreMuestra: AnsiString;
    FechaDelSistema: AnsiString;
  end;

var
  frmPreviewReportePlanilla1164_01: TfrmPreviewReportePlanilla1164_01;
  

implementation

Uses
  UfrmQRReportePlanilla1164_01;
{$R *.dfm}



procedure TfrmPreviewReportePlanilla1164_01.TBSaveClick(Sender: TObject);
begin
  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa. Exportando el Reporte de Planilla 1164-01 a PDF. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa. Exportando el Reporte de Planilla 1164-01 a PDF. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
                end;
          end;

        //*** Usando QuickReport ***
        
  // Be careful!, only if export from a preview window
  EXQR.Preview := Preview;
  EXQR.ExportQRFromPreview;

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
                end;
          end;
end;



procedure TfrmPreviewReportePlanilla1164_01.TBPrintClick(Sender: TObject);
begin
  Preview.QRPrinter.Print;
end;



procedure TfrmPreviewReportePlanilla1164_01.TBExitClick(Sender: TObject);
begin
  Close;
  Preview.QRPrinter := nil;
end;



procedure TfrmPreviewReportePlanilla1164_01.TBPrimeroClick(
  Sender: TObject);
begin
  //Voy a la primera pagina
  Preview.PageNumber:= 1;

  //Especifico la posicion de pagina
  frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
end;



procedure TfrmPreviewReportePlanilla1164_01.TBZoomToFitClick(
  Sender: TObject);
begin
  //Hago que el reporte se viasualize complete (que encaje o coincida)
  Preview.ZoomToFit;
end;



procedure TfrmPreviewReportePlanilla1164_01.TBZoomToWidthClick(
  Sender: TObject);
begin
  //Hago que el reporte se viasualize al ancho completo
  Preview.ZoomToWidth;
end;



procedure TfrmPreviewReportePlanilla1164_01.TBAumentarZoomClick(
  Sender: TObject);
begin
  //Hago que el reporte aumente el zoom
  Preview.Zoom:= Preview.Zoom + 10;
end;



procedure TfrmPreviewReportePlanilla1164_01.TBReducirZoomClick(
  Sender: TObject);
begin
  //Hago que el reporte reduzca el zoom
  Preview.Zoom:= Preview.Zoom - 10;
end;



procedure TfrmPreviewReportePlanilla1164_01.TBUltimoClick(Sender: TObject);
begin
  //Voy a la ultima pagina
  Preview.PageNumber:= Preview.QRPrinter.PageCount;

  //Especifico la posicion de pagina
  frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
end;



procedure TfrmPreviewReportePlanilla1164_01.TBSiguienteClick(Sender: TObject);
begin
  //Si no se ha llegado al final
  if (Preview.PageNumber <> Preview.QRPrinter.PageCount)
    then
      begin
        //Voy a la siguiente pagina
        Preview.PageNumber:= Preview.PageNumber + 1;
        
        //Especifico la posicion de pagina
        if (Preview.QRPrinter.PageCount = 0)
          then
            begin
              //Especifico la posicion de pagina
              frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01. Página ' + IntToStr(Preview.PageNumber) + ' de 1';
            end
              else
                begin
                  //Especifico la posicion de pagina
                  frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
                end;
      end;
end;



procedure TfrmPreviewReportePlanilla1164_01.TBAnteriorClick(Sender: TObject);
begin
  //Si no es la primera página
  if (Preview.PageNumber > 1)
    then
      begin
        //Entonces voy a la anterior pagina
        Preview.PageNumber:= Preview.PageNumber - 1;

        //Especifico la posicion de pagina
        frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
      end;
end;



procedure TfrmPreviewReportePlanilla1164_01.PreviewPageAvailable(
  Sender: TObject; PageNum: Integer);
begin
  //Me paro en la 1ra página
  Preview.PageNumber:= 1;

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        //Especifico la posicion de pagina
        frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01';

                  //Especifico la posicion de pagina
                  frmPreviewReportePlanilla1164_01.Caption:= 'BookLogger. Vista Previa del Reporte de Planilla 1164-01. Página ' + IntToStr(Preview.PageNumber) + ' de ' + IntToStr(Preview.QRPrinter.PageCount);
                end;
          end;
end;



end.
