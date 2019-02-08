tableextension 50111 "ad_Extends Purch. Header" extends "Purchase Header"
{
    fields
    {
        field(50000; "Originated Order No."; Code[20])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Lookup ("Purchase Line"."Originated Order No."
                WHERE (
                    "Document Type" = FIELD ("Document Type"),
                    "Document No." = field ("No."),
                    Type = const (Item)
                    )
                );
        }
    }
}