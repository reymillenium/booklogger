unit UfrmNuevoPuestoDeTrabajo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,

  UPuestoDeTrabajo, UGestionDocente, LbButton,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs;

  
type
  TfrmNuevoPuestoDeTrabajo = class(TForm)
    lblUsuario: TLabel;
    lblNombre: TLabel;
    lblPrimerApellido: TLabel;
    lblSegundoApellido: TLabel;
    lblPrivilegios: TLabel;
    edtNombre: TEdit;
    edtPrimerApellido: TEdit;
    edtSegundoApellido: TEdit;
    ComboBoxPrivilegio: TComboBox;
    edtUsuario: TEdit;
    lblContrasenna: TLabel;
    lblRepetirContrasenna: TLabel;
    edtContrasenna: TEdit;
    edtRepetirContrasenna: TEdit;
    lblbtnAceptar: TLbButton;
    lblbtnLimpiar: TLbButton;
    lblbtnCancelar: TLbButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure edtNombreKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure edtRepetirContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure btnVerificarUsuarioClick(Sender: TObject);

    procedure RellenarPuestoDeTrabajoTemporal;
    procedure btnLimpiarClick(Sender: TObject);
    procedure ComboBoxPrivilegioDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNuevoPuestoDeTrabajo: TfrmNuevoPuestoDeTrabajo;

implementation
var
    BookLogger: TGestionDocente;
    TempPuestoDeTrabajo: TPuestoDeTrabajo;
{$R *.dfm}

procedure TfrmNuevoPuestoDeTrabajo.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevoPuestoDeTrabajo.Close;
end;

procedure TfrmNuevoPuestoDeTrabajo.FormShow(Sender: TObject);
var 
  hMenuHandle : HMENU;
begin
  //frmNuevoPuestoDeTrabajo.Position:= poDesktopCenter;
  //Hago que se visualise la primera opción del ComboBox (Operador)
  frmNuevoPuestoDeTrabajo.ComboBoxPrivilegio.ItemIndex:= 0;

  //Limpio los Edits de la forma
  frmNuevoPuestoDeTrabajo.edtNombre.Clear;
  frmNuevoPuestoDeTrabajo.edtPrimerApellido.Clear;
  frmNuevoPuestoDeTrabajo.edtSegundoApellido.Clear;
  frmNuevoPuestoDeTrabajo.edtUsuario.Clear;
  frmNuevoPuestoDeTrabajo.edtContrasenna.Clear;
  frmNuevoPuestoDeTrabajo.edtRepetirContrasenna.Clear;

  //Pongo el Focus en el primer Edit (el del Nombre)
  frmNuevoPuestoDeTrabajo.edtNombre.SetFocus;

  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmNuevoPuestoDeTrabajo.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;

procedure TfrmNuevoPuestoDeTrabajo.btnAceptarClick(Sender: TObject);
var
  Usuario: String;
  NombreCompleto: String;
  Privilegios: String;
