report 50148 "PurchaseReciptNote Updated"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'PurchaseReceiptNote-A.rdl';

    dataset
    {
        dataitem("Purchase Header"; "Purch. Rcpt. Header")
        {
            RequestFilterFields = "No.";
            //company Information
            column(comp_name; compinfo.Name)
            {

            }
            column(Comp_Address; Address1)
            {

            }
            column(Address2; Address2) { }
            column(compinfo_StateCode; stCodee)
            {

            }
            column(Compinfo_City; City)
            {

            }
            column(compinfo_GST; compinfo."GST Registration No.")
            {

            }
            column(compinfo_Email; compinfo."E-Mail")
            {

            }

            column(compinfo_pan; compinfo."P.A.N. No.")
            {

            }
            column(compinfo_PostCode; PostCode)
            {

            }
            column(cmpPhone; compinfo."Phone No.") { }
            column(RegistationNo; compinfo."Registration No.") { }
            //Consignee 

            column(Ship_to_Name; "Ship-to Name")
            {

            }
            column(Ship_to_Address; "Ship-to Address")
            {

            }
            column(Ship_to_City; "Ship-to City")
            {

            }
            column(Ship_to_Post_Code; "Ship-to Post Code")
            {

            }
            column(Ship_to_County; "Ship-to County")
            {

            }
            column(Ship_to_Country_Region_Code; "Ship-to Country/Region Code")
            {

            }
            column(Ship_to_Contact; "Ship-to Contact")
            {

            }
            column(Vendor_Shipment_No_; "Vendor Shipment No.")
            {

            }
            column(No_; "No.")
            {

            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {

            }
            column(Vendor_Address; "Buy-from Address")
            {

            }
            column(Buy_from_Address; "Buy-from Address 2")
            {

            }
            column(Buy_from_City; "Buy-from City")
            {

            }
            column(Buy_from_Contact; "Buy-from Contact")
            {

            }
            column(Buy_from_Country_Region_Code; "Buy-from Country/Region Code")
            {

            }
            column(Buy_from_Post_Code; "Buy-from Post Code")
            {

            }
            column(Buyfrom_state; "Buy-from County")
            {

            }
            column(Buy_from_Vendor_No_; "Buy-from Vendor No.")
            {

            }
            column(Vendor_GST_Reg__No_; "Vendor GST Reg. No.")
            {

            }
            column(Supplierdate; "Order Date")
            {

            }
            column(StName; statename)

            {

            }
            column(StCode; statecode)
            {

            }
            column(AmountinWords; AmountinWords)
            {

            }
            column(shipAddrs1; shipAddrs1) { }
            column(shipAddrs2; shipAddrs2) { }
            column(shipcity; shipcity) { }
            column(shipSateCode; shipSateCode) { }
            column(shipstate; shipstate) { }

            column(Address1; Address1) { }

            column(City; City) { }
            column(PostCode; PostCode) { }
            column(stNameCode; stNameCode) { }
            column(stNamee; stNamee) { }
            column(shipPostCode; shipPostCode) { }
            column(shipCountryCode; shipCountryCode) { }


            dataitem("Purchase Line"; "Purch. Rcpt. Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = "Purchase Header";
                column(Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Unit_of_Measure; "Unit of Measure")
                {

                }
                column(Unit_Cost; "Unit Cost")
                {

                }
                // column(Line_Amount; "Line Amount")
                // {

                // }
                column(FinalAmount; FinalAmount)
                {

                }
                column(TotalTax; TotalTax)
                {

                }

                column(TotalCGST; TotalCGST)
                {

                }
                column(TotalSGST; TotalSGST)
                {

                }
                column(TotalIGST; TotalIGST)
                {

                }
                column(LineAMT; LineAMT)
                {

                }
                column(GrandTotal; GrandTotal)
                {

                }
                column(CGST; CGST)
                {

                }
                column(SGST; SGST)
                {

                }
                column(IGST; IGST) { }
                column(CGSTtxt; CGSTtxt)
                {

                }
                column(SGSTtxt; CGSTtxt)
                {

                }
                column(IGSTtxt; CGSTtxt)
                {

                }
                column(CGSTRate; CGSTRate) { }
                column(SGSTRate; SGSTRate) { }
                column(IGSTRate; IGSTRate) { }


                // trigger OnPreDataItem()
                // begin
                //     SrNo := 0;
                //     TotalCGST := 0;
                //     TotalSGST := 0;
                //     TotalIGST := 0;
                //     TotalTDSAmt := 0;
                // end;

                // trigger OnAfterGetRecord()
                // var
                //     RecRef: RecordRef;
                //     TaxTransval: Record "Tax Transaction Value";
                //     SalesHeaderRecordID: RecordId;
                //     RecPIL: Record "Purchase Line";
                //     RecPIL1: Record "Purchase Line";
                //     RecRef1: RecordRef;
                //     TaxTransval1: Record "Tax Transaction Value";
                //     SalesHeaderRecordID1: RecordId;
                // begin
                //     SrNo += 1;
                //     IF RecItem.Get("Purchase Line"."No.") then ItemName := RecItem.Description;
                //     TotalAmount += "Purchase Line".Quantity * "Purchase Line"."Unit Cost";
                //     //------------------ GST  Calculation
                //     SGST := 0;
                //     CGST := 0;
                //     IGST := 0;
                //     Rate := 0;
                //     Rate1 := 0;
                //     RecRef.OPEN(DATABASE::"Purchase Line");
                //     RecRef.SETTABLE(RecPIL);
                //     RecPIL.Reset();
                //     RecPIL.SetRange("Document No.", "Purchase Header"."No.");
                //     RecPIL.SetFilter(RecPIL."GST Group Code", '<>%1', '');
                //     if RecPIL.FindSet() then
                //         repeat
                //             SalesHeaderRecordID := RecPIL.RECORDID;
                //             //Message('%1', PurchHeaderRecordID);
                //             TaxTransval.Reset();
                //             TaxTransval.SetRange("Tax Record ID", SalesHeaderRecordID);
                //             TaxTransval.SetFilter("Value Type", '=%1', TaxTransval."Value Type"::COMPONENT);
                //             TaxTransval.SetFilter(TaxTransval."Tax Type", '=%1', 'GST');
                //             TaxTransval.SetFilter(Percent, '<>%1', 0);
                //             if TaxTransval.FindSet() then
                //                 repeat //Message('%1  %2  %3', TaxTransval.ID, TaxTransval.Amount, TaxTransval.Percent);
                //                     IF "Purchase Line"."GST Jurisdiction Type" = "Purchase Line"."GST Jurisdiction Type"::Intrastate THEN BEGIN
                //                         Rate := TaxTransval.Percent;
                //                         CGST := TaxTransval.Amount;
                //                         SGST := TaxTransval.Amount;
                //                     END
                //                     ELSE
                //                         IF ("Purchase Line"."GST Jurisdiction Type" = "Purchase Line"."GST Jurisdiction Type"::Interstate) THEN BEGIN
                //                             Rate1 := TaxTransval.Percent;
                //                             IGST := TaxTransval.Amount;
                //                         END;
                //                 until TaxTransval.Next() = 0;
                //             TotalCGST += CGST;
                //             TotalSGST += SGST;
                //             TotalIGST += IGST;

                //         until RecPIL.Next() = 0;
                //         LineAMT += "Line Amount";


                //     GrandTotal := LineAMT +TotalCGST+TotalSGST;
                //     // FinalAmount += GrandTotal;
                //     //tax := TotalCGST + TotalSGST + TotalIGST;

                //     // GrandTotal := "Purchase Line".;
                //     //TotalTax += tax;  
                //     repcheck.InitTextVariable();
                //     repcheck.FormatNoText(wordsinarray, GrandTotal, ' ');
                //     AmountinWords := wordsinarray[1] + wordsinarray[2];





                // end;
                column(AmountToVendor; AmountToVendor) { }
                column(Total; Total) { }
                trigger OnAfterGetRecord()
                var
                    myInt: Integer;
                    RecPurchaseLine: Record "Purchase Line";
                    "Purchase Line1": Record "Purch. Rcpt. Line";
                begin

                    "Purchase Line1".Reset();
                    "Purchase Line1".SetRange("Document No.", "Purchase Header"."No.");
                    if "Purchase Line1".FindSet() then begin
                        repeat
                            total += "Purchase Line1".Quantity * "Purchase Line1"."Unit Cost";
                        until "Purchase Line1".Next() = 0;

                    end;

                    ClearData();

                    RecPurchaseLine.Reset();
                    // RecPurchaseLine.SetRange("Document Type", "Purchase Header"."Document Type");
                    RecPurchaseLine.SetRange("Document No.", "Purchase Header"."Order No.");
                    RecPurchaseLine.SetFilter("GST Group Code", '<>%1', '');
                    if RecPurchaseLine.FindSet() then
                        repeat
                            TaxRecordID := RecPurchaseLine.RecordId();//NP
                                                                      // PurchaseHeaderRecordID := RecPurchaseLine.RecordId();
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
                                CGST += TaxTransactionValue.Amount;
                                SGST += TaxTransactionValue.Amount;
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
                                IGST += TaxTransactionValue.Amount;
                                IGSTtxt := 'IGST';
                                TotalIGST += IGST;

                            END;


                        //Total += RecPurchaseLine."Line Amount";
                        until RecPurchaseLine.Next() = 0;
                    AmountToVendor := Total + CGST + SGST + IGST;
                    tax += CGST + IGST + SGST;
                    TotalTax := tax;
                    PostedVoucherRep.InitTextVariable();
                    PostedVoucherRep.FormatNoText(wordsinarray, AmountToVendor, ' ');
                    AmountinWords := wordsinarray[1] + wordsinarray[2]

                end;
            }
            //header onafter
            trigger OnAfterGetRecord()
            var
                myInt: Integer;
                customer: Record Vendor;
                state: Record State;
                locationRec: Record Location;

            begin
                "Comp State".Reset();
                "Comp State".SetRange(Code, compinfo."State Code");
                if "Comp State".FindFirst() then begin
                    StName := "Comp State".Description;
                    StCode := "Comp State"."State Code (GST Reg. No.)";

                end;
                customer.Reset();
                customer.SetRange(Name, "Purchase Header"."Buy-from Vendor Name");
                if customer.FindFirst() then begin
                    state.Reset();
                    state.SetRange(code, customer."State Code");
                    if state.FindFirst() then begin
                        statecode := state."State Code (GST Reg. No.)";
                        statename := State."Description";
                    end;


                end;

                locationRec.Reset();
                locationRec.SetRange(Code, "Purchase Header"."Location Code");
                if locationRec.FindFirst() then begin
                    Address1 := locationRec.Address;
                    Address2 := locationRec."Address 2";
                    City := locationRec.City;
                    countryCode := locationRec."Country/Region Code";
                    PostCode := locationRec."Post Code";
                    stCodee := locationRec."State Code";
                end;

                state.Reset();
                state.SetRange(code, stCodee);
                if state.FindFirst() then begin
                    stNameCode := state."State Code (GST Reg. No.)";
                    StName := State."Description";
                end;

                //shipment Address empty
                if "Purchase Header"."Ship-to Address" = '' then begin
                    shipAddrs1 := "Purchase Header"."Pay-to Address";
                    shipAddrs2 := "Purchase Header"."Pay-to Address 2";
                    shipcity := "Purchase Header"."Pay-to City";
                    shipstate := statename;
                    shipSateCode := stNameCode;
                end
                //shipment Address not empty
                else begin
                    shipAddrs1 := "Purchase Header"."Ship-to Address";
                    shipAddrs2 := "Purchase Header"."Ship-to Address 2";
                    shipcity := "Purchase Header"."Ship-to City";
                    shipPostCode := "Purchase Header"."Ship-to Post Code";
                    shipCountryCode := "Purchase Header"."Ship-to Country/Region Code";

                    if state.FindFirst() then begin
                        shipstate := state.Description;
                        shipSateCode := state."State Code (GST Reg. No.)";
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
                    // field(Name; SourceExpression)
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
        compinfo.get();
        compinfo.CalcFields(Picture);




    end;


    var
        myInt: Integer;
        compinfo: Record "Company Information";
        "Comp State": Record State;
        Company_State: Text[100];
        CGST: Decimal;
        SGST: Decimal;
        IGST: Decimal;
        Rate: Decimal;
        Rate1: Decimal;
        TotalCGST: Decimal;
        TotalSGST: Decimal;
        TotalIGST: Decimal;
        TotalAmount: Decimal;
        RecItem: Record Item;
        ItemName: Code[50];
        SrNo: Integer;
        TotalTDSAmt: Decimal;
        FinalAmount: Decimal;
        GrandTotal: Decimal;
        TotalTax: Decimal;
        repcheck: Report Check;
        wordsinarray: array[2] of Text;
        AmountinWords: text[200];

        StName: Text[100];
        StCode: Code[10];
        tax: Decimal;
        statecode: Code[10];

        statename: Text[100];
        LineAMT: Decimal;
        TaxTransactionValue: Record "Tax Transaction Value";
        PurchaseHeaderRecordID: Record "Purchase Header";
        //   PostedVoucher: Report "Posted Voucher";
        TaxRecordID: RecordId;
        IGSTtxt: text[10];
        CGSTtxt: text[10];
        SGSTtxt: text[10];
        AmountToVendor: Decimal;
        CGSTRate: Decimal;
        SGSTRate: Decimal;
        IGSTRate: Decimal;
        Total: Decimal;
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
        shipPostCode: Code[20];
        shipCountryCode: Code[20];
        stNamee: Text[20];
        stNameCode: Code[20];
        PostedVoucherRep: Report "Posted Voucher";

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
        Clear(AmountinWords);
        AmountToVendor := 0;

    End;




}