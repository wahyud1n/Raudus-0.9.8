unit Unit1;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Dialogs,
  StdCtrls, frxClass, frxDBSet;

type
  TForm1 = class(TRaFormCompatible)
    Label1: TLabel;
    rpnlp1: TRaPanel;
    rlbl5: TRaLabel;
    rpnlp2: TRaPanel;
    rpnlp3: TRaPanel;
    btnbgurupiket: TRaButton;
    btnbterapi: TRaButton;
    btnb1: TRaButton;
    btnb2: TRaButton;
    btnb3: TRaButton;
    btnb4: TRaButton;
    btnb5: TRaButton;
    btnb6: TRaButton;
    rtbcntrltab: TRaTabControl;
    rtbsht_home: TRaTabSheet;
    rtbsht_guru_piket: TRaTabSheet;
    rdteidguru: TRaEdit;
    rdteidtindakanguru: TRaEdit;
    rdtenamaguru: TRaEdit;
    rdtejadwal: TRaEdit;
    rdbgrdtblguru: TRaDBGrid;
    rdtecariguru: TRaEdit;
    btnbsaveguru: TRaButton;
    btnbubahguru: TRaButton;
    btnbhapusguru: TRaButton;
    btnbcetakguru: TRaButton;
    rlbl6: TRaLabel;
    rlbl7: TRaLabel;
    rlbl8: TRaLabel;
    rlbl9: TRaLabel;
    rlbl10: TRaLabel;
    rtbsht_terapi: TRaTabSheet;
    rdteidterapi: TRaEdit;
    rdteidtindakan: TRaEdit;
    rdtenamaterapi: TRaEdit;
    rdtejumlahterapi: TRaEdit;
    rdbgrdtblterapi: TRaDBGrid;
    btnbsimpanter: TRaButton;
    btnbubahter: TRaButton;
    btnbbapuster: TRaButton;
    btnbcetakter: TRaButton;
    rlbl1: TRaLabel;
    rlbl2: TRaLabel;
    rlbl3: TRaLabel;
    rlbl4: TRaLabel;
    rdtecariterapi: TRaEdit;
    lbl1: TLabel;
    conterapi: TZConnection;
    zqryqryterapi: TZQuery;
    strngfldId_terapi: TStringField;
    strngfldId_tindakan: TStringField;
    strngfldNama_terapi: TStringField;
    strngfldJumlah: TStringField;
    dsterapi: TDataSource;
    conguru: TZConnection;
    zqryqryguru: TZQuery;
    strngfldId_Gurupiket: TStringField;
    strngfldId_tindakan1: TStringField;
    strngfldNama_Gurupiket: TStringField;
    strngfldJadwal: TStringField;
    dsguru: TDataSource;
    btn1: TRaButton;
    frxDBDatasetguru: TfrxDBDataset;
    frxReportguru: TfrxReport;
    frxReportterapi: TfrxReport;
    frxDBDatasetterapi: TfrxDBDataset;
    procedure btnbsimpanterClick(Sender: TObject);
    procedure btnbubahterClick(Sender: TObject);
    procedure btnbterapiClick(Sender: TObject);
    procedure btnbbapusterClick(Sender: TObject);
    procedure rdtecariterapiChange(Sender: TObject);
    procedure btnbsaveguruClick(Sender: TObject);
    procedure btnbubahguruClick(Sender: TObject);
    procedure btnbhapusguruClick(Sender: TObject);
    procedure rdbgrdtblguruClick(Sender: TObject);
    procedure rdtecariguruChange(Sender: TObject);
    procedure btnbgurupiketClick(Sender: TObject);
    procedure rdbgrdtblterapiClick(Sender: TObject);
    procedure btnb1Click(Sender: TObject);
    procedure btnb2Click(Sender: TObject);
    procedure btnb3Click(Sender: TObject);
    procedure btnb4Click(Sender: TObject);
    procedure btnb5Click(Sender: TObject);
    procedure btnb6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnbcetakterClick(Sender: TObject);
    procedure btnbcetakguruClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnbsimpanterClick(Sender: TObject);
