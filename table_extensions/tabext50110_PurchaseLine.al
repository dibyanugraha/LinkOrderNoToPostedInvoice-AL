tableextension 50110 "ad_Extends Purchase Line" extends "Purchase Line"
{
    fields
    {
        field(50000; "Originated Order No."; Code[20])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(50001; "Originated Order Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
    }

}
