pageextension 50100 "ad_Ext. Sales Inv. Subform" extends "Sales Invoice Subform"
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