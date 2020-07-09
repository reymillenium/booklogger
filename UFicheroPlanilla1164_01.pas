unit UFicheroPlanilla1164_01;

interface

uses
  Classes, Forms,
  
  UPlanilla1164_01;

type
  TFicheroPlanilla1164_01 = class(TObject)
  private
  protected
    { Protected declarations }
    FValoresPlanilla1164_01: TStringList;
    
  public
    constructor New;
    
    procedure CargarValoresDePlanilla1164_01ExtraidaDesdeFichero(aPath: String);
    procedure SalvarValoresDePlanilla1164_01ExtraidaDesdeFichero(aPath: String);

    procedure DeterminarValoresDePlanilla1164_01ExtraidaDesdeFichero(aPlanilla: TPlanilla1164_01);
    procedure SetValoresDePlanilla1164_01ExtraidaDesdeFichero(aPlanilla: TPlanilla1164_01);

    function ElFicheroEstaEnBuenEstado: Boolean;

    property ValoresPlanilla1164_01: TStringList read FValoresPlanilla1164_01 Write FValoresPlanilla1164_01;

  end;

var
  FFicheroPlanilla1164_01: TFicheroPlanilla1164_01;

implementation

uses SysUtils, StrUtils;

  { TUnit }




procedure TFicheroPlanilla1164_01.CargarValoresDePlanilla1164_01ExtraidaDesdeFichero(aPath: String);
begin
  //Cargo el fichero de valores de la planilla 1164-01
  //FZoomImagenSimulacionImagenes.LoadFromFile( ExtractFilePath(Application.ExeName) + 'Library\TempFiles\' + aFolderName + '\Zoom\Zoom.txt' );
  FValoresPlanilla1164_01.LoadFromFile(aPath);
end;



Constructor TFicheroPlanilla1164_01.New;
begin
  inherited Create;
  ValoresPlanilla1164_01:= TStringList.Create;
  //FZoomImagenSimulacionImagenes.Strings[0]:= '100';
end;



procedure TFicheroPlanilla1164_01.DeterminarValoresDePlanilla1164_01ExtraidaDesdeFichero(aPlanilla: TPlanilla1164_01);
var
  Cadena: String;
