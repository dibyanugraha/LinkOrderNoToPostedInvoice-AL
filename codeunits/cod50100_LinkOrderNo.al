codeunit 50100 "Link Order No."
{
    [EventSubscriber(ObjectType::Table, Database::"Purch. Rcpt. Line", 'OnBeforeInsertInvLineFromRcptLine', '', false, false)]
    local procedure CopyOrderNoToPurchInvLine(var PurchLine: Record "Purchase Line"; var PurchRcptLine: Record "Purch. Rcpt. Line")
    begin
        PurchLine."Originated Order No." := PurchRcptLine."Order No.";
        PurchLine."Originated Order Line No." := PurchRcptLine."Order Line No.";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Shipment Line", 'OnBeforeInsertInvLineFromShptLine', '', false, false)]
    local procedure CopyOrderNoToSalesInvLine(SalesOrderLine: Record "Sales Line"; var SalesLine: Record "Sales Line"; var SalesShptLine: Record "Sales Shipment Line")
    begin
        SalesLine."Originated Order No." := SalesShptLine."Order No.";
        SalesLine."Originated Order Line No." := SalesShptLine."Order Line No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePurchInvHeaderInsert', '', false, false)]
    local procedure CopyOriginatedToPostedPurchInvoice(CommitIsSupressed: Boolean; var PurchHeader: Record "Purchase Header"; var PurchInvHeader: Record "Purch. Inv. Header")
    begin
        if PurchInvHeader."Order No." = '' then begin
            PurchHeader.CalcFields("Originated Order No.");
            PurchInvHeader."Order No." := PurchHeader."Originated Order No.";
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforeSalesInvHeaderInsert', '', false, false)]
    local procedure CopyOriginatedToPostedSalesInvoice(CommitIsSuppressed: Boolean; SalesHeader: Record "Sales Header"; var SalesInvHeader: Record "Sales Invoice Header")
    begin
        if SalesInvHeader."Order No." = '' then begin
            SalesHeader.CalcFields("Originated Order No.");
            SalesInvHeader."Order No." := SalesHeader."Originated Order No.";
        end;
    end;
}