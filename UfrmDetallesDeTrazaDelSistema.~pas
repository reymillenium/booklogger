unit UfrmDetallesDeTrazaDelSistema;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls,

  UGestionDocente, UDataModuleControlDelSistema, LbButton;

type
  TfrmDetallesDeTrazasDelSistema = class(TForm)
    Label49: TLabel;
    DBedtNombreUsuario: TDBEdit;
    Label83: TLabel;
    DBedtPrimerApellidoUsuario: TDBEdit;
    Label84: TLabel;
    DBedtSegundoApellidoUsuario: TDBEdit;
    DBedtPrivilegios: TDBEdit;
    Label85: TLabel;
    Label80: TLabel;
    DBedtHoraExacta: TDBEdit;
    Label81: TLabel;
    DBedtNombrePC: TDBEdit;
    Label82: TLabel;
    DBedtNumeroIP: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemoAccionRealizada: TDBMemo;
    Label1: TLabel;
    DBedtFecha: TDBEdit;
    Label2: TLabel;
    DBedtUsuario: TDBEdit;
    lblbtnCerrar: TLbButton;
    procedure FormShow(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetallesDeTrazasDelSistema: TfrmDetallesDeTrazasDelSistema;

implementation

{$R *.dfm}



procedure TfrmDetallesDeTrazasDelSistema.FormShow(Sender: TObject);
var 
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmDetallesDeTrazasDelSistema.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
end;



procedure TfrmDetallesDeTrazasDelSistema.btnCerrarClick(Sender: TObject);
begin
  //Cierro la forma
  frmDetallesDeTrazasDelSistema.Close;
end;



procedure TfrmDetallesDeTrazasDelSistema.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



end.
