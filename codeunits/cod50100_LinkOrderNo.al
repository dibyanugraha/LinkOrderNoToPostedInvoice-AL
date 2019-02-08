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

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnAfterInsertPostedHeaders', '', false, false)]
    local procedure CopyOriginatedToPostedPurchInvoice(var PurchaseHeader: Record "Purchase Header"; var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        var PurchInvHeader: Record "Purch. Inv. Header"; var PurchRcptHeader: Record "Purch. Rcpt. Header"; var ReturnShptHeader: Record "Return Shipment Header")
    begin

    end;
}