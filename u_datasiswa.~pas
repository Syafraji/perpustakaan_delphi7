unit u_datasiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, Menus, ExtCtrls,
  jpeg, dxGDIPlusClasses;

type
  TFormDataSiswa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    PopupMenu1: TPopupMenu;
    H1: TMenuItem;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    labeljam: TLabel;
    Labeltgl: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Image2: TImage;
    procedure mati;
    procedure hidup;
    procedure kosong;
    procedure awal;
    procedure koreksi;
    procedure mulai;
    procedure nguripne;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataSiswa: TFormDataSiswa;

implementation
uses u_module, u_master;
{$R *.dfm}

{ TFormDataSiswa }

procedure TFormDataSiswa.hidup;
begin
 Edit1.Enabled:=true;
 Edit2.Enabled:=true;
 Edit3.Enabled:=true;
 Edit4.Enabled:=true;
 ComboBox1.Enabled:=True;

 Edit1.Color:=clWindow;
 Edit2.Color:=clWindow;
 Edit3.Color:=clWindow;
 Edit4.Color:=clWindow;
 ComboBox1.Color:=clWindow;
end;

procedure TFormDataSiswa.kosong;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
ComboBox1.Text:='';

end;

procedure TFormDataSiswa.mati;
begin
 Edit1.Enabled:=false;
 Edit2.Enabled:=false;
 Edit3.Enabled:=false;
 Edit4.Enabled:=false;
 ComboBox1.Enabled:=False;

 Edit1.Color:=clScrollBar;
 Edit2.Color:=clScrollBar;
 Edit3.Color:=clScrollBar;
 Edit4.Color:=clScrollBar;
 ComboBox1.Color:=clScrollBar;

end;

procedure TFormDataSiswa.FormShow(Sender: TObject);
begin
 awal;
 kosong;
 mati;
end;

procedure TFormDataSiswa.BitBtn3Click(Sender: TObject);
begin
 if BitBtn3.Caption='&Batal' then
begin
 FormShow(sender);
end else
begin
 if BitBtn3.Caption='&Keluar' then
begin
 master.Visible:=True;
 FormDataSiswa.Visible:=False;
 nguripne;
end;
end;
end;

procedure TFormDataSiswa.H1Click(Sender: TObject);
begin
 DM.ADOdatasiswa.Delete;
end;

procedure TFormDataSiswa.awal;
begin
 BitBtn1.Caption:='&Tambah';
 BitBtn2.Caption:='&Cari';
 BitBtn3.Caption:='&Keluar';
end;

procedure TFormDataSiswa.koreksi;
begin
 BitBtn1.Caption:='&Edit';
 BitBtn2.Caption:='&Hapus';
 BitBtn3.Caption:='&Batal';
end;

procedure TFormDataSiswa.mulai;
begin
 BitBtn1.Caption:='&Simpan';
 BitBtn2.Caption:='&Batal';
 BitBtn3.Caption:='&Keluar';
end;

procedure TFormDataSiswa.FormCreate(Sender: TObject);
begin
ComboBox1.Items.Add('Laki-laki');
ComboBox1.Items.Add('Perempuan');
end;

procedure TFormDataSiswa.BitBtn1Click(Sender: TObject);
begin
If BitBtn1.Caption='&Tambah' then
begin
 hidup;
 mulai;
 Edit1.SetFocus;
end else
 if BitBtn1.Caption='&Edit' then
begin
 hidup;
 mulai;
 Edit1.Enabled:=False;
 Edit2.SetFocus;
end else
 if BitBtn1.Caption='&Simpan' then
begin
 if ((Edit1.Text='') and (Edit2.Text='') and (Edit3.Text='') and (Edit4.Text='') and (ComboBox1.Text='')) then
begin
 ShowMessage('GAGAL');
 Edit1.SetFocus;
end else
begin
 if DM.ADOdatasiswa.Locate('NIS',Edit1.Text,[])=True then
begin
 DM.ADOdatasiswa.Edit;
 DM.ADOdatasiswa.FieldByName('NIS').AsString:=Edit1.Text;
 DM.ADOdatasiswa.FieldByName('Nama').AsString:=Edit2.Text;
 DM.ADOdatasiswa.FieldByName('No_Absen').AsString:=Edit3.Text;
 DM.ADOdatasiswa.FieldByName('Kelas').AsString:=Edit4.Text;
 DM.ADOdatasiswa.FieldByName('Jenis_Kelamin').AsString:=ComboBox1.Text;
 DM.ADOdatasiswa.Post;
 ShowMessage('Data Telah Diperbarui');
end else
begin
 DM.ADOdatasiswa.Append;
 DM.ADOdatasiswa.FieldByName('NIS').AsString:=Edit1.Text;
 DM.ADOdatasiswa.FieldByName('Nama').AsString:=Edit2.Text;
 DM.ADOdatasiswa.FieldByName('No_Absen').AsString:=Edit3.Text;
 DM.ADOdatasiswa.FieldByName('Kelas').AsString:=Edit4.Text;
 DM.ADOdatasiswa.FieldByName('Jenis_Kelamin').AsString:=ComboBox1.Text;
 DM.ADOdatasiswa.Post;
 ShowMessage('Data Telah Disimpan');
end;
end;

end;
end;

procedure TFormDataSiswa.BitBtn2Click(Sender: TObject);
begin
if BitBtn2.Caption='&Cari' then
begin
 mati;
 Edit1.Color:=clWindow;
 mulai;
 Edit1.Enabled:=True;
 Edit1.Setfocus;
end else
 If BitBtn2.Caption='&Hapus' then
begin
 DM.ADOdatasiswa.Delete;
 ShowMessage('Data telah dihapus');
 FormShow(sender);
end else
begin
 FormShow(sender);
end;
end;

procedure TFormDataSiswa.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key =#13 then
 if DM.ADOdatasiswa.Locate('NIS',Edit1.Text,[])=true then
begin
 Edit1.text:=DM.ADOdatasiswa.FieldByName('NIS').AsString;
 Edit2.text:=DM.ADOdatasiswa.FieldByName('Nama').AsString;
 Edit3.text:=DM.ADOdatasiswa.FieldByName('No_Absen').AsString;
 Edit4.text:=DM.ADOdatasiswa.FieldByName('Kelas').AsString;
 ComboBox1.text:=DM.ADOdatasiswa.FieldByName('Jenis_Kelamin').AsString;
 koreksi;
end;
end;

procedure TFormDataSiswa.nguripne;
begin
 Master.BitBtn1.Enabled:=False;
 Master.BitBtn2.Enabled:=True;
 Master.BitBtn3.Enabled:=True;
 Master.BitBtn4.Enabled:=True;
 Master.BitBtn5.Enabled:=True;
 Master.BitBtn6.Enabled:=True;
 Master.BitBtn7.Enabled:=True;
 Master.BitBtn8.Enabled:=True;
 Master.BitBtn9.Enabled:=True;
 Master.BitBtn10.Enabled:=True;
 Master.BitBtn11.Enabled:=True;
end;

procedure TFormDataSiswa.Timer1Timer(Sender: TObject);
begin
  labeljam.Caption:= TimeToStr(Time());
  Labeltgl.Caption:= FormatDateTime('dddd, dd mmm yyyy',Now);
end;

end.