begin
  //** Lleno la planilla **

  //Posicionamiento
  aPlanilla.Anno:= StrToInt(ValoresPlanilla1164_01.Strings[0]);
  aPlanilla.Municipio:= ValoresPlanilla1164_01.Strings[1];
  aPlanilla.Provincia:= ValoresPlanilla1164_01.Strings[2];



  //Datos Generales
  aPlanilla.NombreCentroInformante:= ValoresPlanilla1164_01.Strings[3];
  aPlanilla.CodigoCentroInformante:= ValoresPlanilla1164_01.Strings[4];
  aPlanilla.NombreDirectorEconomico:= ValoresPlanilla1164_01.Strings[5];
  aPlanilla.NombreRectorODirector:= ValoresPlanilla1164_01.Strings[6];
  aPlanilla.FechaConfeccion:= StrToDateTime(ValoresPlanilla1164_01.Strings[7]);


  //Sección I: Caracterización
  aPlanilla.DoctoresXTotal:= StrToInt(ValoresPlanilla1164_01.Strings[8]);
  aPlanilla.DoctoresXCantGrad:= StrToInt(ValoresPlanilla1164_01.Strings[9]);
  aPlanilla.DoctoresXCantParticip:= StrToInt(ValoresPlanilla1164_01.Strings[10]);



  //Sección II: Superación Profesional
  //Diplomados
  aPlanilla.DiplomadosXCantActivTotal:= StrToInt(ValoresPlanilla1164_01.Strings[11]);
  aPlanilla.DiplomadosXCantActivUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[12]);
  aPlanilla.DiplomadosXCantActivADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[13]);
  aPlanilla.DiplomadosXCantActivExtranjero:= StrToInt(ValoresPlanilla1164_01.Strings[14]);
  aPlanilla.DiplomadosXCantParticipTotal:= StrToInt(ValoresPlanilla1164_01.Strings[15]);
  aPlanilla.DiplomadosXCantParticipMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[16]);
  aPlanilla.DiplomadosXCantParticipExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[17]);
  aPlanilla.DiplomadosXCantParticipProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[18]);
  aPlanilla.DiplomadosXCantParticipProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[19]);
  aPlanilla.DiplomadosXCantParticipUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[20]);
  aPlanilla.DiplomadosXCantParticipADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[21]);
  aPlanilla.DiplomadosXCantGradTotal:= StrToInt(ValoresPlanilla1164_01.Strings[22]);
  aPlanilla.DiplomadosXCantGradMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[23]);
  aPlanilla.DiplomadosXCantGradExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[24]);
  aPlanilla.DiplomadosXCantGradProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[25]);
  aPlanilla.DiplomadosXCantGradProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[26]);

  //Entrenamientos
  aPlanilla.EntrenamientosXCantActivTotal:= StrToInt(ValoresPlanilla1164_01.Strings[27]);
  aPlanilla.EntrenamientosXCantActivUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[28]);
  aPlanilla.EntrenamientosXCantActivADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[29]);
  aPlanilla.EntrenamientosXCantActivExtranjero:= StrToInt(ValoresPlanilla1164_01.Strings[30]);
  aPlanilla.EntrenamientosXCantParticipTotal:= StrToInt(ValoresPlanilla1164_01.Strings[31]);
  aPlanilla.EntrenamientosXCantParticipMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[32]);
  aPlanilla.EntrenamientosXCantParticipExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[33]);
  aPlanilla.EntrenamientosXCantParticipProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[34]);
  aPlanilla.EntrenamientosXCantParticipProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[35]);
  aPlanilla.EntrenamientosXCantParticipUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[36]);
  aPlanilla.EntrenamientosXCantParticipADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[37]);
  aPlanilla.EntrenamientosXCantGradTotal:= StrToInt(ValoresPlanilla1164_01.Strings[38]);
  aPlanilla.EntrenamientosXCantGradMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[39]);
  aPlanilla.EntrenamientosXCantGradExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[40]);
  aPlanilla.EntrenamientosXCantGradProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[41]);
  aPlanilla.EntrenamientosXCantGradProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[42]);

  //Cursos
  aPlanilla.CursosXCantActivTotal:= StrToInt(ValoresPlanilla1164_01.Strings[43]);
  aPlanilla.CursosXCantActivUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[44]);
  aPlanilla.CursosXCantActivADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[45]);
  aPlanilla.CursosXCantActivExtranjero:= StrToInt(ValoresPlanilla1164_01.Strings[46]);
  aPlanilla.CursosXCantParticipTotal:= StrToInt(ValoresPlanilla1164_01.Strings[47]);
  aPlanilla.CursosXCantParticipMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[48]);
  aPlanilla.CursosXCantParticipExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[49]);
  aPlanilla.CursosXCantParticipProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[50]);
  aPlanilla.CursosXCantParticipProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[51]);
  aPlanilla.CursosXCantParticipUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[52]);
  aPlanilla.CursosXCantParticipADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[53]);
  aPlanilla.CursosXCantGradTotal:= StrToInt(ValoresPlanilla1164_01.Strings[54]);
  aPlanilla.CursosXCantGradMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[55]);
  aPlanilla.CursosXCantGradExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[56]);
  aPlanilla.CursosXCantGradProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[57]);
  aPlanilla.CursosXCantGradProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[58]);

  //SubTotal II
  aPlanilla.SubTotal2XCantActivTotal:= StrToInt(ValoresPlanilla1164_01.Strings[59]);
  aPlanilla.SubTotal2XCantActivUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[60]);
  aPlanilla.SubTotal2XCantActivADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[61]);
  aPlanilla.SubTotal2XCantActivExtranjero:= StrToInt(ValoresPlanilla1164_01.Strings[62]);
  aPlanilla.SubTotal2XCantParticipTotal:= StrToInt(ValoresPlanilla1164_01.Strings[63]);
  aPlanilla.SubTotal2XCantParticipMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[64]);
  aPlanilla.SubTotal2XCantParticipExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[65]);
  aPlanilla.SubTotal2XCantParticipProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[66]);
  aPlanilla.SubTotal2XCantParticipProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[67]);
  aPlanilla.SubTotal2XCantParticipUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[68]);
  aPlanilla.SubTotal2XCantParticipADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[69]);
  aPlanilla.SubTotal2XCantGradTotal:= StrToInt(ValoresPlanilla1164_01.Strings[70]);
  aPlanilla.SubTotal2XCantGradMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[71]);
  aPlanilla.SubTotal2XCantGradExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[72]);
  aPlanilla.SubTotal2XCantGradProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[73]);
  aPlanilla.SubTotal2XCantGradProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[74]);


  //Sección II: Postgrado Académico

  //Doctorados
  aPlanilla.DoctoradosXCantActivTotal:= StrToInt(ValoresPlanilla1164_01.Strings[75]);
  aPlanilla.DoctoradosXCantActivUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[76]);
  aPlanilla.DoctoradosXCantActivADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[77]);
  aPlanilla.DoctoradosXCantActivExtranjero:= StrToInt(ValoresPlanilla1164_01.Strings[78]);
  aPlanilla.DoctoradosXCantParticipTotal:= StrToInt(ValoresPlanilla1164_01.Strings[79]);
  aPlanilla.DoctoradosXCantParticipMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[80]);
  aPlanilla.DoctoradosXCantParticipExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[81]);
  aPlanilla.DoctoradosXCantParticipProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[82]);
  aPlanilla.DoctoradosXCantParticipProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[83]);
  aPlanilla.DoctoradosXCantParticipUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[84]);
  aPlanilla.DoctoradosXCantParticipADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[85]);
  aPlanilla.DoctoradosXCantGradTotal:= StrToInt(ValoresPlanilla1164_01.Strings[86]);
  aPlanilla.DoctoradosXCantGradMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[87]);
  aPlanilla.DoctoradosXCantGradExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[88]);
  aPlanilla.DoctoradosXCantGradProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[89]);
  aPlanilla.DoctoradosXCantGradProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[90]);

  //Especialidades
  aPlanilla.EspecialidadesXCantActivTotal:= StrToInt(ValoresPlanilla1164_01.Strings[91]);
  aPlanilla.EspecialidadesXCantActivUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[92]);
  aPlanilla.EspecialidadesXCantActivADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[93]);
  aPlanilla.EspecialidadesXCantActivExtranjero:= StrToInt(ValoresPlanilla1164_01.Strings[94]);
  aPlanilla.EspecialidadesXCantParticipTotal:= StrToInt(ValoresPlanilla1164_01.Strings[95]);
  aPlanilla.EspecialidadesXCantParticipMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[96]);
  aPlanilla.EspecialidadesXCantParticipExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[97]);
  aPlanilla.EspecialidadesXCantParticipProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[98]);
  aPlanilla.EspecialidadesXCantParticipProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[99]);
  aPlanilla.EspecialidadesXCantParticipUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[100]);
  aPlanilla.EspecialidadesXCantParticipADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[101]);
  aPlanilla.EspecialidadesXCantGradTotal:= StrToInt(ValoresPlanilla1164_01.Strings[102]);
  aPlanilla.EspecialidadesXCantGradMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[103]);
  aPlanilla.EspecialidadesXCantGradExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[104]);
  aPlanilla.EspecialidadesXCantGradProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[105]);
  aPlanilla.EspecialidadesXCantGradProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[106]);

  //Maestrías
  aPlanilla.MaestriasXCantActivTotal:= StrToInt(ValoresPlanilla1164_01.Strings[107]);
  aPlanilla.MaestriasXCantActivUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[108]);
  aPlanilla.MaestriasXCantActivADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[109]);
  aPlanilla.MaestriasXCantActivExtranjero:= StrToInt(ValoresPlanilla1164_01.Strings[110]);
  aPlanilla.MaestriasXCantParticipTotal:= StrToInt(ValoresPlanilla1164_01.Strings[111]);
  aPlanilla.MaestriasXCantParticipMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[112]);
  aPlanilla.MaestriasXCantParticipExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[113]);
  aPlanilla.MaestriasXCantParticipProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[114]);
  aPlanilla.MaestriasXCantParticipProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[115]);
  aPlanilla.MaestriasXCantParticipUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[116]);
  aPlanilla.MaestriasXCantParticipADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[117]);
  aPlanilla.MaestriasXCantGradTotal:= StrToInt(ValoresPlanilla1164_01.Strings[118]);
  aPlanilla.MaestriasXCantGradMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[119]);
  aPlanilla.MaestriasXCantGradExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[120]);
  aPlanilla.MaestriasXCantGradProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[121]);
  aPlanilla.MaestriasXCantGradProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[122]);

  //SubTotal III
  aPlanilla.SubTotal3XCantActivTotal:= StrToInt(ValoresPlanilla1164_01.Strings[123]);
  aPlanilla.SubTotal3XCantActivUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[124]);
  aPlanilla.SubTotal3XCantActivADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[125]);
  aPlanilla.SubTotal3XCantActivExtranjero:= StrToInt(ValoresPlanilla1164_01.Strings[126]);
  aPlanilla.SubTotal3XCantParticipTotal:= StrToInt(ValoresPlanilla1164_01.Strings[127]);
  aPlanilla.SubTotal3XCantParticipMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[128]);
  aPlanilla.SubTotal3XCantParticipExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[129]);
  aPlanilla.SubTotal3XCantParticipProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[130]);
  aPlanilla.SubTotal3XCantParticipProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[131]);
  aPlanilla.SubTotal3XCantParticipUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[132]);
  aPlanilla.SubTotal3XCantParticipADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[133]);
  aPlanilla.SubTotal3XCantGradTotal:= StrToInt(ValoresPlanilla1164_01.Strings[134]);
  aPlanilla.SubTotal3XCantGradMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[135]);
  aPlanilla.SubTotal3XCantGradExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[136]);
  aPlanilla.SubTotal3XCantGradProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[137]);
  aPlanilla.SubTotal3XCantGradProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[138]);


  //Total
  aPlanilla.TotalXCantActivTotal:= StrToInt(ValoresPlanilla1164_01.Strings[139]);
  aPlanilla.TotalXCantActivUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[140]);
  aPlanilla.TotalXCantActivADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[141]);
  aPlanilla.TotalXCantActivExtranjero:= StrToInt(ValoresPlanilla1164_01.Strings[142]);
  aPlanilla.TotalXCantParticipTotal:= StrToInt(ValoresPlanilla1164_01.Strings[143]);
  aPlanilla.TotalXCantParticipMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[144]);
  aPlanilla.TotalXCantParticipExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[145]);
  aPlanilla.TotalXCantParticipProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[146]);
  aPlanilla.TotalXCantParticipProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[147]);
  aPlanilla.TotalXCantParticipUnivMun:= StrToInt(ValoresPlanilla1164_01.Strings[148]);
  aPlanilla.TotalXCantParticipADistancia:= StrToInt(ValoresPlanilla1164_01.Strings[149]);
  aPlanilla.TotalXCantGradTotal:= StrToInt(ValoresPlanilla1164_01.Strings[150]);
  aPlanilla.TotalXCantGradMujeres:= StrToInt(ValoresPlanilla1164_01.Strings[151]);
  aPlanilla.TotalXCantGradExtranjeros:= StrToInt(ValoresPlanilla1164_01.Strings[152]);
  aPlanilla.TotalXCantGradProfTC:= StrToInt(ValoresPlanilla1164_01.Strings[153]);
  aPlanilla.TotalXCantGradProfTP:= StrToInt(ValoresPlanilla1164_01.Strings[154]);
