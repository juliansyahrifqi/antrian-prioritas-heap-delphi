unit AntrianPrioritasHeap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MmSystem;

const
  maksAntrian=100;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    meja1: TLabel;
    meja2: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panggil1: TButton;
    Panggil2: TButton;
    AmbilPersonal: TButton;
    AmbilBisnis: TButton;
    Panel3: TPanel;
    selanjutnya: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Panel4: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure AmbilPersonalClick(Sender: TObject);
    procedure Panggil1Click(Sender: TObject);
    procedure AmbilBisnisClick(Sender: TObject);
    procedure Panggil2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  antrian: array[1..maksAntrian] of string;
  bantrian:integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender:TObject);
begin
  bantrian:=0;
end;

function parent(i:integer):integer;
begin
  parent:=i div 2;
end;

function anakKiri(i:integer):integer;
begin
  anakKiri:=2*i;
end;

function anakKanan(i:integer):integer;
begin
  anakKanan:=(2*i)+1;
end;

procedure tukar(i:integer; j:integer);
var
  temp:string;
begin
  temp := antrian[i];
  antrian[i]:= antrian[j];
  antrian[j]:= temp;
end;

procedure heap(i:integer); // Menggunakan Algoritma Min Heap ( nilai paling kecil selalu di root )
begin
  if (i <= (bantrian/2)) and (i <= bantrian) then
  begin
    if (antrian[i] > antrian[anakKiri(i)]) or (antrian[i] > antrian[anakKanan(i)]) then
    begin
      if (antrian[anakKiri(i)] < antrian[anakKanan(i)]) then
      begin
        tukar(i,anakKiri(i));
        heap(anakKiri(i));
      end
      else
      begin
        tukar(i,anakKanan(i));
        heap(anakKanan(i));
      end;
    end;
  end;
end;

procedure shiftUp;   // Algoritma Shift-Up
var
  i: integer;
  temp: string;

begin
  i:= bantrian;
  while(i > 1) and (antrian[i div 2] > antrian[i]) do
  begin
    temp := antrian[i];
    antrian[i]:= antrian[i div 2]; // Tukarkan nilai node dengan nilai parent
    antrian[i div 2]:= temp;
    i:=i div 2;
  end;
end;

procedure tambahAntrian(data:string); // Algoritma penyisipan data
begin
    antrian[bantrian+1]:= data; // Simpan elemen setelah data paling akhir
    bantrian:= bantrian+1;      // Banyak simpil ditambah 1
    shiftUp;                    // Lakukan reorganisasi (Shift-Up)
end;

procedure reorganisasi;
var
  i:integer;
begin
  i:= bantrian div 2;
  while(i >= 1)do
  begin
      heap(i);
      i:=i-1;
  end;
end;

function ambil:string;   // Algoritma penghapusan data
var
  data:string;
  i:integer;
begin
   i:=1;
   data:= antrian[i];  // Ambil nilai Heap
   antrian[i]:= antrian[bantrian]; // Ambil nilai node paling akhir dan jadikan nilai root
   bantrian:= bantrian-i; // Banyak simpil dikurang 1
   reorganisasi; // Lakukan proses reorganisasi heap
   ambil:= data;
end;

function terbilang(x:longint):string;
function bilang(x:longint):string;
begin
     case x of
     0:bilang:='';
     1:bilang:='satu';
     2:bilang:='dua';
     3:bilang:='tiga';
     4:bilang:='empat';
     5:bilang:='lima';
     6:bilang:='enam';
     7:bilang:='tujuh';
     8:bilang:='delapan';
     9:bilang:='sembilan';
     10:bilang:='sepuluh';
     11:bilang:='sebelas';
     end;
end;

begin
     if x<12 then
     terbilang := ' ' + bilang(x)

     else if x<20 then
     terbilang:=terbilang(x-10)+'belas'

     else if x<100 then
     terbilang:=terbilang(x div 10)+'puluh'+terbilang(x mod 10)
     else if x<200 then
     terbilang:='seratus'+terbilang(x-100)
     else if x<1000 then
     terbilang:=terbilang(x div 100)+'ratus'+terbilang(x mod 100)
     else if x<2000 then
     terbilang:='seribu'+terbilang(x-1000)
     else if x<1000000 then
     terbilang:=terbilang(x div 1000)+'ribu'+terbilang(x mod 1000)
     else if x<1000000000 then
     terbilang:=terbilang(x div 1000000)+'juta'+terbilang(x mod 1000000)
     else
     terbilang:=terbilang(x div 1000000000)+'milyar'+terbilang(x mod 1000000000);
end;



procedure TForm1.AmbilPersonalClick(Sender: TObject);
var
  noAntri:string;
  i:integer;
begin
    noAntri:='P'+Format('%.3d', [bantrian+1]);  //%.3d format 3 angka desimal (integer)
    tambahAntrian(noAntri);
    ShowMessage('Nomor antrian anda : '+noAntri);
    for i:=1 to bantrian do
      selanjutnya.Caption:=antrian[i-(i-1)];
end;

procedure TForm1.Panggil1Click(Sender: TObject);
var
  nomor:string;
  i:integer;
  namafile:string;
begin
  if(bantrian = 0) then
  begin
    ShowMessage('Tidak ada antrian!');
    meja1.Caption:='-';
    meja2.Caption:='-';
  end
  else
  begin
    nomor:=ambil;
    meja1.Caption:=nomor;
    for i:=1 to bantrian do
      selanjutnya.Caption:=antrian[i-(i-1)];
      if bantrian=0 then
        selanjutnya.Caption:='-';

    playsound('C:\audionumbers\nomor-antrian.wav',0,0);
    for i:=1 to length(nomor) do
    begin
      namafile:='C:\audionumbers\'+copy(nomor,i,1)+'.wav';
      playsound(pchar(namafile),0,0);
    end;
    playsound('C:\audionumbers\silahkan.wav',0,0);
    playsound('C:\audionumbers\meja1.wav',0,0);
  end;
end;

procedure TForm1.AmbilBisnisClick(Sender: TObject);
var
  noAntri:string;
  i:integer;
begin
    noAntri:='B'+Format('%.3d', [bantrian+1]);   // %.3d format 3 angka desimal (integer)
    tambahAntrian(noAntri);
    ShowMessage('Nomor antrian anda : '+noAntri);
    for i:=1 to bantrian do
      selanjutnya.Caption:=antrian[i-(i-1)];
end;


procedure TForm1.Panggil2Click(Sender: TObject);
var
  nomor:string;
  i:integer;
  namafile:string;
begin
  if(bantrian = 0) then
  begin
    ShowMessage('Tidak ada antrian!');
    meja1.Caption:='-';
    meja2.Caption:='-';
    selanjutnya.Caption:='-';
  end
  else
  begin
    nomor:=ambil;
    meja2.Caption:=nomor;
    for i:=1 to bantrian do
      selanjutnya.Caption:=antrian[i-(i-1)];
      if (bantrian = 0) then
        selanjutnya.Caption:='-';

    playsound('C:\audionumbers\nomor-antrian.wav',0,0);
    for i:=1 to length(nomor) do
    begin
      namafile:='C:\audionumbers\'+copy(nomor,i,1)+'.wav';
      playsound(pchar(namafile),0,0);
    end;
    playsound('C:\audionumbers\silahkan.wav',0,0);
    playsound('C:\audionumbers\meja2.wav',0,0);
  end;
end;


end.
