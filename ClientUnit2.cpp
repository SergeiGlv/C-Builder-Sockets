//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ClientUnit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button1Click(TObject *Sender)
{
ClientSocket1->Address = Edit1->Text;
ClientSocket1->Port = SpinEdit1->Value;
ClientSocket1->Active = true;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::ClientSocket1Connect(TObject *Sender, TCustomWinSocket *Socket)

{
Memo1->Lines->Add("Connected!!!");
}
//---------------------------------------------------------------------------
void __fastcall TForm2::ClientSocket1Disconnect(TObject *Sender, TCustomWinSocket *Socket)

{
Memo1->Lines->Add("Disconnected!!!");
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button2Click(TObject *Sender)
{
ClientSocket1->Active = false;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button3Click(TObject *Sender)
{
if (ClientSocket1->Active) {
ClientSocket1->Socket->SendText(Edit2->Text);
Memo1->Lines->Add(Edit2->Text);
Edit2->Text="";
}else{
ShowMessage("not connected");
}

}
//---------------------------------------------------------------------------
