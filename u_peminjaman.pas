unit u_peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, ExtCtrls, jpeg,
  dxGDIPlusClasses;

type
  TFormPeminjaman = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    Button2: TButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Edit5: TEdit;
    Panel3: TPanel;
    DBGrid3: TDBGrid;
    Edit6: TEdit;
    Image1: TImage;
    Edit7: TEdit;
    labeljam: TLabel;
    Labeltgl: TLabel;
    Timer1: TTimer;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    Image2: TImage;
    procedure mati;
    procedure hidup;
    procedure kosong;
    procedure awal;
    procedure koreksi;
    procedure mulai;
    procedure nguripne;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Click(Sender: TObject);
    procedure Edit6Click(Sender: TObject);
    procedure Edit7Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPeminjaman: TFormPeminjaman;

implementation
uses u_module, u_master, u_datasiswa, u_databuku, Laporan_Pinjam, DB;

{$R *.dfm}

{ TFormPeminjaman }

procedure TFormPeminjaman.hidup;
begin
 Edit1.Enabled:=True;
 Edit2.Enabled:=True;
 Edit3.Enabled:=True;
 Edit4.Enabled:=True;
 Edit5.Enabled:=True;
 Edit6.Enabled:=True;
 Edit7.Enabled:=True;
 DateTimePicker1.Enabled:=True;
 Button1.Enabled:=True;
 Button2.Enabled:=True;

 Edit1.Color:=clWindow;
 Edit2.Color:=clWindow;
 Edit3.Color:=clWindow;
 Edit4.Color:=clWindow;
 DateTimePicker1.Color:=clWindow;
end;

procedure TFormPeminjaman.kosong;
begin
 Edit1.Text:='';
 Edit2.Text:='';
 Edit3.Text:='';
 Edit4.Text:='';
 Edit5.Text:='';
 Edit6.Text:='';
 Edit7.Text:='';
end;

procedure TFormPeminjaman.mati;
begin
 Edit1.Enabled:=False;
 Edit2.Enabled:=False;
 Edit3.Enabled:=False;
 Edit4.Enabled:=False;
 Edit5.Enabled:=False;
 Edit6.Enabled:=False;
 Edit7.Enabled:=False;
 DateTimePicker1.Enabled:=False;
 Button1.Enabled:=False;
 Button2.Enabled:=False;

 Edit1.Color:=clScrollBar;
 Edit2.Color:=clScrollBar;
 Edit3.Color:=clScrollBar;
 Edit4.Color:=clScrollBar;
 Edit5.Color:=clScrollBar;
 Edit6.Color:=clScrollBar;
 Edit7.Color:=clScrollBar;
 DateTimePicker1.Color:=clScrollBar;
end;

procedure TFormPeminjaman.BitBtn3Click(Sender: TObject);
begin
 if BitBtn3.Caption='&Batal' then
begin
 mulai;
 kosong;
end else
begin
 if BitBtn3.Caption='&Keluar' then
begin
 master.Visible:=True;
 FormPeminjaman.Visible:=False;
 nguripne;
 kosong;
end;
end;
end;

procedure TFormPeminjaman.FormShow(Sender: TObject);
begin
 awal;
 mati;
 DBGrid2.Visible:=False;
 DBGrid3.Visible:=False;
 

end;

procedure TFormPeminjaman.BitBtn1Click(Sender: TObject);
begin
If BitBtn1.Caption='&Tambah' then
begin
 hidup;
 Edit1.Text:='KP-00'+IntToStr(DM.ADOpeminjaman.RecordCount+1);
 if DM.ADOpeminjaman.Locate('kode_peminjaman',Edit1.Text,[])=true then
begin
 Edit1.Text:='KP-00'+IntToStr(DM.ADOpeminjaman.RecordCount+2);
end else
 Edit1.Text:='KP-00'+IntToStr(DM.ADOpeminjaman.RecordCount+1);
 Edit1.Enabled:=False;
 Edit2.SetFocus;
 mulai;
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
 if DM.ADOpeminjaman.Locate('Kode_Peminjaman',Edit1.Text,[])=True then
begin
 DM.ADOpeminjaman.Edit;
 DM.ADOpeminjaman.FieldByName('Kode_Peminjaman').AsString:=Edit1.Text;
 DM.ADOpeminjaman.FieldByName('Tanggal_Peminjaman').AsString:=DateToStr(NOW());
 DM.ADOpeminjaman.FieldByName('NIS').AsString:=Edit2.Text;
 DM.ADOpeminjaman.FieldByName('Nama_Siswa').AsString:=Edit3.Text;
 DM.ADOpeminjaman.FieldByName('Kode_Buku').AsString:=Edit4.Text;
 DM.ADOpeminjaman.Post;
 ShowMessage('Data Telah Diperbarui');
 kosong;

