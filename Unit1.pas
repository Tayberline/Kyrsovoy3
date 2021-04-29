unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 h, h1: hwnd; name:string;
begin
 name:=edit1.Text;
 h := findwindow('Shell_TrayWnd', nil);
 h1 := findwindowex(h, 0, 'Button', nil);
 setwindowtext(h1, PANSICHAR(name));
end;

end.
