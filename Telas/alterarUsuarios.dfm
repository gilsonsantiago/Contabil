object frmAlterarUsuario: TfrmAlterarUsuario
  Left = 0
  Top = 0
  Caption = 'frmAlterarUsuario'
  ClientHeight = 195
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 496
    Height = 154
    Align = alClient
    Caption = ' '
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 32
      Top = 59
      Width = 75
      Height = 13
      Caption = 'Nome Completo'
    end
    object Label3: TLabel
      Left = 32
      Top = 88
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object Label5: TLabel
      Left = 32
      Top = 113
      Width = 85
      Height = 13
      Caption = 'Data de Cadastro'
    end
    object Edit1: TEdit
      Left = 136
      Top = 29
      Width = 57
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = ' '
    end
    object Edit2: TEdit
      Left = 136
      Top = 56
      Width = 333
      Height = 21
      TabOrder = 1
      Text = ' '
    end
    object Edit3: TEdit
      Left = 136
      Top = 83
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      Text = ' '
    end
    object Edit5: TEdit
      Left = 136
      Top = 110
      Width = 81
      Height = 21
      TabOrder = 3
      Text = ' '
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 154
    Width = 496
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 1
    object Button1: TButton
      Left = 327
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 408
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
    end
  end
end
