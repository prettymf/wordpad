object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Wordpad'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 248
    ExplicitTop = 152
    ExplicitWidth = 185
    object FontBtn: TBitBtn
      Left = 8
      Top = 10
      Width = 25
      Height = 25
      Caption = 'Aa'
      TabOrder = 0
      OnClick = FontBtnClick
    end
    object Edit1: TEdit
      Left = 39
      Top = 12
      Width = 50
      Height = 23
      TabOrder = 1
      Text = '12'
      StyleName = 'Windows'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object UpDown1: TUpDown
      Left = 88
      Top = 10
      Width = 17
      Height = 25
      TabOrder = 2
      OnClick = UpDown1Click
    end
    object BoldBtn: TBitBtn
      Left = 111
      Top = 10
      Width = 25
      Height = 25
      Caption = 'B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BoldBtnClick
    end
    object ItalicBtn: TBitBtn
      Left = 142
      Top = 10
      Width = 25
      Height = 25
      Caption = 'I'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 4
      OnClick = FontBtnClick
    end
    object UnderstrBtn: TBitBtn
      Left = 173
      Top = 10
      Width = 25
      Height = 25
      Caption = 'U'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 5
      OnClick = FontBtnClick
    end
    object StrikeBtn: TBitBtn
      Left = 204
      Top = 10
      Width = 25
      Height = 25
      Caption = 'S'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsStrikeOut]
      ParentFont = False
      TabOrder = 6
      OnClick = FontBtnClick
    end
  end
  object TextField: TRichEdit
    Left = 0
    Top = 41
    Width = 624
    Height = 400
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'TextField')
    ParentFont = False
    TabOrder = 1
    OnClick = TextFieldClick
    ExplicitLeft = 280
    ExplicitTop = 240
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object MainMenu1: TMainMenu
    Left = 560
    Top = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object N4: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object N5: TMenuItem
        Caption = #1053#1086#1074#1099#1081
      end
    end
    object N2: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      object N6: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      end
      object N7: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '
      end
      object N8: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
      end
      object N9: TMenuItem
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 592
    Top = 8
  end
  object FileSaveDialog1: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 528
    Top = 8
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 496
    Top = 8
  end
end
