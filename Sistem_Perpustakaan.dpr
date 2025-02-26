program Sistem_Perpustakaan;

uses
  Forms,
  u_master in 'u_master.pas' {Master},
  u_databuku in 'u_databuku.pas' {FormDataBuku},
  u_peminjaman in 'u_peminjaman.pas' {FormPeminjaman},
  u_pengembalian in 'u_pengembalian.pas' {FormPengembalian},
  u_datasiswa in 'u_datasiswa.pas' {FormDataSiswa},
  u_login in 'u_login.pas' {FormLogin},
  u_module in 'u_module.pas' {DM: TDataModule},
  u_about in 'u_about.pas' {FormAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TMaster, Master);
  Application.CreateForm(TFormDataSiswa, FormDataSiswa);
  Application.CreateForm(TFormPengembalian, FormPengembalian);
  Application.CreateForm(TFormPeminjaman, FormPeminjaman);
  Application.CreateForm(TFormDataBuku, FormDataBuku);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.Run;
end.