end;



procedure TFicheroPlanilla1164_01.SetValoresDePlanilla1164_01ExtraidaDesdeFichero(aPlanilla: TPlanilla1164_01);
var
  cadena: String;
  i: Integer;
begin
  //Recorro los 155 valores de la planilla
  for i:= 0 to 154 do
    begin
      //Recibo la linea especificada por 'i'
      cadena:= ValoresPlanilla1164_01.Strings[i];

      //Borro el valor anterior, guardado en la 1ra linea cargada temporalmente
      Delete(cadena, 0, length(cadena));

      //Reescribo con nulo (borro) la linea especificada por 'i'
      ValoresPlanilla1164_01.Strings[i]:= cadena;
    end;

  //** Reescribo la cadena con los nuevos valores **

  //Posicionamiento
  ValoresPlanilla1164_01.Strings[0]:= IntToStr(aPlanilla.Anno);
  ValoresPlanilla1164_01.Strings[1]:= aPlanilla.Municipio;
  ValoresPlanilla1164_01.Strings[2]:= aPlanilla.Provincia;



  //Datos Generales
  ValoresPlanilla1164_01.Strings[3]:= aPlanilla.NombreCentroInformante;
  ValoresPlanilla1164_01.Strings[4]:= aPlanilla.CodigoCentroInformante;
  ValoresPlanilla1164_01.Strings[5]:= aPlanilla.NombreDirectorEconomico;
  ValoresPlanilla1164_01.Strings[6]:= aPlanilla.NombreRectorODirector;
  ValoresPlanilla1164_01.Strings[7]:= DateTimeToStr(aPlanilla.FechaConfeccion);


  //Sección I: Caracterización
  ValoresPlanilla1164_01.Strings[8]:= IntToStr(aPlanilla.DoctoresXTotal);
  ValoresPlanilla1164_01.Strings[9]:= IntToStr(aPlanilla.DoctoresXCantGrad);
  ValoresPlanilla1164_01.Strings[10]:= IntToStr(aPlanilla.DoctoresXCantParticip);



  //Sección II: Superación Profesional
  //Diplomados
  ValoresPlanilla1164_01.Strings[11]:= IntToStr(aPlanilla.DiplomadosXCantActivTotal);
  ValoresPlanilla1164_01.Strings[12]:= IntToStr(aPlanilla.DiplomadosXCantActivUnivMun);
  ValoresPlanilla1164_01.Strings[13]:= IntToStr(aPlanilla.DiplomadosXCantActivADistancia);
  ValoresPlanilla1164_01.Strings[14]:= IntToStr(aPlanilla.DiplomadosXCantActivExtranjero);
  ValoresPlanilla1164_01.Strings[15]:= IntToStr(aPlanilla.DiplomadosXCantParticipTotal);
  ValoresPlanilla1164_01.Strings[16]:= IntToStr(aPlanilla.DiplomadosXCantParticipMujeres);
  ValoresPlanilla1164_01.Strings[17]:= IntToStr(aPlanilla.DiplomadosXCantParticipExtranjeros);
  ValoresPlanilla1164_01.Strings[18]:= IntToStr(aPlanilla.DiplomadosXCantParticipProfTC);
  ValoresPlanilla1164_01.Strings[19]:= IntToStr(aPlanilla.DiplomadosXCantParticipProfTP);
  ValoresPlanilla1164_01.Strings[20]:= IntToStr(aPlanilla.DiplomadosXCantParticipUnivMun);
  ValoresPlanilla1164_01.Strings[21]:= IntToStr(aPlanilla.DiplomadosXCantParticipADistancia);
  ValoresPlanilla1164_01.Strings[22]:= IntToStr(aPlanilla.DiplomadosXCantGradTotal);
  ValoresPlanilla1164_01.Strings[23]:= IntToStr(aPlanilla.DiplomadosXCantGradMujeres);
  ValoresPlanilla1164_01.Strings[24]:= IntToStr(aPlanilla.DiplomadosXCantGradExtranjeros);
  ValoresPlanilla1164_01.Strings[25]:= IntToStr(aPlanilla.DiplomadosXCantGradProfTC);
  ValoresPlanilla1164_01.Strings[26]:= IntToStr(aPlanilla.DiplomadosXCantGradProfTP);

  //Entrenamientos
  ValoresPlanilla1164_01.Strings[27]:= IntToStr(aPlanilla.EntrenamientosXCantActivTotal);
  ValoresPlanilla1164_01.Strings[28]:= IntToStr(aPlanilla.EntrenamientosXCantActivUnivMun);
  ValoresPlanilla1164_01.Strings[29]:= IntToStr(aPlanilla.EntrenamientosXCantActivADistancia);
  ValoresPlanilla1164_01.Strings[30]:= IntToStr(aPlanilla.EntrenamientosXCantActivExtranjero);
  ValoresPlanilla1164_01.Strings[31]:= IntToStr(aPlanilla.EntrenamientosXCantParticipTotal);
  ValoresPlanilla1164_01.Strings[32]:= IntToStr(aPlanilla.EntrenamientosXCantParticipMujeres);
  ValoresPlanilla1164_01.Strings[33]:= IntToStr(aPlanilla.EntrenamientosXCantParticipExtranjeros);
  ValoresPlanilla1164_01.Strings[34]:= IntToStr(aPlanilla.EntrenamientosXCantParticipProfTC);
  ValoresPlanilla1164_01.Strings[35]:= IntToStr(aPlanilla.EntrenamientosXCantParticipProfTP);
  ValoresPlanilla1164_01.Strings[36]:= IntToStr(aPlanilla.EntrenamientosXCantParticipUnivMun);
  ValoresPlanilla1164_01.Strings[37]:= IntToStr(aPlanilla.EntrenamientosXCantParticipADistancia);
  ValoresPlanilla1164_01.Strings[38]:= IntToStr(aPlanilla.EntrenamientosXCantGradTotal);
  ValoresPlanilla1164_01.Strings[39]:= IntToStr(aPlanilla.EntrenamientosXCantGradMujeres);
  ValoresPlanilla1164_01.Strings[40]:= IntToStr(aPlanilla.EntrenamientosXCantGradExtranjeros);
  ValoresPlanilla1164_01.Strings[41]:= IntToStr(aPlanilla.EntrenamientosXCantGradProfTC);
  ValoresPlanilla1164_01.Strings[42]:= IntToStr(aPlanilla.EntrenamientosXCantGradProfTP);

  //Cursos
  ValoresPlanilla1164_01.Strings[43]:= IntToStr(aPlanilla.CursosXCantActivTotal);
  ValoresPlanilla1164_01.Strings[44]:= IntToStr(aPlanilla.CursosXCantActivUnivMun);
  ValoresPlanilla1164_01.Strings[45]:= IntToStr(aPlanilla.CursosXCantActivADistancia);
  ValoresPlanilla1164_01.Strings[46]:= IntToStr(aPlanilla.CursosXCantActivExtranjero);
  ValoresPlanilla1164_01.Strings[47]:= IntToStr(aPlanilla.CursosXCantParticipTotal);
  ValoresPlanilla1164_01.Strings[48]:= IntToStr(aPlanilla.CursosXCantParticipMujeres);
  ValoresPlanilla1164_01.Strings[49]:= IntToStr(aPlanilla.CursosXCantParticipExtranjeros);
  ValoresPlanilla1164_01.Strings[50]:= IntToStr(aPlanilla.CursosXCantParticipProfTC);
  ValoresPlanilla1164_01.Strings[51]:= IntToStr(aPlanilla.CursosXCantParticipProfTP);
  ValoresPlanilla1164_01.Strings[52]:= IntToStr(aPlanilla.CursosXCantParticipUnivMun);
  ValoresPlanilla1164_01.Strings[53]:= IntToStr(aPlanilla.CursosXCantParticipADistancia);
  ValoresPlanilla1164_01.Strings[54]:= IntToStr(aPlanilla.CursosXCantGradTotal);
  ValoresPlanilla1164_01.Strings[55]:= IntToStr(aPlanilla.CursosXCantGradMujeres);
  ValoresPlanilla1164_01.Strings[56]:= IntToStr(aPlanilla.CursosXCantGradExtranjeros);
  ValoresPlanilla1164_01.Strings[57]:= IntToStr(aPlanilla.CursosXCantGradProfTC);
  ValoresPlanilla1164_01.Strings[58]:= IntToStr(aPlanilla.CursosXCantGradProfTP);

  //SubTotal II
  ValoresPlanilla1164_01.Strings[59]:= IntToStr(aPlanilla.SubTotal2XCantActivTotal);
  ValoresPlanilla1164_01.Strings[60]:= IntToStr(aPlanilla.SubTotal2XCantActivUnivMun);
  ValoresPlanilla1164_01.Strings[61]:= IntToStr(aPlanilla.SubTotal2XCantActivADistancia);
  ValoresPlanilla1164_01.Strings[62]:= IntToStr(aPlanilla.SubTotal2XCantActivExtranjero);
  ValoresPlanilla1164_01.Strings[63]:= IntToStr(aPlanilla.SubTotal2XCantParticipTotal);
  ValoresPlanilla1164_01.Strings[64]:= IntToStr(aPlanilla.SubTotal2XCantParticipMujeres);
  ValoresPlanilla1164_01.Strings[65]:= IntToStr(aPlanilla.SubTotal2XCantParticipExtranjeros);
  ValoresPlanilla1164_01.Strings[66]:= IntToStr(aPlanilla.SubTotal2XCantParticipProfTC);
  ValoresPlanilla1164_01.Strings[67]:= IntToStr(aPlanilla.SubTotal2XCantParticipProfTP);
  ValoresPlanilla1164_01.Strings[68]:= IntToStr(aPlanilla.SubTotal2XCantParticipUnivMun);
  ValoresPlanilla1164_01.Strings[69]:= IntToStr(aPlanilla.SubTotal2XCantParticipADistancia);
  ValoresPlanilla1164_01.Strings[70]:= IntToStr(aPlanilla.SubTotal2XCantGradTotal);
  ValoresPlanilla1164_01.Strings[71]:= IntToStr(aPlanilla.SubTotal2XCantGradMujeres);
  ValoresPlanilla1164_01.Strings[72]:= IntToStr(aPlanilla.SubTotal2XCantGradExtranjeros);
  ValoresPlanilla1164_01.Strings[73]:= IntToStr(aPlanilla.SubTotal2XCantGradProfTC);
  ValoresPlanilla1164_01.Strings[74]:= IntToStr(aPlanilla.SubTotal2XCantGradProfTP);


  //Sección II: Postgrado Académico

  //Doctorados
  ValoresPlanilla1164_01.Strings[75]:= IntToStr(aPlanilla.DoctoradosXCantActivTotal);
  ValoresPlanilla1164_01.Strings[76]:= IntToStr(aPlanilla.DoctoradosXCantActivUnivMun);
  ValoresPlanilla1164_01.Strings[77]:= IntToStr(aPlanilla.DoctoradosXCantActivADistancia);
  ValoresPlanilla1164_01.Strings[78]:= IntToStr(aPlanilla.DoctoradosXCantActivExtranjero);
  ValoresPlanilla1164_01.Strings[79]:= IntToStr(aPlanilla.DoctoradosXCantParticipTotal);
  ValoresPlanilla1164_01.Strings[80]:= IntToStr(aPlanilla.DoctoradosXCantParticipMujeres);
  ValoresPlanilla1164_01.Strings[81]:= IntToStr(aPlanilla.DoctoradosXCantParticipExtranjeros);
  ValoresPlanilla1164_01.Strings[82]:= IntToStr(aPlanilla.DoctoradosXCantParticipProfTC);
  ValoresPlanilla1164_01.Strings[83]:= IntToStr(aPlanilla.DoctoradosXCantParticipProfTP);
  ValoresPlanilla1164_01.Strings[84]:= IntToStr(aPlanilla.DoctoradosXCantParticipUnivMun);
  ValoresPlanilla1164_01.Strings[85]:= IntToStr(aPlanilla.DoctoradosXCantParticipADistancia);
  ValoresPlanilla1164_01.Strings[86]:= IntToStr(aPlanilla.DoctoradosXCantGradTotal);
  ValoresPlanilla1164_01.Strings[87]:= IntToStr(aPlanilla.DoctoradosXCantGradMujeres);
  ValoresPlanilla1164_01.Strings[88]:= IntToStr(aPlanilla.DoctoradosXCantGradExtranjeros);
  ValoresPlanilla1164_01.Strings[89]:= IntToStr(aPlanilla.DoctoradosXCantGradProfTC);
  ValoresPlanilla1164_01.Strings[90]:= IntToStr(aPlanilla.DoctoradosXCantGradProfTP);

  //Especialidades
  ValoresPlanilla1164_01.Strings[91]:= IntToStr(aPlanilla.EspecialidadesXCantActivTotal);
  ValoresPlanilla1164_01.Strings[92]:= IntToStr(aPlanilla.EspecialidadesXCantActivUnivMun);
  ValoresPlanilla1164_01.Strings[93]:= IntToStr(aPlanilla.EspecialidadesXCantActivADistancia);
  ValoresPlanilla1164_01.Strings[94]:= IntToStr(aPlanilla.EspecialidadesXCantActivExtranjero);
  ValoresPlanilla1164_01.Strings[95]:= IntToStr(aPlanilla.EspecialidadesXCantParticipTotal);
  ValoresPlanilla1164_01.Strings[96]:= IntToStr(aPlanilla.EspecialidadesXCantParticipMujeres);
  ValoresPlanilla1164_01.Strings[97]:= IntToStr(aPlanilla.EspecialidadesXCantParticipExtranjeros);
  ValoresPlanilla1164_01.Strings[98]:= IntToStr(aPlanilla.EspecialidadesXCantParticipProfTC);
  ValoresPlanilla1164_01.Strings[99]:= IntToStr(aPlanilla.EspecialidadesXCantParticipProfTP);
  ValoresPlanilla1164_01.Strings[100]:= IntToStr(aPlanilla.EspecialidadesXCantParticipUnivMun);
  ValoresPlanilla1164_01.Strings[101]:= IntToStr(aPlanilla.EspecialidadesXCantParticipADistancia);
  ValoresPlanilla1164_01.Strings[102]:= IntToStr(aPlanilla.EspecialidadesXCantGradTotal);
  ValoresPlanilla1164_01.Strings[103]:= IntToStr(aPlanilla.EspecialidadesXCantGradMujeres);
  ValoresPlanilla1164_01.Strings[104]:= IntToStr(aPlanilla.EspecialidadesXCantGradExtranjeros);
  ValoresPlanilla1164_01.Strings[105]:= IntToStr(aPlanilla.EspecialidadesXCantGradProfTC);
  ValoresPlanilla1164_01.Strings[106]:= IntToStr(aPlanilla.EspecialidadesXCantGradProfTP);

  //Maestrías
  ValoresPlanilla1164_01.Strings[107]:= IntToStr(aPlanilla.MaestriasXCantActivTotal);
  ValoresPlanilla1164_01.Strings[108]:= IntToStr(aPlanilla.MaestriasXCantActivUnivMun);
  ValoresPlanilla1164_01.Strings[109]:= IntToStr(aPlanilla.MaestriasXCantActivADistancia);
  ValoresPlanilla1164_01.Strings[110]:= IntToStr(aPlanilla.MaestriasXCantActivExtranjero);
  ValoresPlanilla1164_01.Strings[111]:= IntToStr(aPlanilla.MaestriasXCantParticipTotal);
  ValoresPlanilla1164_01.Strings[112]:= IntToStr(aPlanilla.MaestriasXCantParticipMujeres);
  ValoresPlanilla1164_01.Strings[113]:= IntToStr(aPlanilla.MaestriasXCantParticipExtranjeros);
  ValoresPlanilla1164_01.Strings[114]:= IntToStr(aPlanilla.MaestriasXCantParticipProfTC);
  ValoresPlanilla1164_01.Strings[115]:= IntToStr(aPlanilla.MaestriasXCantParticipProfTP);
  ValoresPlanilla1164_01.Strings[116]:= IntToStr(aPlanilla.MaestriasXCantParticipUnivMun);
  ValoresPlanilla1164_01.Strings[117]:= IntToStr(aPlanilla.MaestriasXCantParticipADistancia);
  ValoresPlanilla1164_01.Strings[118]:= IntToStr(aPlanilla.MaestriasXCantGradTotal);
  ValoresPlanilla1164_01.Strings[119]:= IntToStr(aPlanilla.MaestriasXCantGradMujeres);
  ValoresPlanilla1164_01.Strings[120]:= IntToStr(aPlanilla.MaestriasXCantGradExtranjeros);
  ValoresPlanilla1164_01.Strings[121]:= IntToStr(aPlanilla.MaestriasXCantGradProfTC);
  ValoresPlanilla1164_01.Strings[122]:= IntToStr(aPlanilla.MaestriasXCantGradProfTP);

  //SubTotal III
  ValoresPlanilla1164_01.Strings[123]:= IntToStr(aPlanilla.SubTotal3XCantActivTotal);
  ValoresPlanilla1164_01.Strings[124]:= IntToStr(aPlanilla.SubTotal3XCantActivUnivMun);
  ValoresPlanilla1164_01.Strings[125]:= IntToStr(aPlanilla.SubTotal3XCantActivADistancia);
  ValoresPlanilla1164_01.Strings[126]:= IntToStr(aPlanilla.SubTotal3XCantActivExtranjero);
  ValoresPlanilla1164_01.Strings[127]:= IntToStr(aPlanilla.SubTotal3XCantParticipTotal);
  ValoresPlanilla1164_01.Strings[128]:= IntToStr(aPlanilla.SubTotal3XCantParticipMujeres);
  ValoresPlanilla1164_01.Strings[129]:= IntToStr(aPlanilla.SubTotal3XCantParticipExtranjeros);
  ValoresPlanilla1164_01.Strings[130]:= IntToStr(aPlanilla.SubTotal3XCantParticipProfTC);
  ValoresPlanilla1164_01.Strings[131]:= IntToStr(aPlanilla.SubTotal3XCantParticipProfTP);
  ValoresPlanilla1164_01.Strings[132]:= IntToStr(aPlanilla.SubTotal3XCantParticipUnivMun);
  ValoresPlanilla1164_01.Strings[133]:= IntToStr(aPlanilla.SubTotal3XCantParticipADistancia);
  ValoresPlanilla1164_01.Strings[134]:= IntToStr(aPlanilla.SubTotal3XCantGradTotal);
  ValoresPlanilla1164_01.Strings[135]:= IntToStr(aPlanilla.SubTotal3XCantGradMujeres);
  ValoresPlanilla1164_01.Strings[136]:= IntToStr(aPlanilla.SubTotal3XCantGradExtranjeros);
  ValoresPlanilla1164_01.Strings[137]:= IntToStr(aPlanilla.SubTotal3XCantGradProfTC);
  ValoresPlanilla1164_01.Strings[138]:= IntToStr(aPlanilla.SubTotal3XCantGradProfTP);


  //Total
  ValoresPlanilla1164_01.Strings[139]:= IntToStr(aPlanilla.TotalXCantActivTotal);
  ValoresPlanilla1164_01.Strings[140]:= IntToStr(aPlanilla.TotalXCantActivUnivMun);
  ValoresPlanilla1164_01.Strings[141]:= IntToStr(aPlanilla.TotalXCantActivADistancia);
  ValoresPlanilla1164_01.Strings[142]:= IntToStr(aPlanilla.TotalXCantActivExtranjero);
  ValoresPlanilla1164_01.Strings[143]:= IntToStr(aPlanilla.TotalXCantParticipTotal);
  ValoresPlanilla1164_01.Strings[144]:= IntToStr(aPlanilla.TotalXCantParticipMujeres);
  ValoresPlanilla1164_01.Strings[145]:= IntToStr(aPlanilla.TotalXCantParticipExtranjeros);
  ValoresPlanilla1164_01.Strings[146]:= IntToStr(aPlanilla.TotalXCantParticipProfTC);
  ValoresPlanilla1164_01.Strings[147]:= IntToStr(aPlanilla.TotalXCantParticipProfTP);
  ValoresPlanilla1164_01.Strings[148]:= IntToStr(aPlanilla.TotalXCantParticipUnivMun);
  ValoresPlanilla1164_01.Strings[149]:= IntToStr(aPlanilla.TotalXCantParticipADistancia);
  ValoresPlanilla1164_01.Strings[150]:= IntToStr(aPlanilla.TotalXCantGradTotal);
  ValoresPlanilla1164_01.Strings[151]:= IntToStr(aPlanilla.TotalXCantGradMujeres);
  ValoresPlanilla1164_01.Strings[152]:= IntToStr(aPlanilla.TotalXCantGradExtranjeros);
  ValoresPlanilla1164_01.Strings[153]:= IntToStr(aPlanilla.TotalXCantGradProfTC);
  ValoresPlanilla1164_01.Strings[154]:= IntToStr(aPlanilla.TotalXCantGradProfTP);
