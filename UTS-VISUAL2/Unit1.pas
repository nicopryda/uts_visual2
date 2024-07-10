unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    e1: TEdit;
    e2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    e3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure e3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('insert into satuan values(null,"'+e1.Text+'","'+e2.Text+'")');
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('update satuan set nama="'+e1.Text+'", diskripsi="'+e2.Text+'" where id="'+a+'"');
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Diubah');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('delete from satuan where id="'+a+'"');
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Dihapus');
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
e1.Text := DataModule2.ZQuery1.Fields[1].AsString;
e2.Text := DataModule2.ZQuery1.Fields[2].AsString;
a := DataModule2.ZQuery1.Fields[0].AsString;
end;

procedure TForm1.e3Change(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan where nama like "%'+e3.Text+'%"');
DataModule2.ZQuery1.Open;
end;

end.
