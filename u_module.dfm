object DM: TDM
  OldCreateOrder = False
  Left = 244
  Top = 211
  Height = 504
  Width = 616
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\Tu' +
      'gas\Tugas RPL\Kelas XII\Kerja Proyek\Perpustakaan_SD\DB.mdb;Mode' +
      '=ReadWrite;Persist Security Info=False;Jet OLEDB:System database' +
      '="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Je' +
      't OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLED' +
      'B:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1' +
      ';Jet OLEDB:New Database Password="";Jet OLEDB:Create System Data' +
      'base=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy' +
      ' Locale on Compact=False;Jet OLEDB:Compact Without Replica Repai' +
      'r=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 24
  end
  object ADOdatabuku: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_databuku'
    Left = 128
    Top = 24
  end
  object ADOdatasiswa: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_anggota'
    Left = 128
    Top = 80
  end
  object ADOpeminjaman: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_peminjaman'
    Left = 128
    Top = 136
  end
  object ADOpengembalian: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_pengembalian'
    Left = 128
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = ADOdatabuku
    Left = 216
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = ADOdatasiswa
    Left = 216
    Top = 80
  end
  object DataSource3: TDataSource
    DataSet = ADOpeminjaman
    Left = 216
    Top = 136
  end
  object DataSource4: TDataSource
    DataSet = ADOpengembalian
    Left = 216
    Top = 200
  end
  object ADOpetugas: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_petugas'
    Left = 128
    Top = 264
  end
  object DataSource5: TDataSource
    DataSet = ADOpetugas
    Left = 216
    Top = 264
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 296
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery1
    Left = 128
    Top = 328
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery1
    Left = 216
    Top = 328
  end
  object DataSource8: TDataSource
    DataSet = ADOQuery2
    Left = 128
    Top = 392
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 352
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 24
    Top = 408
  end
  object DataSource9: TDataSource
    DataSet = ADOQuery2
    Left = 216
    Top = 392
  end
  object RDS_Laporan: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery1
    Left = 320
    Top = 32
  end
  object RV_Peminjaman: TRvProject
    Engine = SysPinjam
    ProjectFile = 
      'D:\Tugas\Tugas RPL\Kelas XII\Kerja Proyek\Perpustakaan_SD\Lapora' +
      'nPeminjaman.rav'
    Left = 400
    Top = 32
  end
  object RV_Pengembalian: TRvProject
    Engine = SysKembali
    ProjectFile = 
      'D:\Tugas\Tugas RPL\Kelas XII\Kerja Proyek\Perpustakaan_SD\Lapora' +
      'nPengembalian.rav'
    Left = 400
    Top = 96
  end
  object SysPinjam: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 472
    Top = 32
  end
  object SysKembali: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 480
    Top = 96
  end
end
