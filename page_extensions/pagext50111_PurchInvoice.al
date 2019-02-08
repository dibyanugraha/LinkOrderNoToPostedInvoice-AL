pageextension 50111 "ad_Ext. Purch. Invoice" extends "Purchase Invoice"
{
    layout
    {
        addafter("No.")
        {
            field("Originated Order No."; "Originated Order No.")
            {
                ApplicationArea = All;
            }
        }
    }
}