codeunit 50001 SalesLineNLCLedger
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", OnAfterPostSalesDoc, '', false, false)]
    local procedure "Sales-Post_OnAfterFinalizePosting"(var SalesHeader: Record "Sales Header"; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; CommitIsSuppressed: Boolean; PreviewMode: Boolean)
    var
        NLCLedger: Record "NLC Ledger";
        SalesLine: Record "Sales Line";
        Rec: Record "NLC Ledger";
        RecsalesInv: Record "Sales Invoice Header";

    begin
        if RecsalesInv.Get(Rec."Document No.") then begin
            SalesLine.Reset();
            SalesLine.SetRange("Document No.", Rec."Document No.");
            if SalesLine.FindFirst() then begin
                Rec."Item Code" := SalesLine."No.";
            end;
        end;

        // if SalesLine.FindFirst() then
        //     repeat
        //         NLCLedger.Init();
        //         NLCLedger."Document No." := SalesLine."Document No.";
        //         NLCLedger."Item Code" := SalesLine."No.";
        //         NLCLedger."Item Name" := SalesLine.Description;
        //         NLCLedger."Program ID" := SalesLine."Program ID";
        //         NLCLedger."Average NLC" := SalesLine."Average NLC";
        //         NLCLedger.Quantity := SalesLine.Quantity;
        //         // NLCLedger.Rebate:=SalesLine.Rebate;
        //         NLCLedger.Insert(True);
        //         Message('Line Data Posted To NLC Ledger');

        //     until SalesLine.Next() = 0;


    End;

    [EventSubscriber(ObjectType::Table, Database::"NLC Ledger", OnBeforeInsertEvent, '', false, false)]

    local procedure OnBeforeInsertEventNLC(var Rec: Record "NLC Ledger");
    var
        //   NLCLedger: Record "NLC Ledger";
        SalesLine: Record "Sales Line";
        RecsalesInv: Record "Sales Invoice Header";
    begin
        // repeat
        //     Rec.Init();
        //     Rec."Document No." := SalesLine."Document No.";
        //     Rec."Item Code" := SalesLine."No.";
        //     Rec."Item Name" := SalesLine.Description;
        //     Rec."Program ID" := SalesLine."Program ID";
        //     Rec."Average NLC" := SalesLine."Average NLC";
        //     Rec.Quantity := SalesLine.Quantity;
        //     // NLCLedger.Rebate:=SalesLine.Rebate;
        //     Rec.Insert(True);
        //     Message('Line Data Posted To NLC Ledger');

        // until SalesLine.Next() = 0;
        // if RecsalesInv.Get(Rec."Document No.") then begin
        //     SalesLine.Reset();
        //     SalesLine.SetRange("Document No.", Rec."Document No.");
        //     if SalesLine.FindFirst() then begin
        //         Rec."Item Code" := SalesLine."No.";
        //     end;
        // end;


    End;



    // end;
}
