unit u_module;

interface

uses
  SysUtils, Classes, DB, ADODB, RpCon, RpConDS, RpDefine, RpRave, RpBase,
  RpSystem;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOdatabuku: TADOTable;
    ADOdatasiswa: TADOTable;
    ADOpeminjaman: TADOTable;
    ADOpengembalian: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    ADOpetugas: TADOTable;
    DataSource5: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource9: TDataSource;
    RDS_Laporan: TRvDataSetConnection;
    RV_Peminjaman: TRvProject;
    RV_Pengembalian: TRvProject;
    SysPinjam: TRvSystem;
    SysKembali: TRvSystem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
