tableextension 50101 "ad_Extends Sales Header" extends "Sales Header"
{
    fields
    {
        field(50000; "Originated Order No."; Code[20])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Lookup ("Sales Line"."Originated Order No."
                WHERE (
                    "Document Type" = FIELD ("Document Type"),
                    "Document No." = field ("No."),
                    Type = const (Item)
                    )
                );
        }
    }

}