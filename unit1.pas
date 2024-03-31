unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    edtNama: TEdit;
    edtNilai: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Grade: TLabel;
    Status: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure StatusClick(Sender: TObject);
  private
    Nilai: Double;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Nilai:= StrToFloat(edtNilai.Text);

  if Nilai >= 70 then
  begin
     Status.Caption := 'Lulus';
     Status.Font.Color := clLime;
  end
  else
  begin
      Status.Caption := 'Tidak Lulus';
      Status.Font.Color := clRed;
  end;

  if Nilai >= 85 then
     Grade.Caption := 'A'
  else if Nilai >= 75 then
     Grade.Caption := 'B'
  else if Nilai >= 60 then
  begin
     Grade.Caption := 'C';
     Grade.Font.Color := clYellow;
  end
  else if Nilai >= 45 then
  begin
     Grade.Caption := 'D';
     Grade.Font.Color := clYellow;
  end
  else if Nilai >= 0 then
  begin
     Grade.Caption := 'E';
     Grade.Font.Color := clRed;
  end;
end;

procedure TForm1.StatusClick(Sender: TObject);
begin

end;

end.

