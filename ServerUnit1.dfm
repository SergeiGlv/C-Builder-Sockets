object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sockets C++ Builder 11 Server'
  ClientHeight = 269
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object SpinEdit1: TSpinEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 65556
  end
  object Button1: TButton
    Left = 8
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 135
    Top = 8
    Width = 217
    Height = 241
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 400
    Top = 8
    Width = 217
    Height = 241
    TabOrder = 4
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnClientConnect = ServerSocket1ClientConnect
    OnClientDisconnect = ServerSocket1ClientDisconnect
    OnClientRead = ServerSocket1ClientRead
    Left = 32
    Top = 128
  end
end
