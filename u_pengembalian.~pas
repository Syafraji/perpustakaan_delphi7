unit u_pengembalian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, TabNotBk, Grids, DBGrids, ExtCtrls,
  jpeg, Menus, dxGDIPlusClasses;

type
  TFormPengembalian = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Image1: TImage;
    Edit4: TEdit;
    PopupMenu1: TPopupMenu;
    Hapus1: TMenuItem;
    labeljam: TLabel;
    Labeltgl: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    Image2: TImage;
    procedure mati;
    procedure hidup;
    procedure kosong;
    procedure nguripne;
    procedure DBGrid2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Hapus1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPengembalian: TFormPengembalian;

implementation
uses u_module, u_peminjaman, u_master, Laporan_Pengembalian, DB;
{$R *.dfm}

{ TFormPengembalian }

procedure TFormPengembalian.hidup;
begin
 Edit1.Enabled:=True;
 Edit2.Enabled:=True;
 Edit3.Enabled:=True;
 DateTimePicker1.Enabled:=True;
 BitBtn3.Enabled:=True;
end;

procedure TFormPengembalian.kosong;
begin
 Edit1.Text:='';
 Edit2.Text:='';
 Edit3.Text:='';
 Edit4.Text:='';
end;

procedure TFormPengembalian.mati;
begin
 Edit1.Enabled:=False;
 Edit2.Enabled:=False;
 Edit3.Enabled:=False;
 BitBtn3.Enabled:=False;
 BitBtn1.Enabled:=False;
 DateTimePicker1.Enabled:=False;
end;

procedure TFormPengembalian.DBGrid2DblClick(Sender: TObject);
begin
  Edit1.Text:=DM.ADOPeminjaman['Kode_Peminjaman'];
  Edit2.Text:=DM.ADOpeminjaman['NIS'];
  Edit3.Text:=DM.ADOpeminjaman['Kode_Buku'];
  DateTimePicker1.Date:=DM.ADOpeminjaman['Tanggal_Peminjaman'];
  BitBtn1.Enabled:=True;
  BitBtn3.Enabled:=True;
end;

procedure TFormPengembalian.BitBtn1Click(Sender: TObject);
begin
 DM.ADOpeminjaman.Delete;
 DM.ADOpengembalian.Append;
 DM.ADOpengembalian.FieldByName('Kode_Peminjaman').AsString:=Edit1.Text;
 DM.ADOpengembalian.FieldByName('Tanggal_Pengembalian').AsString:=DateToStr(NOW());
 DM.ADOpengembalian.FieldByName('NIS').AsString:=Edit2.Text;
 DM.ADOpengembalian.FieldByName('Kode_Buku').AsString:=Edit3.Text;
 DM.ADOpengembalian.Post;
 ShowMessage('Data Telah Disimpan');
 kosong;
end;
procedure TFormPengembalian.BitBtn3Click(Sender: TObject);
begin
  mati;  
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
end;

procedure TFormPengembalian.BitBtn4Click(Sender: TObject);
begin
 Master.Visible:=True;
 FormPengembalian.Visible:=False;
 nguripne;
end;

procedure TFormPengembalian.nguripne;
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

procedure TFormPengembalian.Edit4Click(Sender: TObject);
begin
 Edit4.Clear;
end;

procedure TFormPengembalian.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 if key =#13 then
 if DM.ADOpeminjaman.Locate('Kode_Peminjaman',Edit4.Text,[])=true then
begin
 Edit1.Text:=DM.ADOpeminjaman.FieldByName('Kode_Peminjaman').AsString;
 DateTimePicker1.Date:=DM.ADOpeminjaman.FieldByName('Tanggal_Peminjaman').Value;
 Edit2.Text:=DM.ADOpeminjaman.FieldByName('NIS').AsString;
 Edit3.Text:=DM.ADOpeminjaman.FieldByName('Kode_Buku').AsString;
end;
end;
procedure TFormPengembalian.Hapus1Click(Sender: TObject);
begin
 DM.ADOpengembalian.Delete;
end;

procedure TFormPengembalian.Timer1Timer(Sender: TObject);
begin
  labeljam.Caption:= TimeToStr(Time());
  Labeltgl.Caption:= FormatDateTime('dddd, dd mmm yyyy',Now);
end;

procedure TFormPengembalian.FormShow(Sender: TObject);
begin
  Edit4.SetFocus;
  Edit1.Color:=clScrollBar;
  Edit2.Color:=clScrollBar;
  Edit3.Color:=clScrollBar;
  DateTimePicker1.Color:=clScrollBar;
  Edit1.Enabled:=False;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
end;

end.


