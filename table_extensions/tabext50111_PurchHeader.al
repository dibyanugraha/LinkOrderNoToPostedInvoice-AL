tableextension 50111 "ad_Extends Purch. Header" extends "Purchase Header"
{
    fields
    {
        field(50000; "Originated Order No."; Code[20])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
    }

}