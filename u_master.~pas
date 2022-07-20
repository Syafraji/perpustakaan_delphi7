unit u_master;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, TabNotBk, sSkinManager, jpeg,
  ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxNavBar2Painter, cxClasses, dxNavBarBase, dxNavBarCollns,
  ImgList, dxNavBar;

type
  TMaster = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    ImageList1: TImageList;
    Group1: TdxNavBarGroup;
    Group2: TdxNavBarGroup;
    Group3: TdxNavBarGroup;
    Group4: TdxNavBarGroup;
    Item3: TdxNavBarItem;
    Item4: TdxNavBarItem;
    Item5: TdxNavBarItem;
    Item6: TdxNavBarItem;
    Item7: TdxNavBarItem;
    Item10: TdxNavBarItem;
    Item11: TdxNavBarItem;
    Image1: TImage;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    Timer1: TTimer;
    labeljam: TLabel;
    Labeltgl: TLabel;
    Item1: TdxNavBarItem;
    Item2: TdxNavBarItem;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Master: TMaster;

implementation

uses
u_databuku, u_datasiswa, u_peminjaman, u_pengembalian, u_login, u_module, u_about,
  u_admin, Laporan_Pinjam, Laporan_Pengembalian;

{$R *.dfm}

procedure TMaster.BitBtn4Click(Sender: TObject);
begin
 Master.Visible:=False;
 FormDataBuku.Visible:=True;
end;

procedure TMaster.BitBtn5Click(Sender: TObject);
begin
 Master.Visible:=False;
 FormDataSiswa.Visible:=True;
end;

procedure TMaster.BitBtn6Click(Sender: TObject);
begin
 Master.Visible:=False;
 FormPeminjaman.Visible:=True;
end;

procedure TMaster.BitBtn7Click(Sender: TObject);
begin
 Master.Visible:=False;
 FormPengembalian.Visible:=True;
end;

procedure TMaster.BitBtn1Click(Sender: TObject);
begin
 FormLogin.Visible:=True;
 Master.Visible:=False;
end;

procedure TMaster.BitBtn8Click(Sender: TObject);
begin
 FormDataBuku.Show;
 Master.Hide;
end;

procedure TMaster.BitBtn9Click(Sender: TObject);
begin
 FormDataSiswa.Show;
 Master.Hide;
end;

procedure TMaster.BitBtn10Click(Sender: TObject);
begin
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('select * from tb_peminjaman');
  DM.ADOQuery1.Open;
  DM.RV_Peminjaman.Execute;
end;

procedure TMaster.BitBtn11Click(Sender: TObject);
begin
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('select * from tb_pengembalian');
  DM.ADOQuery1.Open;
  DM.RV_Pengembalian.Execute;
end;

procedure TMaster.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TMaster.FormShow(Sender: TObject);
begin
  BitBtn2.Enabled:=False;
  BitBtn4.Enabled:=False;
  BitBtn5.Enabled:=False;
  BitBtn6.Enabled:=False;
  BitBtn7.Enabled:=False;
  BitBtn8.Enabled:=False;
  BitBtn9.Enabled:=False;
  BitBtn10.Enabled:=False;
  BitBtn11.Enabled:=False;
end;

procedure TMaster.BitBtn2Click(Sender: TObject);
begin
  BitBtn2.Enabled:=False;
  BitBtn4.Enabled:=False;
  BitBtn5.Enabled:=False;
  BitBtn6.Enabled:=False;
  BitBtn7.Enabled:=False;
  BitBtn8.Enabled:=False;
  BitBtn9.Enabled:=False;
  BitBtn10.Enabled:=False;
  BitBtn11.Enabled:=False;
  BitBtn1.Enabled:=True;
end;

procedure TMaster.BitBtn12Click(Sender: TObject);
begin
 FormAbout.show;
end;

procedure TMaster.BitBtn13Click(Sender: TObject);
begin
 FormAdmin.Show;
end;

procedure TMaster.Timer1Timer(Sender: TObject);
begin
  labeljam.Caption:= TimeToStr(Time());
  Labeltgl.Caption:= FormatDateTime('dddd, dd mmm yyyy',Now);
end;

end.
