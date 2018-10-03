object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  Caption = 'frmCadastro'
  ClientHeight = 314
  ClientWidth = 684
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
  object Panel1: TPanel
    Left = 0
    Top = 273
    Width = 684
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 8
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
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 600
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = Button5Click
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
      OnClick = Button6Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 684
    Height = 273
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 0
    Width = 684
    Height = 273
    Align = alClient
    DataSource = dModulo.DSCadUsuario
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idusuario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usuario'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataCadastro'
        Width = 64
        Visible = True
      end>
  end
end
