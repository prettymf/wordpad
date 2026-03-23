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
    InsertTimeBtn: TBitBtn;
    InsertDateBtn: TBitBtn;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    SaveDialog1: TSaveDialog;
    N8: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FontBtnClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure TextFieldClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BoldBtnClick(Sender: TObject);
    procedure InsertTimeBtnClick(Sender: TObject);
    procedure InsertDateBtnClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure ItalicBtnClick(Sender: TObject);
    procedure UnderstrBtnClick(Sender: TObject);
    procedure StrikeBtnClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
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
  FontSize:=9;
end;

procedure TForm1.InsertDateBtnClick(Sender: TObject);
begin
  TextField.Lines.Add(DateToStr(Date));
end;

procedure TForm1.InsertTimeBtnClick(Sender: TObject);
begin
  TextField.Lines.Add(TimeToStr(Now));
end;

procedure TForm1.ItalicBtnClick(Sender: TObject);
begin
  if TextField.SelAttributes.Italic=False then
  TextField.SelAttributes.Italic:=True else
  TextField.SelAttributes.Italic:=False;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  if TextField.WordWrap=False then begin
    TextField.WordWrap:=True;
    N11.Checked:=True;
  end
   else
  begin
    TextField.WordWrap:=False;
    N11.Checked:=False;
  end;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
    if SaveDialog1.Execute then
    TextField.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
    TextField.Lines.LoadFromFile(OpenDialog1.FileName);
    if OpenDialog1.FileName<>'' then
    Form1.Caption:=opendialog1.FileName+' - Wordpad';
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  TextField.Lines.Clear;
  Form1.Caption:='Wordpad';
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  TextField.CopyToClipboard;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
TextField.PasteFromClipboard;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  TextField.CutToClipboard;
end;

procedure TForm1.StrikeBtnClick(Sender: TObject);
begin
if TextField.SelAttributes.Strikeout=False then
  TextField.SelAttributes.Strikeout:=True else
  TextField.SelAttributes.Strikeout:=False;
end;

procedure TForm1.TextFieldClick(Sender: TObject);
begin
FontSize:=TextField.SelAttributes.Size;
Edit1.Text:=Fontsize.ToString;
end;

procedure TForm1.UnderstrBtnClick(Sender: TObject);
begin
  if TextField.SelAttributes.Underline=False then
  TextField.SelAttributes.Underline:=True else
  TextField.SelAttributes.Underline:=False;
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
