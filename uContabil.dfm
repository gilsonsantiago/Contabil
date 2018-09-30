object sisContabil: TsisContabil
  Left = 0
  Top = 0
  Caption = 'Acesso a Contabilidade'
  ClientHeight = 148
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 107
    Width = 353
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    object Button1: TButton
      Left = 181
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 262
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 353
    Height = 107
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 27
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object Label2: TLabel
      Left = 24
      Top = 67
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object Edit1: TEdit
      Left = 112
      Top = 24
      Width = 225
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = ' '
    end
    object Edit2: TEdit
      Left = 112
      Top = 64
      Width = 225
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      Text = ' '
    end
  end
end
