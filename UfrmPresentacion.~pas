unit UfrmPresentacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, ComCtrls, MarqueeProgressBar, QProgBar,

  UFicheroIdioma, AdvCircularProgress;

type
  TfrmPresentacion = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    pnlSuperior: TPanel;
    pnlInferior: TPanel;
    pnpIzquierda: TPanel;
    pnlDerecha: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    lblVersionYCompilacion: TLabel;
    QProgressBarCargando: TQProgressBar;
    ImagePresentacion: TImage;
    animRuedaDentada1: TAnimate;
    animRuedaDentada2: TAnimate;
    ImageLogoCenSoft: TImage;
    Image2: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure SetIdiomaEspannol;
    procedure SetIdiomaIngles;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPresentacion: TfrmPresentacion;
  FicheroIdiomaInicio: TFicheroIdioma;

  IdiomaImperante: AnsiString;

implementation

uses StrUtils;
{$R *.dfm}



procedure TfrmPresentacion.Timer1Timer(Sender: TObject);
begin
  QProgressBarCargando.position:= QProgressBarCargando.position + 1;
  //AdvCircularProgress1.position:= AdvCircularProgress1.position + 1;

  if (IdiomaImperante= 'Espannol')
    then
      begin  //Español
        if (   (StrToInt( AnsiRightStr(IntToStr(QProgressBarCargando.position), 1) ) >= 0) and (StrToInt( AnsiRightStr(IntToStr(QProgressBarCargando.position), 1) ) <= 4)   )
          then
            begin
              QProgressBarCargando.caption:= 'Cargando';
            end
              else
                begin
                  QProgressBarCargando.caption:= '';
                end;
      end    //Fin de Idioma Español
        else
          begin  //Idioma Ingles
            if (IdiomaImperante= 'Ingles')
              then
                begin
                  if (   (StrToInt( AnsiRightStr(IntToStr(QProgressBarCargando.position), 1) ) >= 0) and (StrToInt( AnsiRightStr(IntToStr(QProgressBarCargando.position), 1) ) <= 4)   )
                    then
                      begin
                        QProgressBarCargando.caption:= 'Cargando';
                      end
                        else
                          begin
                            QProgressBarCargando.caption:= '';
                          end;
                end;
          end;   //Fin de Idioma Ingles
end;



procedure TfrmPresentacion.Timer2Timer(Sender: TObject);
begin
  //Detengo los videitos de la rueda dentada
  animRuedaDentada1.Stop;
  animRuedaDentada2.Stop;

  //Cierro la ventana
  frmPresentacion.Close;
end;



procedure TfrmPresentacion.FormShow(Sender: TObject);
const
  //clPaleGreen= TColor($CCFFCC);
  //clPaleRed= TColor($CCCCFF);
  clStrongRed=TColor($006C6CFF);
  //clLightGreen =TColor($00B0F2CB);
  clLightGreen =TColor($FF580000);
begin
  //Le cambio el color al ProgressBar
  //PostMessage(ProgressBar1.Handle, $0409, 0, clStrongRed);


  //Cargo los videitos de rueda dentada
  animRuedaDentada1.FileName:= ExtractFilePath(Application.ExeName) + 'Animations\RuedaDentada.avi';
  animRuedaDentada2.FileName:= ExtractFilePath(Application.ExeName) + 'Animations\RuedaDentada.avi';

  //Ejecuto los videitos de la rueda dentada
  animRuedaDentada1.Play(1, animRuedaDentada1.FrameCount, 0);
  animRuedaDentada2.Play(1, animRuedaDentada2.FrameCount, 0);

  //Creo el fichero de idioma
  FicheroIdiomaInicio:= TFicheroIdioma.New;

  //Cargo el fichero de idioma
  FicheroIdiomaInicio.Cargar(ExtractFilePath(Application.ExeName) + 'Languaje\lang.txt');

  //Determino el idoma a mostrar en a interfaz
  if (FicheroIdiomaInicio.DeterminarIdiomaImperante = 'Ingles')
    then
      begin
        //Actualizo la variable indicadora de idioma imperante
        IdiomaImperante:= 'Ingles';

        //Instauro el idioma ingles
        SetIdiomaIngles;
      end
        else
          begin
            if (FicheroIdiomaInicio.DeterminarIdiomaImperante = 'Espannol')
              then
                begin
                  //Actualizo la variable indicadora de idioma imperante
                  IdiomaImperante:= 'Espannol';

                  //Instauro el idioma espannol
                  SetIdiomaEspannol;
                end;
          end;

end;



procedure TfrmPresentacion.SetIdiomaEspannol;
begin
  //Fijo el Font del ProgressBar
  QProgressBarCargando.font.Style:= [fsbold];

  //Refresco el ProgressBar
  QProgressBarCargando.Refresh;

  lblVersionYCompilacion.Caption:= 'Compilación 04.0';
  QProgressBarCargando.caption:= 'Cargando';
end;



procedure TfrmPresentacion.SetIdiomaIngles;
begin
  lblVersionYCompilacion.Caption:= 'Compilación 04.0';
  QProgressBarCargando.caption:= 'Cargando';
end;



end.
