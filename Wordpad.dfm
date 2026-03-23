object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Wordpad'
  ClientHeight = 441
  ClientWidth = 928
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
    Width = 928
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
      Text = '9'
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
      OnClick = ItalicBtnClick
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
      OnClick = UnderstrBtnClick
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
      OnClick = StrikeBtnClick
    end
    object InsertTimeBtn: TBitBtn
      Left = 608
      Top = 10
      Width = 25
      Height = 25
      Caption = #55357#56658
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = InsertTimeBtnClick
    end
    object InsertDateBtn: TBitBtn
      Left = 639
      Top = 10
      Width = 25
      Height = 25
      Caption = #55357#56517
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = InsertDateBtnClick
    end
    object AlLeftBtn: TBitBtn
      Left = 449
      Top = 10
      Width = 25
      Height = 25
      Caption = #8801'  '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = AlLeftBtnClick
    end
    object AlCenterBtn: TBitBtn
      Left = 480
      Top = 10
      Width = 25
      Height = 25
      Caption = #8801
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = AlCenterBtnClick
    end
    object AlRightBtn: TBitBtn
      Left = 511
      Top = 10
      Width = 25
      Height = 25
      Caption = '  '#8801
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = AlRightBtnClick
    end
    object FontPicker: TComboBox
      Left = 250
      Top = 12
      Width = 145
      Height = 23
      TabOrder = 12
      OnChange = FontPickerChange
    end
  end
  object TextField: TRichEdit
    Left = 0
    Top = 41
    Width = 928
    Height = 400
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ScrollBars = ssBoth
    SpellChecking = True
    TabOrder = 1
    WantTabs = True
    WordWrap = False
    OnClick = TextFieldClick
    OnSelectionChange = TextFieldSelectionChange
    ExplicitWidth = 624
  end
  object MainMenu1: TMainMenu
    Left = 856
    Top = 56
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 16467
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ShortCut = 16463
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1053#1086#1074#1099#1081
        ShortCut = 16462
        OnClick = N5Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object N13: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ShortCut = 32883
        OnClick = N13Click
      end
    end
    object N2: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      object N6: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        ShortCut = 16451
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '
        ShortCut = 16470
        OnClick = N7Click
      end
      object N9: TMenuItem
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
        ShortCut = 16472
        OnClick = N9Click
      end
    end
    object N10: TMenuItem
      Caption = #1054#1087#1094#1080#1080
      object N11: TMenuItem
        Caption = #1055#1077#1088#1077#1085#1086#1089' '#1087#1086' '#1089#1083#1086#1074#1072#1084
        OnClick = N11Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object N14: TMenuItem
        Caption = #1042#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077' '#1087#1086' '#1083#1077#1074#1086#1084#1091' '#1082#1088#1072#1102
        OnClick = AlLeftBtnClick
      end
      object N15: TMenuItem
        Caption = #1042#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077' '#1087#1086' '#1094#1077#1085#1090#1088#1091
        OnClick = AlCenterBtnClick
      end
      object N16: TMenuItem
        Caption = #1042#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077' '#1087#1086' '#1087#1088#1072#1074#1086#1084#1091' '#1082#1088#1072#1102
        OnClick = AlRightBtnClick
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.txt|*.txt|*.rtf|*.rtf|*.bat|*.bat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Options = [ofEnableSizing]
    Left = 896
    Top = 56
  end
  object FileSaveDialog1: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 824
    Top = 56
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 792
    Top = 56
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'rtf'
    Filter = '*.txt|*.txt|*.rtf|*.rtf|*.bat|*.bat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 760
    Top = 56
  end
end
