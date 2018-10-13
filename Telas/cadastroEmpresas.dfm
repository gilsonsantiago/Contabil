object frmCadEmpresas: TfrmCadEmpresas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Empresas'
  ClientHeight = 429
  ClientWidth = 730
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
  object DBGrid2: TDBGrid
    Left = 0
    Top = 0
    Width = 730
    Height = 388
    Align = alClient
    DataSource = dModulo.DSCadUsuario
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 388
    Width = 730
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 1
    object Button1: TButton
      Left = 6
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 87
      Top = 6
      Width = 75
      Height = 27
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 168
      Top = 6
      Width = 75
      Height = 27
      Caption = 'Excluir'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 647
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 329
      Top = 8
      Width = 81
      Height = 21
      TabOrder = 5
    end
    object Button6: TButton
      Left = 416
      Top = 6
      Width = 121
      Height = 25
      Caption = '<-  Digite o C'#243'digo:'
      TabOrder = 6
    end
  end
end
