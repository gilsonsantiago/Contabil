object adicionarUsuario: TadicionarUsuario
  Left = 0
  Top = 0
  Caption = 'Incluir Usu'#225'rio'
  ClientHeight = 201
  ClientWidth = 447
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
    Top = 160
    Width = 447
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    ExplicitWidth = 185
    object Button1: TButton
      Left = 279
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 447
    Height = 160
    Align = alClient
    Caption = ' '
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 185
    ExplicitHeight = 105
  end
end