end;



procedure TFicheroPlanilla1164_01.SalvarValoresDePlanilla1164_01ExtraidaDesdeFichero(aPath: String);
begin
  //Salvo el fichero de valores de la planilla 1164-01
  //FZoomImagenSimulacionImagenes.SaveToFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\' + aFolderName + '\Zoom\Zoom.txt');
  FValoresPlanilla1164_01.SaveToFile(aPath);
end;



function TFicheroPlanilla1164_01.ElFicheroEstaEnBuenEstado: Boolean;
var
  cadena: String;
  Estado: Boolean;
  i: Integer;
  Label Salida;
begin
  //Inicializo el estado del fichero como OK
  Estado:= True;

  //Recibo la linea del año (la primera)
  cadena:= ValoresPlanilla1164_01.Strings[0];

  //Verifico el estado del año en la planilla
  if (   StrToIntDef(Cadena, -1) = -1   )
    then
      begin
        //El fichero está en mal estado
        Estado:= False;

        //Borro el valor anterior, guardado en la 1ra linea cargada temporalmente
        Delete(cadena, 0, length(cadena));

        //Salgo del ciclo y voy a la salida
        goto Salida;
      end;
  
  //Recorro los 155 valores numericos (enteros) de la planilla
  for i:= 8 to 154 do
    begin
      //Recibo la linea especificada por 'i'
      cadena:= ValoresPlanilla1164_01.Strings[i];

      //Verifico el estado de la cadena encontrada en la linea
      if (   StrToIntDef(Cadena, -1) = -1   )
        then
          begin
            //El fichero está en mal estado
            Estado:= False;

            //Borro el valor anterior, guardado en la 1ra linea cargada temporalmente
            Delete(cadena, 0, length(cadena));

            //Salgo del ciclo y voy a la salida
            goto Salida;
          end;

      //Borro el valor anterior, guardado en la 1ra linea cargada temporalmente
      Delete(cadena, 0, length(cadena));          
    end;

  //Etiqueta de salida
  Salida:

  //Emito el resultado
  Result:= Estado;
end;



end.
