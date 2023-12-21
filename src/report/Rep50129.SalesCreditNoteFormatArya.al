report 50129 "Sales Credit Note Format Arya"
{

    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'SalesCreditNoteFormatAryaReal.rdl';
    dataset
    {
        dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")

        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";
            column(No_; "No.") { }
            column(BilltoName_DataItemName; "Bill-to Name")
            {
            }
            column(BilltoAddress_DataItemName; "Bill-to Address")
            {
            }
            column(BilltoAddress2_DataItemName; "Bill-to Address 2")
            {
            }
            column(BilltoCity_DataItemName; "Bill-to City")
            {
            }
            column(BilltoPostCode_DataItemName; "Bill-to Post Code")
            {
            }
            column(No_DataItemName; "No.")
            {
            }
            column(PostingDate_DataItemName; "Posting Date")
            {
            }
            column(LocationCode_DataItemName; "Location Code")
            {
            }
            column(PaymentTermsCode_DataItemName; "Payment Terms Code")
            {
            }
            column(ExternalDocumentNo_SalesCrMemoHeader; "External Document No.")
            {
            }
            column(IRNHash_SalesCrMemoHeader; "IRN Hash")
            {
            }
            column(compName; compinfo.Name) { }
            column(compAddrs1; compinfo.Address) { }
            column(compAddrs2; compinfo."Address 2") { }
            column(compCity; compinfo.City) { }
            column(compSatate; compinfo."State Code") { }
            column(compPAN; compinfo."P.A.N. No.") { }
            column(compGSTNO; compinfo."GST Registration No.") { }
            column(RegistationNo; compinfo."Registration No.") { }
            column(shipAddrs1; shipAddrs1) { }
            column(shipAddrs2; shipAddrs2) { }
            column(shipcity; shipcity) { }
            column(shipSateCode; shipSateCode) { }
            column(shipstate; shipstate) { }
            column(PostCode; PostCode) { }
            column(Address1; Address1) { }
            column(Address2; Address2) { }
            column(City; City) { }
            column(stNamee; stNamee) { }
            column(stNameCode; stNameCode) { }


            dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
            {
                DataItemLinkReference = "Sales Cr.Memo Header";
                DataItemLink = "Document No." = field("No.");
                column(Description_SalesLine; Description)
                {
                }
                column(Quantity_SalesLine; Quantity)
                {
                }
                column(UnitPrice_SalesLine; "Unit Price")
                {
                }
                column(Amount_SalesLine; "Line Amount")
                {
                }
                column(UnitofMeasureCode_SalesLine; "Unit of Measure Code")
                {
                }
                column(HSN_SAC_Code; "HSN/SAC Code") { }
                column(total; total) { }
                column(taxTotal; taxTotal) { }
                column(amountInWordsFinal; amountInWordsFinal) { }
                column(amountInWordsTax; amountInWordsTax) { }
                column(stateDesc; stateDesc) { }
                column(compStatedesc; compStatedesc) { }
                column(CGSTAmount; CGST) { }
                column(CGSTRate; CGSTRate) { }
                column(SGSTAmount; SGST) { }
                column(SGSTRate; SGSTRate) { }
                column(IGSTRate; IGSTRate) { }
                column(IGSTAmount; IGST) { }
                column(billToStatesCode; billToStatesCode) { }
                column(compStateCode; compStateCode) { }
                column(CGSTTotal; CGSTTotal) { }
                column(IGSTTotal; IGSTTotal) { }
                column(TotalAmt; TotalAmt) { }
                column(finalAmt; finalAmt) { }
                column(SGSTTotal; SGSTTotal) { }
                //VOUCHER columns

                column(grandTotal; grandTotal) { }
                column(TotalCGST; TotalCGST) { }
                column(TotalSGST; TotalSGST) { }
                column(TotalIGST; TotalIGST) { }
                column(GSTComponentCGST; GSTComponentCGST) { }
                column(GSTComponentIGST; GSTComponentIGST) { }
                column(GSTComponentSGST; GSTComponentSGST) { }
                column(taxTtlFinal; taxTtlFinal) { }

                trigger OnAfterGetRecord()

                var
                    saleLine: Record "Sales Line";
                    saleHeader: Record "Sales Header";
                    TaxTransactionValue: Record "Tax Transaction Value";
                begin
                    //line amount
                    salesInvLine.Reset();
                    salesInvLine.SetRange("Document No.", "Sales Cr.Memo Header"."No.");
                    if salesInvLine.FindSet() then begin
                        repeat
                            total += salesInvLine.Amount;
                        until salesInvLine.Next() = 0;
                    end;

                    //     GST calculations with DETAIL GST LEDGER ENTRY

                    Clear(CGST);
                    Clear(CGSTRate);
                    Clear(SGST);
                    Clear(SGSTRate);
                    Clear(IGST);
                    Clear(IGSTRate);
                    Clear(GSTComponentCGST);
                    Clear(GSTComponentIGST);
                    Clear(GSTComponentSGST);
                    Clear(CGSTTotal);
                    Clear(SGSTTotal);
                    Clear(IGSTTotal);

                    "Detailed GST Ledger Entry".Reset();
                    "Detailed GST Ledger Entry".SetRange("No.", "Sales Cr.Memo Line"."No.");
                    "Detailed GST Ledger Entry".SetRange("Document No.", "Sales Cr.Memo Line"."Document No.");
                    "Detailed GST Ledger Entry".SetRange("Document Line No.", "Sales Cr.Memo Line"."Line No.");
                    if "Detailed GST Ledger Entry".FindSet() then begin
                        repeat
                            if "Detailed GST Ledger Entry"."GST Component Code" = 'CGST' then begin
                                GSTComponentCGST := "Detailed GST Ledger Entry"."GST Component Code";
                                CGST := abs("Detailed GST Ledger Entry"."GST Amount");
                                CGSTRate := "Detailed GST Ledger Entry"."GST %";
                                CGSTTotal += CGST;
                            end
                            else
                                if "Detailed GST Ledger Entry"."GST Component Code" = 'SGST' then begin
                                    GSTComponentSGST := "Detailed GST Ledger Entry"."GST Component Code";
                                    SGST := abs("Detailed GST Ledger Entry"."GST Amount");
                                    SGSTRate := "Detailed GST Ledger Entry"."GST %";
                                    SGSTTotal += SGST;
                                end
                                else
                                    if "Detailed GST Ledger Entry"."GST Component Code" = 'IGST' then begin
                                        GSTComponentIGST := "Detailed GST Ledger Entry"."GST Component Code";
                                        IGST := abs("Detailed GST Ledger Entry"."GST Amount");
                                        IGSTRate := "Detailed GST Ledger Entry"."GST %";
                                        IGSTTotal += IGST;
                                    end;

                        until "Detailed GST Ledger Entry".Next() = 0;

                        taxTotal += CGSTTotal + SGSTTotal + IGSTTotal;
                        // taxTtlFinal += taxTotal;
                        TotalAmt += total + CGSTTotal + SGSTTotal + IGSTTotal;

                        // finalAmt += TotalAmt;
                        // repCheck.InitTextVariable();
                        // repCheck.FormatNoText(noText, TotalAmt, ' ');
                        // amountInWordsFinal := noText[1] + noText[2];
                        // repCheck.FormatNoText(noText2, taxTotal, '');
                        // amountInWordsTax := noText2[1] + noText2[2];

                        PostedVoucherRep.InitTextVariable();
                        PostedVoucherRep.FormatNoText(noText, TotalAmt, ' ');
                        amountInWordsFinal := noText[1] + noText[2];
                        PostedVoucherRep.FormatNoText(noText2, taxTotal, '');
                        amountInWordsTax := noText2[1] + noText2[2];



                    end;

                end;
            }

            // Header trigger
            trigger OnAfterGetRecord()

            var

                myInt: Integer;
                locationRec: Record Location;

            begin

                //Comp state code and state name
                stateRec.Reset();
                stateRec.SetRange(code, compinfo."State Code");
                if compinfo.FindFirst() then begin
                    compStatedesc := stateRec.Description;
                    compStateCode := stateRec."State Code (GST Reg. No.)";
                end;

                //Bill to state code and state name
                Customer.Reset();
                Customer.SetRange(Customer.Name, "Sales Cr.Memo Header"."Sell-to Customer Name");
                if Customer.FindFirst() then begin
                    stateRec.Reset();
                    stateRec.SetRange(Code, Customer."State Code");
                    if stateRec.FindFirst() then begin
                        stateDesc := stateRec.Description;
                        billToStatesCode := stateRec."State Code (GST Reg. No.)";
                    end;
                end;

                locationRec.Reset();
                locationRec.SetRange(Code, "Sales Cr.Memo Header"."Location Code");
                if locationRec.FindFirst() then begin
                    Address1 := locationRec.Address;
                    Address2 := locationRec."Address 2";
                    City := locationRec.City;
                    countryCode := locationRec."Country/Region Code";
                    PostCode := locationRec."Post Code";
                    stCodee := locationRec."State Code";
                end;
                stateRec.Reset();
                stateRec.SetRange(Code, stCodee);
                if stateRec.FindFirst() then begin
                    stNamee := stateRec.Description;
                    stNameCode := stateRec."State Code (GST Reg. No.)";
                end;

                //shipment Address empty
                if "Sales Cr.Memo Header"."Ship-to Address" = '' then begin
                    shipAddrs1 := "Sales Cr.Memo Header"."Bill-to Address";
                    shipAddrs2 := "Sales Cr.Memo Header"."Bill-to Address 2";
                    shipcity := "Sales Cr.Memo Header"."Bill-to City";
                    shipstate := stateDesc;
                end
                //shipment Address not empty
                else begin
                    shipAddrs1 := "Sales Cr.Memo Header"."Ship-to Address";
                    shipAddrs2 := "Sales Cr.Memo Header"."Ship-to Address 2";
                    shipcity := "Sales Cr.Memo Header"."Ship-to City";

                    if stateRec.FindFirst() then begin
                        shipstate := stateRec.Description;
                        shipSateCode := stateRec."State Code (GST Reg. No.)";
                    end;

                end;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(No_; "Sales Header")

                    // {

                    //     ApplicationArea = All;
                    // }

                }
            }

        }
        actions
        {
            area(processing)

            {

                action(ActionName)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnInitReport()
    var
        myInt: Integer;
    begin

        compStatedesc := '';
        CompStateCode := '';
        compinfo.get();
        if stateRec.Get(compinfo."State Code") then begin
            compStatedesc := stateRec.Description;
            CompStateCode := stateRec."State Code (GST Reg. No.)";
        end;

    end;

    local procedure ClearData()
    Begin
        IGSTRate := 0;
        SGSTRate := 0;
        CGSTRate := 0;
        SGSTtxt := '';
        CGSTtxt := '';
        TotalCGST := 0;
        TotalSGST := 0;
        TotalIGST := 0;
        CGSTtxt := '';
        IGSTtxt := '';
        SGSTtxt := '';

        IGST := 0;
        CGST := 0;
        SGST := 0;
        Clear(amountInWordsFinal);
        grandTotal := 0;

    End;

    var

        myInt: Integer;
        compinfo: Record "Company Information";
        salesInvLine: Record "Sales Cr.Memo Line";
        salesInvHeader: Record "Sales Cr.Memo Header";
        amountInWordsFinal: Text[100];
        amountInWordsTax: Text[100];
        noText: array[2] of Text;
        noText2: array[2] of Text;
        stateRec: Record State;
        stateDesc: Text[50];
        total: Decimal;
        CGSTRate: Decimal;
        CGST: Decimal;
        SGSTRate: Decimal;
        SGST: Decimal;
        IGSTRate: Decimal;
        IGST: Decimal;
        GSTComponentCGST: Code[20];
        GSTComponentSGST: Code[20];
        GSTComponentIGST: Code[20];
        CGSTTotal: Decimal;
        SGSTTotal: Decimal;
        IGSTTotal: Decimal;
        Customer: Record Customer;
        "Detailed GST Ledger Entry": Record "Detailed GST Ledger Entry";
        taxTotal: Decimal;
        repCheck: Report Check;
        repcheck1: Report Check;

        compStatedesc: Text[50];
        grandTotal: Decimal;
        billToStatesCode: Code[10];
        compStateCode: Code[10];
        finalAmt: Decimal;
        TotalAmt: Decimal;

        //VOCHER VAR

        "Tax Transaction Value": Record "Tax Transaction Value";
        TotalCGST: Decimal;
        TotalSGST: Decimal;
        TotalIGST: Decimal;
        TotalTDSAmt: Decimal;
        saleLine: Record "Sales Line";
        saleHeader: Record "Sales Header";
        TotalAmount: Decimal;
        ItemName: Text[30];
        TaxRecordID: RecordId;
        SGSTtxt: Text[30];
        CGSTtxt: Text[30];
        IGSTtxt: Text[30];
        TaxTransactionValue: Record "Tax Transaction Value";
        Address1: Text[50];
        Address2: Text[50];
        City: Text[50];
        PostCode: Text[50];
        countryCode: Text[50];
        stCodee: Code[20];
        shipAddrs1: Text[50];
        shipAddrs2: text[50];
        shipcity: text[20];
        shipstate: Text[50];
        shipSateCode: code[20];
        stNamee: text[20];
        stNameCode: Text[20];
        taxTtlFinal: Decimal;
        PostedVoucherRep: Report "Posted Voucher";

}