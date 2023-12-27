report 50106 "Delivery Note Sales"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    //MaximumDatasetSize = 1000000;
    RDLCLayout = 'DeliveryNoteAryaREAL.rdl';
    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")

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
            column(ExternalDocumentNo_SalesShipmentHeader; "External Document No.")
            {
            }
            column(compName; compinfo.Name) { }
            column(compAddrs1; compinfo.Address) { }
            column(compAddrs2; compinfo."Address 2") { }
            column(compCity; compinfo.City) { }
            column(compSatate; compinfo."State Code") { }
            column(compPAN; compinfo."P.A.N. No.") { }
            column(RegistationNo; compinfo."Registration No.") { }
            column(compGSTNO; compinfo."GST Registration No.") { }
            column(Address1; Address1) { }
            column(Address2; Address2) { }
            column(City; City) { }
            column(PostCode; PostCode) { }
            column(shipAddrs1; shipAddrs1) { }
            column(shipAddrs2; shipAddrs2) { }
            column(shipcity; shipcity) { }
            column(shipSateCode; shipSateCode) { }
            column(shipstate; shipstate) { }



            dataitem("Sales Shipment Line"; "Sales Shipment Line")
            {
                DataItemLinkReference = "Sales Shipment Header";
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
                column(Amount_SalesLine; '')
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
                column(Line_Amount; "Line Amount") { }
                column(IamGlobal; IamGlobal) { }
                column(SGSTtxt; SGSTtxt) { }
                column(IGSTtxt; IGSTtxt) { }
                column(CGSTtxt; CGSTtxt) { }
                column(amountInWords; amountInWords) { }
                column(total1; total1) { }

                trigger OnAfterGetRecord()

                var

                begin

                    "Sales Shipment Line Rec".Reset();
                    "Sales Shipment Line Rec".SetRange("Document No.", "Sales Shipment Header"."No.");
                    if "Sales Shipment Line Rec".FindSet() then begin
                        repeat
                            total1 += "Sales Shipment Line Rec".Quantity * "Sales Shipment Line Rec"."Unit Price";
                        until "Sales Shipment Line Rec".Next() = 0;

                    end;

                    // "Sales Shipment Line rec2".Reset();
                    // "Sales Shipment Line Rec2".SetRange("Document No.", "Sales Shipment Header"."No.");
                    // if "Sales Shipment Line Rec2".FindFirst() then begin
                    //     repeat
                    //         "Sales Shipment Line".SetRange("Line No.", "Sales Shipment Line"."Line No.");
                    //         if "Sales Shipment Line rec2".FindSet() then begin
                    //             repeat
                    //                 total1 += "Sales Shipment Line Rec".Quantity * "Sales Shipment Line Rec"."Unit Price";
                    //             until "Sales Shipment Line Rec".Next() = 0;
                    //         end;
                    //     until "Sales Shipment Line Rec2".Next() = 0;

                    // end;




                    // if "Sales Shipment Header"."No." = '' then begin

                    //     "Sales Invoice Header".Reset();
                    //     "Sales Invoice Line".Reset();
                    //     "Sales Invoice Header".SetRange("Order No.", "Sales Shipment Header"."Order No.");
                    //     "Sales Invoice Line".SetRange("Document No.", "Sales Invoice Header"."No.");
                    //     if "Sales Invoice Line".FindSet() then begin
                    //         //GST calculations with DETAIL GST LEDGER ENTRY

                    //         Clear(CGST);
                    //         Clear(CGSTRate);
                    //         Clear(SGST);
                    //         Clear(SGSTRate);
                    //         Clear(IGST);
                    //         Clear(IGSTRate);
                    //         Clear(GSTComponentCGST);
                    //         Clear(GSTComponentIGST);
                    //         Clear(GSTComponentSGST);
                    //         Clear(CGSTTotal);
                    //         Clear(SGSTTotal);
                    //         Clear(IGSTTotal);

                    //         "Detailed GST Ledger Entry".Reset();
                    //         "Detailed GST Ledger Entry".SetRange("No.", "Sales Shipment Line"."No.");
                    //         "Detailed GST Ledger Entry".SetRange("Document No.", "Sales Shipment Line"."Document No.");
                    //         "Detailed GST Ledger Entry".SetRange("Document Line No.", "Sales Shipment Line"."Line No.");
                    //         if "Detailed GST Ledger Entry".FindSet() then begin
                    //             repeat
                    //                 if "Detailed GST Ledger Entry"."GST Component Code" = 'CGST' then begin
                    //                     GSTComponentCGST := "Detailed GST Ledger Entry"."GST Component Code";
                    //                     CGST := abs("Detailed GST Ledger Entry"."GST Amount");
                    //                     CGSTRate := "Detailed GST Ledger Entry"."GST %";
                    //                     CGSTTotal += CGST;
                    //                 end
                    //                 else
                    //                     if "Detailed GST Ledger Entry"."GST Component Code" = 'SGST' then begin
                    //                         GSTComponentSGST := "Detailed GST Ledger Entry"."GST Component Code";
                    //                         SGST := abs("Detailed GST Ledger Entry"."GST Amount");
                    //                         SGSTRate := "Detailed GST Ledger Entry"."GST %";
                    //                         SGSTTotal += SGST;
                    //                     end
                    //                     else
                    //                         if "Detailed GST Ledger Entry"."GST Component Code" = 'IGST' then begin
                    //                             GSTComponentIGST := "Detailed GST Ledger Entry"."GST Component Code";
                    //                             IGST := abs("Detailed GST Ledger Entry"."GST Amount");
                    //                             IGSTRate := "Detailed GST Ledger Entry"."GST %";
                    //                             IGSTTotal += IGST;
                    //                         end;
                    //             until "Detailed GST Ledger Entry".Next() = 0;
                    //             taxTotal += CGST + SGST + IGST;
                    //             grandTotal += "Line Amount" + CGST + SGST + IGST;

                    //             // finalAmt += TotalAmt;
                    //             repCheck.InitTextVariable();
                    //             repCheck.FormatNoText(noText, grandTotal, ' ');
                    //             amountInWordsFinal := noText[1] + noText[2];
                    //             repCheck.FormatNoText(noText2, taxTotal, '');
                    //             amountInWordsTax := noText2[1] + noText2[2];

                    //             salesInvLine.Reset();
                    //             salesInvLine.SetRange("Document No.", "Sales Shipment Header"."No.");
                    //             if salesInvLine.FindSet() then begin
                    //                 repeat
                    //                     total += "Line Amount";
                    //                 until salesInvLine.Next() = 0;
                    //             end;

                    //         end;
                    //     end;
                    // end
                    // else

                    //gst calc
                    // "Sales Shipment Header rec".Reset();
                    // "Sales Shipment Header rec".SetRange("No.", "Sales Shipment Header rec"."No.");
                    // if "Sales Shipment Header rec".FindFirst() then begin
                    //     IamGlobal := 8;

                    // end;


                    //     IamGlobal := 8;

                    // end;


                    "Sales Header".Reset();

                    "Sales Header".SetRange("No.", "Sales Shipment Header"."Order No.");
                    "Sales Header".SetRange("Last Shipping No.", "Sales Shipment Header"."No.");
                    "Sales Header".SetRange("Sell-to Customer Name", "Sales Shipment Header"."Sell-to Customer Name");
                    if "Sales Header".FindFirst() then begin
                        "Sales Line".Reset();
                        "Sales Line".SetRange("Document No.", "Sales Shipment Header"."Order No.");
                        "Sales Line".SetFilter("GST Group Code", '<>%1', '');
                        ClearData();
                        repeat
                            TaxRecordID := "Sales Line".RecordId();//NP
                                                                   //  PurchaseHeaderRecordID := saleLine.RecordId();
                                                                   //Message('%1', PurchHeaderRecordID);
                            TaxTransactionValue.Reset();
                            TaxTransactionValue.SetRange("Tax Record ID", TaxRecordID);//Np
                            TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
                            TaxTransactionValue.SetFilter("Tax Type", '=%1', 'GST');
                            TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
                            TaxTransactionValue.SetRange("Visible on Interface", true);
                            TaxTransactionValue.SetFilter("Value ID", '%1|%2', 6, 2);
                            if TaxTransactionValue.FindSet() then begin
                                //repeat
                                CGSTRate := TaxTransactionValue.Percent;
                                SGSTRate := TaxTransactionValue.Percent;
                                CGST := TaxTransactionValue.Amount;
                                SGST := TaxTransactionValue.Amount;
                                SGSTtxt := 'SGST';
                                CGSTtxt := 'CGST';
                                TotalCGST += CGST;
                                TotalSGST += SGST;
                            end else begin
                                TaxTransactionValue.Reset();
                                TaxTransactionValue.SetRange("Tax Record ID", TaxRecordID);//NP
                                TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
                                TaxTransactionValue.SetFilter("Tax Type", '=%1', 'GST');
                                TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
                                TaxTransactionValue.SetRange("Visible on Interface", true);
                                TaxTransactionValue.SetFilter("Value ID", '%1', 3);
                                if TaxTransactionValue.FindSet() then
                                    IGSTRate := TaxTransactionValue.Percent;
                                IGST := TaxTransactionValue.Amount;
                                IGSTtxt := 'IGST';
                                TotalIGST += IGST;

                            END;

                        // Total += "Sales Line"."Line Amount";
                        until "Sales Line".Next() = 0;

                        taxTotal += TotalCGST + TotalIGST + TotalSGST;
                        grandTotal := total1 + taxTotal;


                        PostedVoucherRep.InitTextVariable();
                        PostedVoucherRep.FormatNoText(noText, grandTotal, ' ');
                        amountInWordsFinal := noText[1] + noText[2];

                        PostedVoucherRep1.InitTextVariable();
                        PostedVoucherRep1.FormatNoText(noText2, taxTotal, ' ');
                        amountInWordsTax := noText2[1] + noText2[2];





                    end;

                end;

            }

            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                CurrReport.Skip();
            end;
            //Posted Sales Header trigger
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
                Customer.SetRange(Customer.Name, "Sales Shipment Header"."Sell-to Customer Name");
                if Customer.FindFirst() then begin
                    stateRec.Reset();
                    stateRec.SetRange(Code, Customer."State Code");
                    if stateRec.FindFirst() then begin
                        stateDesc := stateRec.Description;
                        billToStatesCode := stateRec."State Code (GST Reg. No.)";
                    end;
                end;

                stateRec.Reset();
                stateRec.SetRange(Code, stCodee);
                if stateRec.FindFirst() then begin
                    stNamee := stateRec.Description;
                end;

                locationRec.Reset();
                locationRec.SetRange(Code, "Sales Shipment Header"."Location Code");
                if locationRec.FindFirst() then begin
                    Address1 := locationRec.Address;
                    Address2 := locationRec."Address 2";
                    City := locationRec.City;
                    countryCode := locationRec."Country/Region Code";
                    PostCode := locationRec."Post Code";
                    stCodee := locationRec."State Code";
                end;

                //shipment Address empty
                if "Sales Shipment Header"."Ship-to Address" = '' then begin
                    shipAddrs1 := "Sales Shipment Header"."Bill-to Address";
                    shipAddrs2 := "Sales Shipment Header"."Bill-to Address 2";
                    shipcity := "Sales Shipment Header"."Bill-to City";
                    shipstate := stNamee;
                    shipSateCode := stCodee;
                end
                //shipment Address not empty
                else begin
                    shipAddrs1 := "Sales Shipment Header"."Ship-to Address";
                    shipAddrs2 := "Sales Shipment Header"."Ship-to Address 2";
                    shipcity := "Sales Shipment Header"."Ship-to City";

                    stateRec.Reset();
                    stateRec.SetRange(Code, "Sales Shipment Header"."GST Ship-to State Code");
                    if stateRec.FindFirst() then begin
                        shipstate := stateRec.Description;
                        shipSateCode := stateRec."State Code (GST Reg. No.)";
                    end;



                    // repcheck1.InitTextVariable();
                    // repcheck1.FormatNoText(noText2, taxTotal, ' ');
                    // amountInWordsTax := noText2[1] + noText2[2];



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

        IGST := 0;
        CGST := 0;
        SGST := 0;
        Clear(amountInWordsFinal);
        grandTotal := 0;

    End;

    var

        myInt: Integer;
        compinfo: Record "Company Information";

        amountInWordsFinal: Text[250];
        amountInWordsTax: Text[250];
        amountInWords: Text[250];
        noText: array[2] of Text;
        noText2: array[2] of Text;
        noText1: array[2] of Text;

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
        repcheck2: Report Check;
        compStatedesc: Text[50];
        grandTotal: Decimal;
        billToStatesCode: Code[10];
        compStateCode: Code[10];
        finalAmt: Decimal;
        TotalAmt: Decimal;

        "Line Amount": Decimal;

        //VOCHER VAR

        "Tax Transaction Value": Record "Tax Transaction Value";
        TotalCGST: Decimal;
        TotalSGST: Decimal;
        TotalIGST: Decimal;
        TotalTDSAmt: Decimal;

        TotalAmount: Decimal;
        ItemName: Text[30];
        TaxRecordID: RecordId;
        SGSTtxt: Text[30];
        CGSTtxt: Text[30];
        IGSTtxt: Text[30];
        // "Sales Shipment Line": Record "Sales Shipment Line";
        // "Sales Shipment Header": Record "Sales Shipment Header";
        TaxTransactionValue: Record "Tax Transaction Value";
        itemRec: Record Item;
        "Sales Invoice Header": Record "Sales Invoice Header";
        "Sales Invoice Line": Record "Sales Invoice Line";
        "Sales Header": Record "Sales Header";
        "Sales Line": Record "Sales Line";
        "Sales Shipment Line Rec": Record "Sales Shipment Line";
        "Sales Shipment Header Rec": Record "Sales Shipment Header";

        IamGlobal: Integer;
        total1: Decimal;
        Address1: Text[50];
        Address2: Text[50];
        City: Text[50];
        PostCode: Text[50];
        countryCode: Text[50];
        stCodee: Code[20];
        stNamee: Text[20];
        shipAddrs1: Text[50];
        shipAddrs2: text[50];
        shipcity: text[20];
        shipstate: Text[50];
        shipSateCode: code[20];

        PostedVoucherRep: Report "Posted Voucher";
        PostedVoucherRep1: Report "Posted Voucher";
        "Sales Shipment Line rec2": Record "Sales Shipment Line";

}