object Form1: TForm1
  Left = 206
  Top = 51
  Width = 928
  Height = 480
  Caption = 'SISTEM INFORMASI KESEHATAN SEKOLAH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object rpnlp1: TRaPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 65
    Align = alTop
    TabOrder = 0
    object rlbl5: TRaLabel
      Left = 232
      Top = 24
      Width = 593
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Caption = 'SISTEM INFORMASI KESEHATAN SEKOLAH'
    end
  end
  object rpnlp2: TRaPanel
    Left = 0
    Top = 400
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object rpnlp3: TRaPanel
    Left = 0
    Top = 65
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 2
    object btnbgurupiket: TRaButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'GURU PIKET'
      TabOrder = 0
      OnClick = btnbgurupiketClick
    end
    object btnbterapi: TRaButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Caption = 'TERAPI'
      TabOrder = 1
      OnClick = btnbterapiClick
    end
    object btnb1: TRaButton
      Left = 192
      Top = 8
      Width = 129
      Height = 25
      Caption = 'HASIL PEMERIKSAAN'
      TabOrder = 2
      OnClick = btnb1Click
    end
    object btnb2: TRaButton
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      Caption = 'PETUGAS'
      TabOrder = 3
      OnClick = btnb2Click
    end
    object btnb3: TRaButton
      Left = 424
      Top = 8
      Width = 75
      Height = 25
      Caption = 'PUSKESMAS'
      TabOrder = 4
      OnClick = btnb3Click
    end
    object btnb4: TRaButton
      Left = 512
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SISWA'
      TabOrder = 5
      OnClick = btnb4Click
    end
    object btnb5: TRaButton
      Left = 600
      Top = 8
      Width = 113
      Height = 25
      Caption = 'TINDAK LANJUT'
      TabOrder = 6
      OnClick = btnb5Click
    end
    object btnb6: TRaButton
      Left = 728
      Top = 8
      Width = 75
      Height = 25
      Caption = 'WALI'
      TabOrder = 7
      OnClick = btnb6Click
    end
  end
  object rtbcntrltab: TRaTabControl
    Left = 0
    Top = 106
    Width = 912
    Height = 294
    ActiveTab = rtbsht_guru_piket
    Align = alClient
    Color = clWhite
    object rtbsht_home: TRaTabSheet
      Title.Caption = 'rtbsht_home'
    end
    object rtbsht_guru_piket: TRaTabSheet
      Title.Caption = 'rtbsht_guru_piket'
      object rdteidguru: TRaEdit
        Left = 160
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object rdteidtindakanguru: TRaEdit
        Left = 160
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object rdtenamaguru: TRaEdit
        Left = 160
        Top = 168
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object rdtejadwal: TRaEdit
        Left = 160
        Top = 136
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object rdbgrdtblguru: TRaDBGrid
        Left = 312
        Top = 72
        Width = 577
        Height = 113
        TabOrder = 9
        OnClick = rdbgrdtblguruClick
        DataSource = dsguru
        Columns = <
          item
            Title.Caption = 'Id_Gurupiket'
            Width = 150
            FieldName = 'Id_Gurupiket'
          end
          item
            Title.Caption = 'Id_tindakan'
            Width = 150
            FieldName = 'Id_tindakan'
          end
          item
            Title.Caption = 'Jadwal'
            Width = 150
            FieldName = 'Jadwal'
          end
          item
            Title.Caption = 'Nama_Gurupiket'
            Width = 150
            FieldName = 'Nama_Gurupiket'
          end>
      end
      object rdtecariguru: TRaEdit
        Left = 376
        Top = 200
        Width = 513
        Height = 21
        TabOrder = 10
        OnChange = rdtecariguruChange
      end
      object btnbsaveguru: TRaButton
        Left = 16
        Top = 240
        Width = 75
        Height = 25
        Caption = 'SAVE'
        TabOrder = 11
        OnClick = btnbsaveguruClick
      end
      object btnbubahguru: TRaButton
        Left = 104
        Top = 240
        Width = 75
        Height = 25
        Caption = 'UBAH'
        TabOrder = 12
        OnClick = btnbubahguruClick
      end
      object btnbhapusguru: TRaButton
        Left = 192
        Top = 240
        Width = 75
        Height = 25
        Caption = 'HAPUS'
        TabOrder = 13
        OnClick = btnbhapusguruClick
      end
      object btnbcetakguru: TRaButton
        Left = 280
        Top = 240
        Width = 75
        Height = 25
        Caption = 'CETAK'
        TabOrder = 14
        OnClick = btnbcetakguruClick
      end
      object rlbl6: TRaLabel
        Left = 8
        Top = 72
        Width = 89
        Height = 17
        Caption = 'ID GURU PIKET'
      end
      object rlbl7: TRaLabel
        Left = 8
        Top = 104
        Width = 89
        Height = 17
        Caption = 'ID TINDAKAN'
      end
      object rlbl8: TRaLabel
        Left = 8
        Top = 136
        Width = 89
        Height = 17
        Caption = 'JADWAL'
      end
      object rlbl9: TRaLabel
        Left = 8
        Top = 168
        Width = 89
        Height = 17
        Caption = 'NAMA GRU PIKET'
      end
      object rlbl10: TRaLabel
        Left = 312
        Top = 200
        Width = 89
        Height = 17
        Caption = 'CARI'
      end
    end
    object rtbsht_terapi: TRaTabSheet
      Title.Caption = 'rtbsht_terapi'
      object rdteidterapi: TRaEdit
        Left = 160
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object rdteidtindakan: TRaEdit
        Left = 160
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object rdtenamaterapi: TRaEdit
        Left = 160
        Top = 136
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object rdtejumlahterapi: TRaEdit
        Left = 160
        Top = 168
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object rdbgrdtblterapi: TRaDBGrid
        Left = 312
        Top = 72
        Width = 425
        Height = 113
        TabOrder = 4
        OnClick = rdbgrdtblterapiClick
        DataSource = dsterapi
        Columns = <
          item
            Title.Caption = 'Id_tindakan'
            Width = 100
            FieldName = 'Id_terapi'
          end
          item
            Title.Caption = 'Id_tindakan'
            Width = 100
            FieldName = 'Id_tindakan'
          end
          item
            Title.Caption = 'Nama_terapi'
            Width = 100
            FieldName = 'Nama_terapi'
          end
          item
            Title.Caption = 'Jumlah'
            Width = 100
            FieldName = 'Jumlah'
          end>
      end
      object btnbsimpanter: TRaButton
        Left = 24
        Top = 232
        Width = 75
        Height = 25
        Caption = 'SIMPAN'
        TabOrder = 5
        OnClick = btnbsimpanterClick
      end
      object btnbubahter: TRaButton
        Left = 112
        Top = 232
        Width = 75
        Height = 25
        Caption = 'UBAH'
        TabOrder = 5
        OnClick = btnbubahterClick
      end
      object btnbbapuster: TRaButton
        Left = 288
        Top = 232
        Width = 75
        Height = 25
        Caption = 'HAPUS'
        TabOrder = 5
        OnClick = btnbbapusterClick
      end
      object btnbcetakter: TRaButton
        Left = 376
        Top = 232
        Width = 75
        Height = 25
        Caption = 'CETAK'
        TabOrder = 5
        OnClick = btnbcetakterClick
      end
      object rlbl1: TRaLabel
        Left = 16
        Top = 72
        Width = 65
        Height = 17
        Caption = 'ID TERAPI'
      end
      object rlbl2: TRaLabel
        Left = 16
        Top = 104
        Width = 65
        Height = 17
        Caption = 'ID TINDAKAN'
      end
      object rlbl3: TRaLabel
        Left = 16
        Top = 136
        Width = 89
        Height = 17
        Caption = 'NAMA TERAPI'
      end
      object rlbl4: TRaLabel
        Left = 16
        Top = 168
        Width = 65
        Height = 17
        Caption = 'JUMLAH'
      end
      object rdtecariterapi: TRaEdit
        Left = 352
        Top = 192
        Width = 385
        Height = 21
        TabOrder = 13
        OnChange = rdtecariterapiChange
      end
      object lbl1: TLabel
        Left = 312
        Top = 192
        Width = 25
        Height = 13
        Caption = 'CARI'
      end
      object btn1: TRaButton
        Left = 200
        Top = 232
        Width = 75
        Height = 25
        Caption = 'CLEAR'
        TabOrder = 15
      end
    end
  end
  object conterapi: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'AutoEncodeStrings=True'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '19630851_wahyudin'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Tugas\semester 5\visual 3\uas\libmysql.dll'
    Left = 80
    Top = 136
  end
  object zqryqryterapi: TZQuery
    Connection = conterapi
    Active = True
    SQL.Strings = (
      'select * from data_terapi')
    Params = <>
    Left = 144
    Top = 136
    object strngfldId_terapi: TStringField
      FieldName = 'Id_terapi'
      Required = True
      Size = 8
    end
    object strngfldId_tindakan: TStringField
      FieldName = 'Id_tindakan'
      Required = True
      Size = 15
    end
    object strngfldNama_terapi: TStringField
      FieldName = 'Nama_terapi'
      Required = True
      Size = 15
    end
    object strngfldJumlah: TStringField
      FieldName = 'Jumlah'
      Required = True
      Size = 3
    end
  end
  object dsterapi: TDataSource
    DataSet = zqryqryterapi
    Left = 216
    Top = 136
  end
  object conguru: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'AutoEncodeStrings=True'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '19630851_wahyudin'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Tugas\semester 5\visual 3\uas\libmysql.dll'
    Left = 288
    Top = 135
  end
  object zqryqryguru: TZQuery
    Connection = conguru
    Active = True
    SQL.Strings = (
      'select * from data_guru_piket')
    Params = <>
    Left = 352
    Top = 135
    object strngfldId_Gurupiket: TStringField
      FieldName = 'Id_Gurupiket'
      Required = True
      Size = 8
    end
    object strngfldId_tindakan1: TStringField
      FieldName = 'Id_tindakan'
      Required = True
      Size = 15
    end
    object strngfldNama_Gurupiket: TStringField
      FieldName = 'Nama_Gurupiket'
      Required = True
      Size = 15
    end
    object strngfldJadwal: TStringField
      FieldName = 'Jadwal'
      Required = True
      Size = 50
    end
  end
  object dsguru: TDataSource
    DataSet = zqryqryguru
    Left = 408
    Top = 135
  end
  object frxDBDatasetguru: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqryqryguru
    BCDToCurrency = False
    Left = 560
    Top = 135
  end
  object frxReportguru: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44575.741577245400000000
    ReportOptions.LastChange = 44575.750691516200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 472
    Top = 135
    Datasets = <
      item
        DataSet = frxDBDatasetguru
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 15.118120000000000000
          Width = 721.890230000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PIKET GURU')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 60.472480000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Guru Piket')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 139.842610000000000000
          Top = 60.472480000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Tindakan')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 544.252320000000000000
          Top = 60.472480000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jadwal')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 287.244280000000000000
          Top = 60.472480000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Guru Piket')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetguru
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Id_Gurupiket"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 139.842610000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Id_tindakan"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 287.244280000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Nama_Gurupiket"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 544.252320000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Jadwal"]')
          ParentFont = False
        end
      end
    end
  end
  object frxReportterapi: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44575.752392083300000000
    ReportOptions.LastChange = 44575.756358553240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 135
    Datasets = <
      item
        DataSet = frxDBDatasetterapi
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN TERAPI')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 79.370130000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Terapi')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 170.078850000000000000
          Top = 79.370130000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Tindakan')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 332.598640000000000000
          Top = 79.370130000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Terapi')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 578.268090000000000000
          Top = 79.370130000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetterapi
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."Id_terapi"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 170.078850000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."Id_tindakan"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 332.598640000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."Nama_terapi"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."Jumlah"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetterapi: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = zqryqryterapi
    BCDToCurrency = False
    Left = 768
    Top = 135
  end
end
