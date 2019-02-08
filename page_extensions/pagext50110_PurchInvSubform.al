pageextension 50110 "ad_Ext. Purch. Inv. Subform" extends "Purch. Invoice Subform"
{
    layout
    {
        addafter("No.")
        {
            field("Originated Order No."; "Originated Order No.")
            {
                ApplicationArea = All;
            }
            field("Originated Order Line No."; "Originated Order Line No.")
            {
                ApplicationArea = All;
            }
        }
    }
}