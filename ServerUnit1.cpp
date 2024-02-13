//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ServerUnit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
ServerSocket1->Port=SpinEdit1->Value;
ServerSocket1->Active = true;
Memo1->Lines->Add("Server started");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ServerSocket1ClientConnect(TObject *Sender, TCustomWinSocket *Socket)

{
Memo1->Lines->Add("Client connected :" + Socket->RemoteAddress + ":" + IntToStr(Socket->RemotePort));
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ServerSocket1ClientDisconnect(TObject *Sender, TCustomWinSocket *Socket)

{
Memo1->Lines->Add("Client disconnected :" + Socket->RemoteAddress + ":" + IntToStr(Socket->RemotePort));
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
ServerSocket1->Active = false;
Memo1->Lines->Add("Server stopped");
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ServerSocket1ClientRead(TObject *Sender, TCustomWinSocket *Socket)

{
AnsiString s;
s= Socket->ReceiveText();
//.c_str();
Memo2->Lines->Add(s);
}
//---------------------------------------------------------------------------