end else
begin
 DM.ADOpeminjaman.Append;
 DM.ADOpeminjaman.FieldByName('Kode_Peminjaman').AsString:=Edit1.Text;
 DM.ADOpeminjaman.FieldByName('Tanggal_Peminjaman').AsString:=DateToStr(NOW());
 DM.ADOpeminjaman.FieldByName('NIS').AsString:=Edit2.Text;
 DM.ADOpeminjaman.FieldByName('Nama_Siswa').AsString:=Edit3.Text;
 DM.ADOpeminjaman.FieldByName('Kode_Buku').AsString:=Edit4.Text;
 DM.ADOpeminjaman.Post;
 ShowMessage('Data Telah Disimpan');
 Edit1.Text:='';
 Edit2.Text:='';
 Edit3.Text:='';
 Edit4.Text:='';
end;
end;
end;



procedure TFormPeminjaman.awal;
begin
  BitBtn1.Caption:='&Tambah';
  BitBtn2.Caption:='&Cari';
  BitBtn3.Caption:='&Keluar';
  Panel2.Visible:=False;
  Panel3.Visible:=False;
end;

procedure TFormPeminjaman.koreksi;
begin
 BitBtn1.Caption:='&Edit';
 BitBtn2.Caption:='&Hapus';
 BitBtn3.Caption:='&Batal';
end;

procedure TFormPeminjaman.mulai;
begin
 BitBtn1.Caption:='&Simpan';
 BitBtn2.Caption:='&Batal';
 BitBtn3.Caption:='&Keluar';
end;

procedure TFormPeminjaman.BitBtn2Click(Sender: TObject);
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
 DM.ADOpeminjaman.Delete;
 ShowMessage('Data telah dihapus');
 FormShow(sender);
end else
begin
 FormShow(sender);
end;

end;

procedure TFormPeminjaman.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key =#13 then
 if DM.ADOpeminjaman.Locate('Kode_Peminjaman',Edit1.Text,[])=true then
begin
 Edit1.text:=DM.ADOpeminjaman.FieldByName('Kode_Peminjaman').AsString;
 DateTimePicker1.Date:=DM.ADOpeminjaman.FieldByName('Tanggal_Peminjaman').Value;
 Edit2.text:=DM.ADOpeminjaman.FieldByName('NIS').AsString;
 Edit3.text:=DM.ADOpeminjaman.FieldByName('Nama_Siswa').AsString;
 Edit4.text:=DM.ADOpeminjaman.FieldByName('Kode_Buku').AsString;
 koreksi;
end;

end;

procedure TFormPeminjaman.Button1Click(Sender: TObject);
begin
  Panel2.Visible:=True;
  DBGrid2.Visible:=True;
  Edit5.SetFocus;
  Edit5.Color:=clWindow;
  Edit6.Color:=clWindow;
end;

procedure TFormPeminjaman.DBGrid2DblClick(Sender: TObject);
begin
  Edit2.Text:=DM.ADOQuery1['NIS'];
  Edit3.Text:=DM.ADOQuery1['Nama'];
end;

procedure TFormPeminjaman.Button2Click(Sender: TObject);
begin
  Panel3.Visible:=True;
  DBGrid3.Visible:=True;
  Edit7.SetFocus;
  Edit7.Color:=clWindow;
end;

procedure TFormPeminjaman.DBGrid3DblClick(Sender: TObject);
begin
  Edit4.Text:=DM.ADOQuery2['Kode_Buku'];
end;

procedure TFormPeminjaman.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('select * from tb_anggota where NIS like' +QuotedStr('%'+Edit5.Text+'%'));
  DM.ADOQuery1.Open;
end;

procedure TFormPeminjaman.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('select * from tb_anggota where Nama like' +QuotedStr('%'+Edit6.Text+'%'));
  DM.ADOQuery1.Open;
end;

procedure TFormPeminjaman.Edit5Click(Sender: TObject);
begin
  Edit5.Clear;
end;

procedure TFormPeminjaman.Edit6Click(Sender: TObject);
begin
  Edit6.Clear;
end;

procedure TFormPeminjaman.nguripne;
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



procedure TFormPeminjaman.Edit7Click(Sender: TObject);
begin
 Edit7.Clear;
end;

procedure TFormPeminjaman.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
 DM.ADOQuery2.Close;
 DM.ADOQuery2.SQL.Clear;
 DM.ADOQuery2.SQL.Add('select * from tb_databuku where Kode_Buku like' +QuotedStr('%'+Edit7.Text+'%'));
 DM.ADOQuery2.Open;
end;

procedure TFormPeminjaman.Timer1Timer(Sender: TObject);
begin
  labeljam.Caption:= TimeToStr(Time());
  Labeltgl.Caption:= FormatDateTime('dddd, dd mmm yyyy',Now);
end;

procedure TFormPeminjaman.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  DM.ADOQuery3.Close;
  DM.ADOQuery3.SQL.Clear;
  DM.ADOQuery3.SQL.Add('select * from tb_peminjaman where Kode_Peminjaman like' +QuotedStr('%'+Edit5.Text+'%'));
  DM.ADOQuery3.Open;
end;

end.
