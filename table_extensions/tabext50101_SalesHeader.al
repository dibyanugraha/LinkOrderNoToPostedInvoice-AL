tableextension 50101 "ad_Extends Sales Header" extends "Sales Header"
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