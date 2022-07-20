unit u_databuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, RpRave, RpDefine,
  RpCon, RpConDS, jpeg, dxGDIPlusClasses, sSkinManager;

type
  TFormDataBuku = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit5: TEdit;
    Image1: TImage;
    labeljam: TLabel;
    Labeltgl: TLabel;
    Timer1: TTimer;
    Image2: TImage;
    sSkinManager1: TsSkinManager;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    procedure mati;
    procedure hidup;
    procedure kosong;
    procedure awal;
    procedure koreksi;
    procedure mulai;
    procedure nguripne;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataBuku: TFormDataBuku;

implementation
 uses u_module, u_master;
{$R *.dfm}

procedure TFormDataBuku.hidup;
begin
  Edit1.Enabled:=true;
  Edit2.Enabled:=true;
  Edit3.Enabled:=true;
  Edit4.Enabled:=true;
  Edit5.Enabled:=true;
  ComboBox1.Enabled:=true;

  Edit1.Color:=clWindow;
  Edit2.Color:=clWindow;
  Edit3.Color:=clWindow;
  Edit4.Color:=clWindow;
  Edit5.Color:=clWindow;
  ComboBox1.Color:=clWindow;
end;

procedure TFormDataBuku.kosong;
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  ComboBox1.Text:='' ;

end;

procedure TFormDataBuku.mati;
begin
  Edit1.Enabled:=false;
  Edit2.Enabled:=false;
  Edit3.Enabled:=false;
  Edit4.Enabled:=false;
  Edit5.Enabled:=false;
  ComboBox1.Enabled:=false;

  Edit1.Color:=clScrollBar;
  Edit2.Color:=clScrollBar;
  Edit3.Color:=clScrollBar;
  Edit4.Color:=clScrollBar;
  Edit5.Color:=clScrollBar;
  ComboBox1.Color:=clScrollBar;
end;

procedure TFormDataBuku.FormShow(Sender: TObject);
begin
 awal;
 kosong;
 mati;
end;

procedure TFormDataBuku.BitBtn1Click(Sender: TObject);
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
    if (Edit1.Text='') and (Edit2.Text='') and (Edit3.Text='')and(Edit4.Text='') and (ComboBox1.Text='') then
begin
     ShowMessage('GAGAL!!');
     Edit1.SetFocus;
end else
begin
    if DM.ADOdatabuku.Locate('Kode_Buku',Edit1.Text,[])=True then
begin
    DM.ADOdatabuku.Edit;
    DM.ADOdatabuku.FieldByName('Kode_Buku').AsString:=Edit1.Text;
    DM.ADOdatabuku.FieldByName('Judul_Buku').AsString:=Edit2.Text;
    DM.ADOdatabuku.FieldByName('Jenis_Buku').AsString:=ComboBox1.Text;
    DM.ADOdatabuku.FieldByName('Pengarang').AsString:=Edit3.Text;
    DM.ADOdatabuku.FieldByName('Penerbit').AsString:=Edit4.Text;
    DM.ADOdatabuku.FieldByName('Tahun_Terbit').AsString:=Edit5.Text;
    DM.ADOdatabuku.Post;
    ShowMessage('Data Telah Diperbarui');

end else
begin
 DM.ADOdatabuku.Append;
 DM.ADOdatabuku.FieldByName('Kode_Buku').AsString:=Edit1.Text;
 DM.ADOdatabuku.FieldByName('Judul_Buku').AsString:=Edit2.Text;
 DM.ADOdatabuku.FieldByName('Jenis_Buku').AsString:=ComboBox1.Text;
 DM.ADOdatabuku.FieldByName('Pengarang').AsString:=Edit3.Text;
 DM.ADOdatabuku.FieldByName('Penerbit').AsString:=Edit4.Text;
 DM.ADOdatabuku.FieldByName('Tahun_Terbit').AsString:=Edit5.Text;
 DM.ADOdatabuku.Post;
 ShowMessage('Data Telah Disimpan');
end;
end;
end;
end;

procedure TFormDataBuku.BitBtn3Click(Sender: TObject);
begin
 if BitBtn3.Caption='&Batal' then
begin
 FormShow(sender);
end else
begin
 if BitBtn3.Caption='&Keluar' then
begin
 master.Visible:=True;
 FormDataBuku.Visible:=False;
 nguripne;
end;
end;
end;

procedure TFormDataBuku.BitBtn2Click(Sender: TObject);
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
 DM.ADOdatabuku.Delete;
 ShowMessage('Data telah dihapus');
 FormShow(sender);
end else
begin
 FormShow(sender);
end;
end;

procedure TFormDataBuku.Button1Click(Sender: TObject);
begin
 DBGrid1.Visible:=True;

end;

procedure TFormDataBuku.awal;
begin
 BitBtn1.Caption:='&Tambah';
 BitBtn2.Caption:='&Cari';
 BitBtn3.Caption:='&Keluar';
end;

procedure TFormDataBuku.koreksi;
begin
 BitBtn1.Caption:='&Edit';
 BitBtn2.Caption:='&Hapus';
 BitBtn3.Caption:='&Batal';
end;

procedure TFormDataBuku.mulai;
begin
 BitBtn1.Caption:='&Simpan';
 BitBtn2.Caption:='&Batal';
 BitBtn3.Caption:='&Keluar';
end;

procedure TFormDataBuku.FormCreate(Sender: TObject);
begin
 ComboBox1.Items.Add('Pengetahuan');
 ComboBox1.Items.Add('Religi');
 ComboBox1.Items.Add('Kesehatan');
 ComboBox1.Items.Add('Majalah');
end;

procedure TFormDataBuku.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key =#13 then
 if DM.ADOdatabuku.Locate('Kode_Buku',Edit1.Text,[])=true then
begin
 edit1.text:=DM.ADOdatabuku.FieldByName('Kode_Buku').AsString;
 edit2.text:=DM.ADOdatabuku.FieldByName('Judul_Buku').AsString;
 ComboBox1.text:=DM.ADOdatabuku.FieldByName('Jenis_Buku').AsString;
 edit3.text:=DM.ADOdatabuku.FieldByName('Pengarang').AsString;
 edit4.text:=DM.ADOdatabuku.FieldByName('Penerbit').AsString;
 edit5.text:=DM.ADOdatabuku.FieldByName('Tahun_Terbit').AsString;
 koreksi;
end;
end;

procedure TFormDataBuku.nguripne;
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

procedure TFormDataBuku.Timer1Timer(Sender: TObject);
begin
  labeljam.Caption:= TimeToStr(Time());
  Labeltgl.Caption:= FormatDateTime('dddd, dd mmm yyyy',Now);
end;

procedure TFormDataBuku.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then begin
  ComboBox1.SetFocus;
  end
end;

procedure TFormDataBuku.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then begin
  Edit4.SetFocus;
  end
end;

procedure TFormDataBuku.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then begin
  Edit5.SetFocus;
  end
end;

procedure TFormDataBuku.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then begin
  BitBtn1.SetFocus;
  end
end;

procedure TFormDataBuku.ComboBox1Change(Sender: TObject);
begin
  Edit3.SetFocus;
end;

end.
