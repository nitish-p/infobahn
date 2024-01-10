codeunit 50000 CustomerContrcatSalesOrd
{



    procedure CustomerContract();
    var
        myInt: Integer;
        recSalesHdr: Record "Sales Header";
        NoseriesMang: Codeunit NoSeriesManagement;
        recContract: Record "Master contract";
        SalesRecSetup: Record "Sales & Receivables Setup";
        recCustomerSubContractLine: Record "Customer Sub Contract Line";
        RecSalesine: Record "Sales Line";
        LineNo: Integer;
        Name: Code[100];
        recCustomer1: Record Customer;
        rec: Record "Customer Sub Contract Header";

    begin
        recCustomer1.Reset();
        recCustomer1.SetRange(recCustomer1."No.", rec.Customer);
        if recCustomer1.FindFirst() then begin
            if rec.FindFirst() then begin
                Name := recCustomer1.Name;
            end;

        end;
        rec.Reset();
        rec.SetRange(rec."Customer Contracts ID", rec."Customer Contracts ID");
        if rec.FindFirst() then begin

            SalesRecSetup.get();
            recSalesHdr.Init();
            recSalesHdr."Document Type" := recSalesHdr."Document Type"::Order;
            recSalesHdr."No." := NoseriesMang.GetNextNo(SalesRecSetup."Order Nos.", Today, true);
            recSalesHdr."Sell-to Customer Name" := Name;
            recSalesHdr."Bill-to Customer No." := rec.Customer;
            recSalesHdr.Insert(true);
            recSalesHdr."Sell-to Customer No." := rec.Customer;
            recSalesHdr."Customer Contract ID" := rec."Customer Contracts ID";
            //recSalesHdr.Insert(true);

            // recSalesHdr.Customer := rec."Customer";
            // recSalesHdr."Customer PO No." := rec."Customer PO No.";
            recSalesHdr."Contract ID" := rec."Contract ID";
            recSalesHdr."Customer PO No." := rec."Customer PO No.";

            recSalesHdr."Customer PO No." := rec."Customer PO No.";
            recSalesHdr."Service Type" := rec."Service Type";
            //recSalesHdr."Service Type" := rec."Service Type";
            recSalesHdr."SO Stage" := rec."SO Stage";

            IF recSalesHdr.MODIFY(TRUE) THEN BEGIN
                LineNo := 10000;
                recCustomerSubContractLine.RESET();
                recCustomerSubContractLine.SETRANGE(recCustomerSubContractLine."Customer Contract ID", rec."Customer Contracts ID");
                IF recCustomerSubContractLine.FINDSET THEN
                    REPEAT

                        RecSalesine.INIT;
                        RecSalesine."Document Type" := RecSalesine."Document Type"::Order;
                        RecSalesine."Document No." := recSalesHdr."No.";
                        //RecSalesine."Subcontracts ID" := recSalesHdr."Subcontracts ID";
                        if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::Item then
                            RecSalesine.Type := RecSalesine.Type::Item
                        else
                            if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::FA then
                                RecSalesine.Type := RecSalesine.Type::"Fixed Asset"
                            else
                                if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::GL then
                                    RecSalesine.Type := RecSalesine.Type::"G/L Account"
                                else
                                    if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::Charges then
                                        RecSalesine.Type := RecSalesine.Type::"Charge (Item)"
                                    else
                                        if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::Resources then
                                            RecSalesine.Type := RecSalesine.Type::Resource;


                        RecSalesine."Line No." := LineNo;
                        //Message('Inserting Line No: ', RecSalesine."Line No.");
                        RecSalesine.VALIDATE(RecSalesine."No.", recCustomerSubContractLine."No.");
                        RecSalesine.VALIDATE(RecSalesine.Quantity, recCustomerSubContractLine.Quantity);
                        RecSalesine.VALIDATE(RecSalesine."Customer Contract", recCustomerSubContractLine."Customer Contract ID");

                        RecSalesine.VALIDATE(RecSalesine."Location Code", recCustomerSubContractLine.Location);
                        RecSalesine.VALIDATE(RecSalesine.Mrgin, recCustomerSubContractLine.Margin);
                        //RecSalesine.VALIDATE(RecSalesine.NLC, recCustomerSubContractLine.NLC);

                        //RecSalesine.VALIDATE(RecSalesine.Rebate, recCustomerSubContractLine.Rebate);



                        RecSalesine.Insert(True);
                        LineNo += 10000;

                    UNTIL recCustomerSubContractLine.NEXT = 0;
            end;

            Page.Run(Page::"Sales Order", recSalesHdr);
        end;
    end;
}

