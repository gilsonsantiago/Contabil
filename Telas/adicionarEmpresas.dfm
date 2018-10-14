object frmAdicionarEmpresa: TfrmAdicionarEmpresa
  Left = 0
  Top = 0
  Caption = 'frmAdicionarEmpresa'
  ClientHeight = 238
  ClientWidth = 481
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
    Top = 197
    Width = 481
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    object Button1: TButton
      Left = 304
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 390
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 481
    Height = 197
    Align = alClient
    Caption = ' '
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 24
      Top = 54
      Width = 71
      Height = 13
      Caption = 'Nome do Ente:'
    end
    object Label3: TLabel
      Left = 24
      Top = 88
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label4: TLabel
      Left = 24
      Top = 120
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label5: TLabel
      Left = 24
      Top = 149
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
    end
    object Edit1: TEdit
      Left = 104
      Top = 21
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = ' '
    end
    object Edit2: TEdit
      Left = 104
      Top = 51
      Width = 361
      Height = 21
      TabOrder = 1
      Text = ' '
    end
    object Edit3: TEdit
      Left = 104
      Top = 85
      Width = 361
      Height = 21
      TabOrder = 2
      Text = ' '
    end
    object Edit4: TEdit
      Left = 104
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 3
      Text = ' '
    end
    object Edit5: TEdit
      Left = 104
      Top = 149
      Width = 121
      Height = 21
      TabOrder = 4
      Text = ' '
    end
  end
end
