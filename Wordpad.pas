unit Wordpad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    TextField: TRichEdit;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    FontBtn: TBitBtn;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    FileSaveDialog1: TFileSaveDialog;
    FontDialog1: TFontDialog;
    UpDown1: TUpDown;
    BoldBtn: TBitBtn;
    ItalicBtn: TBitBtn;
    UnderstrBtn: TBitBtn;
    StrikeBtn: TBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FontBtnClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure TextFieldClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BoldBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FontSize: Integer;

implementation

{$R *.dfm}


procedure TForm1.FontBtnClick(Sender: TObject);
begin
  FontDialog1.Font.Assign(TextField.SelAttributes);
  if FontDialog1.Execute then
    TextField.SelAttributes.Assign(FontDialog1.Font);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TextField.SelAttributes.Size:=StrToInt(Edit1.Text);
  FontSize:=12;
end;

procedure TForm1.TextFieldClick(Sender: TObject);
begin
FontSize:=TextField.SelAttributes.Size;
Edit1.Text:=Fontsize.ToString;
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
   FontSize:=FontSize+1;
   Edit1.Text:=FontSize.ToString;
   TextField.SelAttributes.Size:=FontSize;
end;

procedure TForm1.BoldBtnClick(Sender: TObject);
begin
  if TextField.SelAttributes.Bold=False then
  TextField.SelAttributes.Bold:=True else
  TextField.SelAttributes.Bold:=False;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  FontSize:=StrToInt(Edit1.Text);
  TextField.SelAttributes.Size:=FontSize;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

end.
