pageextension 50101 "ad_Ext. Sales Invoice" extends "Sales Invoice"
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