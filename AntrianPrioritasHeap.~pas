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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  antrian= array[1..maksAntrian] of string;

var
  Form1: TForm1;
  heap:antrian;
  bantrian:integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender:TObject);
begin
  bantrian:=0;
end;

function parent(index:integer):integer;
begin
  parent:=index div 2;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  meja1.Caption:='P001';
end;





end.
