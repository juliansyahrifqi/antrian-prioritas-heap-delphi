unit AntrianPrioritasHeap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

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
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

function cekLeaf(i:integer):boolean;
begin
  if (i >= (bantrian/2)) and (i <= bantrian) then
    cekLeaf:=true
  else
    cekLeaf:=false;
end;

procedure tukar(i:integer; j:integer);
var
  temp:string;
begin
  temp:=antrian[i];
  antrian[i]:=antrian[j];
  antrian[j]:=temp;
end;

procedure heap(i:integer);
begin
  if (not cekLeaf(i)) then
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

procedure shiftUp;
var
  i:integer;
  y:string;

begin
  i:=bantrian;
  while(i > 1) and (antrian[i div 2] > antrian[i]) do
  begin
    y := antrian[i];
    antrian[i]:= antrian[i div 2];
    antrian[i div 2]:=y;
    i:=i div 2;
  end;
end;

procedure tambahData(data:string);
var
  current:integer;
begin
    antrian[bantrian+1]:=data;
    current:=bantrian;
    bantrian:=bantrian+1;
    shiftUp;
end;

procedure reorganisasi;
var
  i:integer;
  tengah:integer;
begin
  i:=bantrian div 2;
  while(i >= 1)do
  begin
      heap(i);
      i:=i-1;
  end;
end;

function ambil:string;
var
  data:string;
begin
   data:=antrian[1];
   antrian[1]:=antrian[bantrian];
   bantrian:=bantrian-1;
   //buatHeap(1);
   //siftDown(1);
   reorganisasi;
   ambil:=data;
end;


procedure TForm1.Button3Click(Sender: TObject);
var
  urut:string;
begin
  if(bantrian = 0) then
  begin
    antrian[1]:='P001';
    bantrian:=1;
    ShowMessage('Nomor antrian anda : P001');
  end
  else
  begin
    urut:='P'+Format('%.3d', [bantrian+1]);
    tambahData(urut);
    ShowMessage('Nomor antrian anda : '+urut);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  kode:string;
begin
  if(bantrian = 0) then
  begin
    ShowMessage('Antrian kosong!');
    meja1.Caption:='0';
    meja2.Caption:='0';
  end
  else
  begin
    kode:=ambil;
    meja1.Caption:=kode;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  urut:string;
begin
  if(bantrian = 0) then
  begin
    antrian[1]:='B001';
    bantrian:=1;
    ShowMessage('Nomor antrian anda : B001');
  end
  else
  begin
    urut:='B'+Format('%.3d', [bantrian+1]);
    tambahData(urut);
    ShowMessage('Nomor antrian anda : '+urut);
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  kode:string;
begin
  if(bantrian = 0) then
  begin
    ShowMessage('Antrian kosong!');
    meja1.Caption:='0';
    meja2.Caption:='0';
  end
  else
  begin
    kode:=ambil;
    meja2.Caption:=kode;
  end;
end;
end.
