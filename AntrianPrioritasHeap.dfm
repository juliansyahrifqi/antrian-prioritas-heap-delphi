object Form1: TForm1
  Left = 282
  Top = 147
  Width = 611
  Height = 463
  Caption = 'ProgramAntrianPrioritas'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 32
    Top = 16
    Width = 169
    Height = 113
    Color = clHighlight
    TabOrder = 0
    DesignSize = (
      169
      113)
    object meja1: TLabel
      Left = 24
      Top = 16
      Width = 120
      Height = 60
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = '-'
      Color = clWhite
      Constraints.MaxHeight = 60
      Constraints.MaxWidth = 120
      Constraints.MinHeight = 60
      Constraints.MinWidth = 120
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -47
      Font.Name = 'Montserrat Medium'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 46
      Top = 80
      Width = 73
      Height = 25
      Alignment = taCenter
      Caption = 'MEJA 1'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Montserrat ExtraBold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 32
    Top = 144
    Width = 169
    Height = 113
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object meja2: TLabel
      Left = 24
      Top = 16
      Width = 120
      Height = 60
      Alignment = taCenter
      Caption = '-'
      Color = clWhite
      Constraints.MaxHeight = 60
      Constraints.MaxWidth = 120
      Constraints.MinHeight = 60
      Constraints.MinWidth = 120
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -44
      Font.Name = 'Montserrat Medium'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 46
      Top = 80
      Width = 77
      Height = 25
      Caption = 'MEJA 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Montserrat ExtraBold'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panggil1: TButton
    Left = 232
    Top = 288
    Width = 113
    Height = 41
    Caption = 'Panggil Meja 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Panggil1Click
  end
  object Panggil2: TButton
    Left = 232
    Top = 344
    Width = 113
    Height = 41
    Caption = 'Panggil Meja 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Panggil2Click
  end
  object AmbilPersonal: TButton
    Left = 376
    Top = 344
    Width = 193
    Height = 41
    Caption = 'Ambil Antrian Personal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = AmbilPersonalClick
  end
  object AmbilBisnis: TButton
    Left = 376
    Top = 288
    Width = 193
    Height = 41
    Caption = 'Ambil Antrian Bisnis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = AmbilBisnisClick
  end
  object Panel3: TPanel
    Left = 32
    Top = 280
    Width = 169
    Height = 113
    Color = clMedGray
    TabOrder = 6
    object selanjutnya: TLabel
      Left = 24
      Top = 16
      Width = 120
      Height = 60
      Alignment = taCenter
      Caption = '-'
      Color = clWhite
      Constraints.MaxHeight = 60
      Constraints.MaxWidth = 120
      Constraints.MinHeight = 60
      Constraints.MinWidth = 120
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -47
      Font.Name = 'Montserrat Medium'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 18
      Top = 85
      Width = 135
      Height = 18
      Alignment = taCenter
      Caption = 'Antrian Selanjutnya'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Montserrat ExtraBold'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 232
    Top = 16
    Width = 337
    Height = 241
    Color = clSkyBlue
    TabOrder = 7
    object Label1: TLabel
      Left = 16
      Top = 95
      Width = 305
      Height = 40
      Align = alCustom
      Alignment = taCenter
      Caption = 'SELAMAT DATANG'
      Color = clSkyBlue
      Constraints.MaxHeight = 40
      Constraints.MaxWidth = 305
      Constraints.MinHeight = 40
      Constraints.MinWidth = 305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Montserrat ExtraBold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
end