begin
 if Trim(rdteidterapi.Text)='' Then
  begin
    Beep;
    MessageDlg(' ID Terapi Belum diIsi',mtWarning,[mbOK],0);
    rdteidterapi.SetFocus;
  end else
  if Trim(rdteidtindakan.Text)='' Then
  begin
    Beep;
    MessageDlg(' ID Tindakan Belum diIsi',mtWarning,[mbOK],0);
    rdteidterapi.SetFocus;
  end else
  if Trim(rdtenamaterapi.Text)='' Then
  begin
    Beep;
    MessageDlg(' Nama Terapi Belum diIsi',mtWarning,[mbOK],0);
    rdtenamaterapi.SetFocus;
  end else
  if Trim(rdtejumlahterapi.Text)='' Then
  begin
    Beep;
    MessageDlg(' Jumlah Belum diIsi',mtWarning,[mbOK],0);
    rdtejumlahterapi.SetFocus;
  end else
  if zqryqryterapi.Locate('Id_terapi',rdteidterapi.Text,[]) then
   begin
     Beep;
      MessageDlg(' ID Terapi',mtWarning,[mbOK],0);
      rdteidterapi.Text:=strngfldId_terapi.AsString;
      rdteidtindakan.Text:=strngfldId_tindakan.AsString;
      rdtenamaterapi.Text:=strngfldNama_terapi.AsString;
      rdtejumlahterapi.Text:=strngfldJumlah.AsString;
   end else
   begin
     with zqryqryterapi do
    begin
        Append;
        strngfldId_terapi.AsString:=rdteidterapi.Text;
        strngfldId_tindakan.AsString:=rdteidtindakan.Text;
        strngfldNama_terapi.AsString:=rdtenamaterapi.Text;
        strngfldJumlah.AsString:=rdtejumlahterapi.Text;
        post;
     end;
     MessageDlg(' Data Berhasil Disimpan',mtWarning,[mbOK],0);
   end;
end;

procedure TForm1.btnbubahterClick(Sender: TObject);
begin
if(
      (Trim(rdteidterapi.Text)='') and (Trim(rdteidtindakan.Text)='') and
      (Trim(rdtenamaterapi.Text)='') and (Trim(rdtejumlahterapi.Text)='' )
      ) then
  begin
      MessageDlg(' Pilih Data Dulu Untuk Mengubah',mtWarning,[mbOK],0);
      rdbgrdtblterapi.SetFocus;
  end else
  begin
     with zqryqryterapi do
    begin
      Edit;
      strngfldId_tindakan.AsString:=rdteidtindakan.Text;
      strngfldNama_terapi.AsString:=rdtenamaterapi.Text;
      strngfldJumlah.AsString:=rdtejumlahterapi.Text;
      post;
    end;
     MessageDlg(' Data berhasil diUbah',mtInformation,[mbOK],0);
  end;
end;

procedure TForm1.btnbterapiClick(Sender: TObject);
begin
rtbcntrltab.ActiveTab:=rtbsht_terapi;
end;

procedure TForm1.btnbbapusterClick(Sender: TObject);
begin
if(
      (Trim(rdteidterapi.Text)='') and (Trim(rdteidtindakan.Text)='') and
      (Trim(rdtenamaterapi.Text)='') and (Trim(rdtejumlahterapi.Text)='' )
      ) then
  begin
      MessageDlg(' Pilih Data Dulu Untuk Menghapus',mtWarning,[mbOK],0);
      rdbgrdtblterapi.SetFocus;
  end else
  begin
     with zqryqryterapi do
    begin
      zqryqryterapi.Delete;
      rdteidterapi.Text;
      rdteidtindakan.Text;
      rdtenamaterapi.Text;
      rdtejumlahterapi.Text;
    end;
     MessageDlg(' Data berhasil di Hapus',mtInformation,[mbOK],0);
  end;
end;

procedure TForm1.rdtecariterapiChange(Sender: TObject);
begin
  with zqryqryterapi do
  begin
    SQL.Clear;
    SQL.Text:='select * from data_terapi where Id_terapi like '+QuotedStr('%'+rdtecariterapi.text+'%');
    SQL.Add('or Id_tindakan like '+QuotedStr('%'+rdtecariterapi.text+'%'));
    Open;
  end;
end;

procedure TForm1.btnbsaveguruClick(Sender: TObject);
begin
if Trim(rdteidguru.Text)='' Then
  begin
    Beep;
    MessageDlg(' ID Terapi Belum diIsi',mtWarning,[mbOK],0);
    rdteidguru.SetFocus;
  end else
  if Trim(rdteidtindakanguru.Text)='' Then
  begin
    Beep;
    MessageDlg(' ID Tindakan Belum diIsi',mtWarning,[mbOK],0);
    rdteidtindakanguru.SetFocus;
  end else
  if Trim(rdtenamaguru.Text)='' Then
  begin
    Beep;
    MessageDlg(' Nama Terapi Belum diIsi',mtWarning,[mbOK],0);
    rdtenamaguru.SetFocus;
  end else
  if Trim(rdtejadwal.Text)='' Then
  begin
    Beep;
    MessageDlg(' Jumlah Belum diIsi',mtWarning,[mbOK],0);
    rdtejadwal.SetFocus;
  end else
  if zqryqryguru.Locate('Id_Gurupiket',rdteidguru.Text,[]) then
   begin
     Beep;
      MessageDlg(' ID Terapi',mtWarning,[mbOK],0);
      rdteidguru.Text:=strngfldId_Gurupiket.AsString;
      rdteidtindakanguru.Text:=strngfldId_tindakan1.AsString;
      rdtenamaguru.Text:=strngfldNama_Gurupiket.AsString;
      rdtejadwal.Text:=strngfldJadwal.AsString;
   end else
   begin
     with zqryqryguru do
    begin
        Append;
        strngfldId_Gurupiket.AsString:=rdteidguru.Text;
        strngfldId_tindakan1.AsString:=rdteidtindakanguru.Text;
        strngfldNama_Gurupiket.AsString:=rdtenamaguru.Text;
        strngfldJadwal.AsString:=rdtejadwal.Text;
        post;
     end;
     MessageDlg(' Data Berhasil Disimpan',mtWarning,[mbOK],0);
   end;
