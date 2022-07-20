unit u_admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Menus, Buttons, jpeg, ExtCtrls;

type
  TFormAdmin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Hapus1: TMenuItem;
    Edit3: TMenuItem;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    procedure Hapus1Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdmin: TFormAdmin;

implementation
 uses u_module, u_master;
{$R *.dfm}

procedure TFormAdmin.Hapus1Click(Sender: TObject);
begin
 DM.ADOpetugas.Delete;
end;

procedure TFormAdmin.Edit3Click(Sender: TObject);
begin
 BitBtn1.Enabled:=False;
 Edit1.Text:=DM.ADOpetugas['Username'];
 Edit2.Text:=DM.ADOpetugas['Password'];
 Edit1.SetFocus;
end;

procedure TFormAdmin.BitBtn1Click(Sender: TObject);
begin
 if (Edit1.Text='') and (Edit2.Text='') then
begin
 ShowMessage('Silahkan isi data yang kosong !!');
 Edit1.SetFocus;
end else
begin
 DM.ADOpetugas.Append;
 DM.ADOpetugas.FieldByName('Username').AsString:=Edit1.Text;
 DM.ADOpetugas.FieldByName('Password').AsString:=Edit2.Text;
 DM.ADOpetugas.Post;
 ShowMessage('Data Telah Disimpan');

 Edit1.Text:='';
 Edit2.Text:='';
 Edit1.SetFocus;
 BitBtn2.Enabled:=True;

end;
end;

procedure TFormAdmin.BitBtn2Click(Sender: TObject);
begin
 DM.ADOpetugas.Edit;
 DM.ADOpetugas.FieldByName('Username').AsString:=Edit1.Text;
 DM.ADOpetugas.FieldByName('Password').AsString:=Edit2.Text;
 DM.ADOpetugas.Post;
end;

procedure TFormAdmin.FormShow(Sender: TObject);
begin
 Edit1.Enabled:=False;
 Edit2.Enabled:=False;
 BitBtn1.Enabled:=False;
 BitBtn2.Enabled:=False;
end;

procedure TFormAdmin.BitBtn3Click(Sender: TObject);
begin
 BitBtn1.Enabled:=True;
 BitBtn3.Enabled:=False;
 Edit1.Enabled:=True;
 Edit2.Enabled:=True;
 //Edit1.SetFocus;
end;

end.