begin
  if (   (edtNombre.Text<>'') and (edtPrimerApellido.Text<>'') and (edtSegundoApellido.Text<>'') and (edtUsuario.Text<>'') and (edtContrasenna.Text<>'') and (edtRepetirContrasenna.Text<>'')  )
    then
      begin
        if (edtContrasenna.Text = edtRepetirContrasenna.Text)
          then
            begin
              if (BookLogger.ExisteElPuestoDeTrabajoConUsuario(edtUsuario.Text) = False)
                then
                  begin
                    //Creo una Cuenta de Usuario temporal
                    TempPuestoDeTrabajo:= TPuestoDeTrabajo.Create;

                    //Relleno la Cuenta de Usuario temporal
                    RellenarPuestoDeTrabajoTemporal;

                    //Llamo al procedimiento que inserta la Cuenta de Usuario
                    BookLogger.InsertarPuestoDeTrabajo(TempPuestoDeTrabajo);

                    //Actualizo el DBGrid de los Puestos de Trabajo
                    BookLogger.MostrarPuestosDeTrabajo;

                    //Relleno los campos que integran la traza
                    Usuario:= TempPuestoDeTrabajo.ID_Usuario;
                    NombreCompleto:= TempPuestoDeTrabajo.Nombre + ' ' + TempPuestoDeTrabajo.PrimerApellido + ' ' + TempPuestoDeTrabajo.SegundoApellido;
                    Privilegios:= TempPuestoDeTrabajo.Privilegios;
                    
                    //Inserto la Traza
                    BookLogger.GuardarTrazaDelSistema('Creó la Cuenta de Usuario ' + '"' + Usuario + '"' + ' con privilegios de ' + Privilegios + ' y perteneciente a ' + NombreCompleto + '.');

                    //Actualizo todas las trazas
                    BookLogger.MostrarTodasLasTrazas;

                    //Destruyo la Cuenta de Usuario temporal
                    TempPuestoDeTrabajo.Destroy;

                    //Cierro la forma
                    frmNuevoPuestoDeTrabajo.Close;
                  end
                    else
                      begin
                        //Application.MessageBox('El usuario tecleado ya existe en la base de datos. Debe utilizar otro.','Error',mb_Ok + mb_IconError);
                        MessageDlg('El usuario tecleado ya existe en la base de datos. Debe utilizar otro.', mtError, [mbOk], 0);
                        edtUsuario.SetFocus;
                      end;
            end
              else
                begin
                  //Application.MessageBox('Las contraseñas no coinciden.','Error',mb_Ok + mb_IconError);
                  MessageDlg('Las contraseñas no coinciden.', mtError, [mbOk], 0);
                  edtContrasenna.SetFocus;
                end;
      end
        else
          begin
            //Application.MessageBox('Faltan datos por entrar.','Error',mb_Ok + mb_IconError);
            MessageDlg('Faltan datos por entrar.', mtError, [mbOk], 0);
          end;


end;

procedure TfrmNuevoPuestoDeTrabajo.edtNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevoPuestoDeTrabajo.edtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevoPuestoDeTrabajo.edtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevoPuestoDeTrabajo.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;



procedure TfrmNuevoPuestoDeTrabajo.edtContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar.Click;
end;



procedure TfrmNuevoPuestoDeTrabajo.edtRepetirContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar.Click;
end;



procedure TfrmNuevoPuestoDeTrabajo.btnVerificarUsuarioClick(Sender: TObject);
begin
  //Verifica que no haya un usuario igual en la base de datos (¡Por programar!)
end;



procedure TfrmNuevoPuestoDeTrabajo.RellenarPuestoDeTrabajoTemporal;
var
  frase: string;
begin
  frase:= edtContrasenna.Text;

  //Procedo a llenar el Cuenta de Usuario temporal con los datos de la forma.
  TempPuestoDeTrabajo.Nombre:= edtNombre.Text;
  TempPuestoDeTrabajo.PrimerApellido:= edtPrimerApellido.Text;
  TempPuestoDeTrabajo.SegundoApellido:= edtSegundoApellido.Text;
  TempPuestoDeTrabajo.ID_Usuario:= edtUsuario.Text;
  TempPuestoDeTrabajo.Contrasenna:= BookLogger.EncriptarSeudoaleatorio(frase);
  TempPuestoDeTrabajo.Privilegios:= ComboBoxPrivilegio.Text;
end;



procedure TfrmNuevoPuestoDeTrabajo.btnLimpiarClick(Sender: TObject);
begin
  //Limpio todos los componentes (menos el ComboBox, que lo pongo en 'Operador')
  edtNombre.Clear;
  edtPrimerApellido.Clear;
  edtSegundoApellido.Clear;
  edtUsuario.Clear;
  ComboBoxPrivilegio.ItemIndex:= 0;
  edtContrasenna.Clear;
  edtRepetirContrasenna.Clear;

  //Me posiciono en el primer Edit, el del nombre
  edtNombre.SetFocus;
end;



procedure TfrmNuevoPuestoDeTrabajo.ComboBoxPrivilegioDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  clStrongRed=TColor($006C6CFF);
begin
  with (Control as TComboBox) do
    begin
      {El primer Item (Operador) en verde pálido y
       el segundo Item (Administrador) en rojo pálido}
      if (Index= 0)
        then
          Canvas.Brush.Color:= clPaleGreen
            else
              Canvas.Brush.Color:=clPaleRed;
      Canvas.FillRect(Rect);
      Canvas.TextOut(Rect.Left,Rect.Top,Items[Index]);
    end; 
end;


procedure TfrmNuevoPuestoDeTrabajo.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



end.
