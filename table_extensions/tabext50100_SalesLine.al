tableextension 50100 "ad_Extends Sales Line" extends "Sales Line"
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
