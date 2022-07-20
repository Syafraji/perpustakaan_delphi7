unit u_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, sSkinManager;

type
  TFormLogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    labeljam: TLabel;
    Labeltgl: TLabel;
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses u_module, u_master;

{$R *.dfm}

procedure TFormLogin.BitBtn1Click(Sender: TObject);
begin
 if (Edit1.Text = DM.ADOpetugas.FieldByName('Username').AsString) and (Edit2.Text = DM.ADOpetugas.FieldByName('Password').AsString) then
begin
 ShowMessage('Login Berhasil');
 Edit1.Text:='';
 Edit2.Text:='';
 Master.Visible:=True;
 Master.BitBtn1.Enabled:=False;
 Master.BitBtn2.Enabled:=True;
 Master.BitBtn4.Enabled:=True;
 Master.BitBtn5.Enabled:=True;
 Master.BitBtn6.Enabled:=True;
 Master.BitBtn7.Enabled:=True;
 Master.BitBtn8.Enabled:=True;
 Master.BitBtn9.Enabled:=True;
 Master.BitBtn9.Enabled:=True;
 Master.BitBtn10.Enabled:=True;
 Master.BitBtn11.Enabled:=True;
 FormLogin.Visible:=False;
end else
begin
 ShowMessage('Login Gagal !!');
 Edit1.Text:='';
 Edit2.Text:='';
 Edit1.SetFocus;
end;
end;

procedure TFormLogin.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
begin
 BitBtn1.SetFocus;
end;
end;
procedure TFormLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then
begin
  Edit2.SetFocus;
end
end;

procedure TFormLogin.Timer1Timer(Sender: TObject);
begin
  labeljam.Caption:= TimeToStr(Time());
  Labeltgl.Caption:= FormatDateTime('dddd, dd mmm yyyy',Now);
end;

procedure TFormLogin.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=True then
  begin
  Edit2.PasswordChar:=#0
end else
begin
  if CheckBox1.Checked=False then
begin
  Edit2.PasswordChar:=#42
end;
end;
end;
end.
