object frmCadEmpresas: TfrmCadEmpresas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Empresas'
  ClientHeight = 377
  ClientWidth = 718
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
  object DBGrid2: TDBGrid
    Left = 0
    Top = 0
    Width = 718
    Height = 336
    Align = alClient
    DataSource = dModulo.DSCadEmpresa
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idempresa'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome do Ente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idusuario'
        Title.Alignment = taCenter
        Title.Caption = 'Respons'#225'vel'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 336
    Width = 718
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 1
    ExplicitTop = 388
    ExplicitWidth = 730
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
      Left = 631
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
      Width = 193
      Height = 25
      Caption = '<-  Digite o Nome do Ente'
      TabOrder = 6
      OnClick = Button6Click
    end
  end
end