end;

procedure TForm1.btnbubahguruClick(Sender: TObject);
begin
if(
      (Trim(rdteidguru.Text)='') and (Trim(rdteidtindakanguru.Text)='') and
      (Trim(rdtenamaguru.Text)='') and (Trim(rdtejadwal.Text)='' )
      ) then
  begin
      MessageDlg(' Pilih Data Dulu Untuk Mengubah',mtWarning,[mbOK],0);
      rdbgrdtblguru.SetFocus;
  end else
  begin
     with zqryqryguru do
    begin
      Edit;
      strngfldId_tindakan1.AsString:=rdteidtindakanguru.Text;
      strngfldNama_Gurupiket.AsString:=rdtenamaguru.Text;
      strngfldJadwal.AsString:=rdtejadwal.Text;
      post;
    end;
     MessageDlg(' Data berhasil diUbah',mtInformation,[mbOK],0);
  end;
end;

procedure TForm1.btnbhapusguruClick(Sender: TObject);
begin
if(
      (Trim(rdteidguru.Text)='') and (Trim(rdteidtindakanguru.Text)='') and
      (Trim(rdtenamaguru.Text)='') and (Trim(rdtejadwal.Text)='' )
      ) then
  begin
      MessageDlg(' Pilih Data Dulu Untuk Menghapus',mtWarning,[mbOK],0);
      rdbgrdtblguru.SetFocus;
  end else
  begin
     with zqryqryterapi do
    begin
      zqryqryguru.Delete;
      rdteidguru.Text;
      rdteidtindakanguru.Text;
      rdtenamaguru.Text;
      rdtejadwal.Text;
    end;
     MessageDlg(' Data berhasil di Hapus',mtInformation,[mbOK],0);
  end;
end;

procedure TForm1.rdbgrdtblguruClick(Sender: TObject);
begin
   rdteidguru.Text:=strngfldId_Gurupiket.AsString;
   rdteidtindakanguru.Text:=strngfldId_tindakan1.AsString;
   rdtenamaguru.Text:=strngfldNama_Gurupiket.AsString;
   rdtejadwal.Text:=strngfldJadwal.AsString;
end;

procedure TForm1.rdtecariguruChange(Sender: TObject);
begin
  with zqryqryguru do
  begin
    SQL.Clear;
    SQL.Text:='select * from data_guru_piket where Id_Gurupiket like '+QuotedStr('%'+rdtecariguru.text+'%');
    SQL.Add('or Id_tindakan like '+QuotedStr('%'+rdtecariguru.text+'%'));
    Open;
  end;
end;

procedure TForm1.btnbgurupiketClick(Sender: TObject);
begin
rtbcntrltab.ActiveTab:=rtbsht_guru_piket;
end;

procedure TForm1.rdbgrdtblterapiClick(Sender: TObject);
begin
  rdteidterapi.Text:=strngfldId_terapi.AsString;
  rdteidtindakan.Text:=strngfldId_tindakan.AsString;
  rdtenamaterapi.Text:=strngfldNama_terapi.AsString;
  rdtejumlahterapi.Text:=strngfldJumlah.AsString;
end;

procedure TForm1.btnb1Click(Sender: TObject);
begin
rtbcntrltab.ActiveTab:=rtbsht_home;
end;

procedure TForm1.btnb2Click(Sender: TObject);
begin
rtbcntrltab.ActiveTab:=rtbsht_home;
end;

procedure TForm1.btnb3Click(Sender: TObject);
begin
rtbcntrltab.ActiveTab:=rtbsht_home;
end;

procedure TForm1.btnb4Click(Sender: TObject);
begin
rtbcntrltab.ActiveTab:=rtbsht_home;
end;

procedure TForm1.btnb5Click(Sender: TObject);
begin
rtbcntrltab.ActiveTab:=rtbsht_home;
end;

procedure TForm1.btnb6Click(Sender: TObject);
begin
rtbcntrltab.ActiveTab:=rtbsht_home;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  rtbsht_guru_piket.TabVisible:=False;
  rtbsht_terapi.TabVisible:=False;
  rtbsht_home.TabVisible:=False;
  rtbcntrltab.ActiveTab:=rtbsht_home;
end;

procedure TForm1.btnbcetakterClick(Sender: TObject);
begin
  frxReportterapi.FileName:=ExtractFilePath(GetModuleName(0))+'/Lap_Terapi.fr3';
  frxReportterapi.ShowReport();
end;

procedure TForm1.btnbcetakguruClick(Sender: TObject);
begin
  frxReportguru.FileName:=ExtractFilePath(GetModuleName(0))+'/Lap_Piket_Guru.fr3';
  frxReportguru.ShowReport();
end;

end.
