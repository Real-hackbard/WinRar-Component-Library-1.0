object Form1: TForm1
  Left = 315
  Top = 124
  Width = 887
  Height = 426
  Caption = 'WinRAR Component 1.0 Source'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ListView: TListView
    Left = 0
    Top = 0
    Width = 871
    Height = 210
    Align = alClient
    Columns = <
      item
        Caption = 'Filename'
        Width = 100
      end
      item
        Caption = 'Compressed'
        Width = 75
      end
      item
        Caption = 'Uncompressed'
        Width = 90
      end
      item
        Caption = 'Attributes'
        Width = 75
      end
      item
        Caption = 'hostOS'
        Width = 75
      end
      item
        Caption = 'Comment'
        Width = 75
      end
      item
        Caption = 'Date'
        Width = 75
      end
      item
        Caption = 'Compression'
        Width = 75
      end
      item
        Caption = 'Version'
        Width = 75
      end
      item
        Caption = 'Encrypted'
        Width = 75
      end
      item
        Caption = 'CRC'
        Width = 75
      end>
    MultiSelect = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object Memo1: TMemo
    Left = 0
    Top = 210
    Width = 871
    Height = 70
    Align = alBottom
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 280
    Width = 871
    Height = 87
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      871
      87)
    object fileLabel: TLabel
      Left = 8
      Top = 60
      Width = 23
      Height = 13
      Caption = 'File :'
    end
    object OverallBar: TProgressBar
      Left = 8
      Top = 6
      Width = 851
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object SingleBar: TProgressBar
      Left = 8
      Top = 29
      Width = 851
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object CancelButton: TButton
      Left = 784
      Top = 52
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'abort'
      TabOrder = 2
      OnClick = CancelButtonClick
    end
  end
  object RARArchive: TRAR
    ReadMultiVolumeToEnd = False
    DllName = 'unrar.dll'
    OnError = RARArchiveError
    OnListFile = RARArchiveListFile
    OnPasswordRequired = RARArchivePasswordRequired
    OnNextVolumeRequired = RARArchiveNextVolumeRequired
    OnProgress = RARArchiveProgress
    OnReplace = RARArchiveReplace
    Left = 16
    Top = 32
  end
  object MainMenu: TMainMenu
    Left = 48
    Top = 32
    object File1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = 'Open...'
        OnClick = Open1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Archiveinformation1: TMenuItem
        Caption = 'Archive information'
        OnClick = Archiveinformation1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
    object Archive1: TMenuItem
      Caption = 'Archive'
      object test1: TMenuItem
        Caption = 'Test'
        OnClick = test1Click
      end
      object Extract1: TMenuItem
        Caption = 'Extract'
        OnClick = Extract1Click
      end
      object ExtractSelected1: TMenuItem
        Caption = 'Extract selected'
        OnClick = ExtractSelected1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object refresh1: TMenuItem
        Caption = 'Refresh'
      end
    end
    object N1: TMenuItem
      Caption = '?'
      object About1: TMenuItem
        Caption = 'About'
        OnClick = About1Click
      end
      object Dllversion1: TMenuItem
        Caption = 'Dll version'
        OnClick = Dllversion1Click
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'rar archives|*.rar|sfx rar archives|*.exe'
    Left = 80
    Top = 32
  end
end
