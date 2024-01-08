codeunit 50000 StockProtectionPost
{

    trigger OnRun()
    var
        StockProtection: Record "Stock Protection";
        NLCLedger: record "NLC Ledger";
        LineNo: Integer;
    begin
        StockProtection.Reset();

        StockProtection.SetRange("Document No.", StockProtection."Document No.");
        if StockProtection.FindFirst() then
            LineNo := 10000;
        repeat
            NLCLedger.Init();
            NLCLedger."Document No." := StockProtection."Document No.";
            NLCLedger."Program ID" := StockProtection."Program ID";

            LineNo := StockProtection."Line No.";

            NLCLedger.Insert(true);
            LineNo += 10000
        until NLCLedger.Next = 0;
        Page.Run(Page::"NLC Ledger List", NLCLedger);

    end;

}
