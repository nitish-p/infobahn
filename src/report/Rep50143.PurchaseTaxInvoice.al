report 50143 "PurchaseTaxInvoice"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'PurchaseTaxInvoice.rdl';

    dataset
    {
        dataitem("Purch. Inv. Header"; "Sales Invoice Header")
        {
            RequestFilterFields = "No.";
            column(Buy_from_Vendor_Name; "Sell-to Customer Name")
            {

            }
            column(Order_No_; "Order No.")
            {

            }
            column(Reference_Invoice_No_; "Reference Invoice No.")
            {

            }
            column(Your_Reference; "Your Reference")
            {

            }
            column(Vendor_GST_Reg__No_; "Customer GST Reg. No.")
            {

            }
            column(Order_Date; "Order Date")
            {

            }
            column(Shipment_Method_Code; "Shipment Method Code")
            {

            }

            column(No_; "No.")
            {

            }
            column(Buy_from_Address; "Sell-to Address")
            {

            }
            column(Buy_from_Address_2; "Sell-to Address 2")
            {

            }
            column(Buy_from_City; "Sell-to City")
            {

            }
            column(Buy_from_Country_Region_Code; "Sell-to Country/Region Code")
            {

            }
            column(Buy_from_Post_Code; "Sell-to Post Code")
            {

            }
            column(Buy_from_Contact; "Sell-to Contact")
            {

            }
            column(SelltoPhoneNo_PurchInvHeader; "Sell-to Phone No.")
            {
            }

            column(GetTerm; GetTerm)
            {

            }
            column(ExternalDocumentNo_PurchInvHeader; "External Document No.")
            {
            }
            column(IRNHash_PurchInvHeader; "IRN Hash")
            {
            }
            //Company Informantion 
            column(Compinfo_Name; compinfo.Name)
            {

            }
            column(Address1; Address1)
            {

            }
            column(Address2; Address2) { }
            column(City; City) { }
            column(PostCode; PostCode)
            {

            }
            column(Compinfo_StateCode; stCodee)
            {

            }
            column(Compinfo_Email; Compinfo."E-Mail")
            {

            }
            column(Compinfo_GST; Compinfo."GST Registration No.")
            {

            }
            column(Compinfo_PAN; Compinfo."P.A.N. No.")
            {
            }
            column(Compinfo_logo; Compinfo.Picture)
            {

            }
            column(Compinfo_Contact; Compinfo."Contact Person")
            {

            }
            column(Compinfo_BankNO; Compinfo."Bank Account No.")
            {

            }
            column(Compinfo_BankIfcs; Compinfo."Bank Branch No.")
            {

            }
            column(Compinfo_Bank; Compinfo."Bank Name")
            {

            }
            column(RegistationNo; compinfo."Registration No.") { }

            //Ship TO Information
            column(Ship_to_Address; "Ship-to Address")
            {
            }
            column(Ship_to_Name; "Ship-to Name")
            {
            }
            column(Ship_to_City; "Ship-to City")
            {
            }
            column(Ship_to_Country_Region_Code; "Ship-to Country/Region Code")
            {
            }
            column(Ship_to_County; "Ship-to County")
            {
            }
            column(Ship_to_Post_Code; "Ship-to Post Code")
            {
            }

            //bank details
            column(Bank_Name; BankeName)
            {

            }
            column(Bank_No; BankAcc)
            {

            }
            column(Bank_Br_No; bankifsc)
            {

            }
            column(stNameCode; stNameCode) { }
            column(stNamee; stNamee) { }
            column(shipAddrs1; shipAddrs1) { }
            column(shipAddrs2; shipAddrs2) { }
            column(shipcity; shipcity) { }
            column(shipSateCode; shipSateCode) { }
            column(shipstate; shipstate) { }
            column(shipPostCode; shipPostCode) { }
            column(statename; statename) { }
            column(statecode; statecode) { }


            dataitem("Purch. Inv. Line"; "Sales Invoice Line") //dataitem having four proporties
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = "Purch. Inv. Header";
                RequestFilterFields = "No.";
                // DataItemTableView=sorting

                column(Quantity; Quantity)
                {
                }
                column(Unit_Cost; "Unit Price")
                {
                }
                Column(Line_Amount; "Line Amount")
                {
                }
                column(Line_Discount__; "Line Discount %")
                {
                }
                column(Unit_of_Measure; "Unit of Measure")
                {
                }
                column(Description; Description)
                {
                }
                column(HSN_SAC_Code; "HSN/SAC Code")
                {

                }
                column(CGSTAmt; Abs(CGSTAmt))
                {
                }
                column(CGSTRate; CGSTRate)
                {
                }
                column(SGSTAmt; Abs(SGSTAmt))
                {
                }
                column(SGSTRate; SGSTRate)
                {
                }
                column(IGStAmt; Abs(IGStAmt))
                {
                }
                column(IGSTRate; IGSTRate)
                {
                }
                column(Line_Discount_Amount; "Line Discount Amount")
                {
                }
                column(FinalAmount; FinalAmount)
                {
                }
                column(AmountInWords; AmountInWords)
                {
                }
                column(TaxInWords2; TaxInWords2)
                {
                }
                column(Tax2; Tax2)
                {
                }
                column(GSTComponentCGST; GSTComponentCGST) { }
                column(GSTComponentIGST; GSTComponentIGST) { }
                column(GSTComponentSGST; GSTComponentSGST) { }


                //bank Details


                trigger OnAfterGetRecord()
                var
                    myInt: Integer;
                    "Purchase Line1": Record "Sales Invoice Line";
                begin
                    "Purchase Line1".Reset();
                    "Purchase Line1".SetRange("Document No.", "Purch. Inv. Header"."No.");
                    if "Purchase Line1".FindSet() then begin
                        repeat
                            total += "Purchase Line1".Quantity * "Purchase Line1"."Unit Price";
                        until "Purchase Line1".Next() = 0;

                    end;

                    Clear(CGSTAmt);
                    Clear(CGSTRate);
                    Clear(SGSTRate);
                    Clear(SGSTAmt);
                    Clear(IGStAmt);
                    Clear(IGSTRate);
                    Clear(GSTComponentCGST);
                    Clear(GSTComponentSGST);
                    Clear(GSTComponentIGST);

                    GSTDetailLeger.Reset();
                    GSTDetailLeger.SetRange(GSTDetailLeger."No.", "Purch. Inv. Line"."No.");
                    GSTDetailLeger.SetRange(GSTDetailLeger."Document No.", "Purch. Inv. Line"."Document No.");
                    GSTDetailLeger.SetRange(GSTDetailLeger."Document Line No.", "Purch. Inv. Line"."Line No.");

                    If GSTDetailLeger.FindSet then
                        repeat
                            if GSTDetailLeger."GST Component Code" = 'CGST' then begin
                                GSTComponentCGST := 'CGST';
                                CGSTAmt := GSTDetailLeger."GST Amount";
                                CGSTRate := GSTDetailLeger."GST %";
                            END Else
                                if GSTDetailLeger."GST Component Code" = 'SGST' Then Begin
                                    GSTComponentSGST := 'SGST';
                                    SGSTRate := GSTDetailLeger."GST %";
                                    SGSTAmt := GSTDetailLeger."GST Amount";
                                End else
                                    if GSTDetailLeger."GST Component Code" = 'IGST' Then begin
                                        GSTComponentIGST := 'IGST';
                                        IGStAmt := GSTDetailLeger."GST Amount";
                                        IGSTRate := GSTDetailLeger."GST %";
                                    end;
                        until GSTDetailLeger.Next = 0;

                    TotalAmount += total + Abs(CGSTAmt) + Abs(SGSTAmt) + Abs(IGStAmt);
                    FinalAmount := TotalAmount;
                    PostedVoucherRep.InitTextVariable();
                    PostedVoucherRep.FormatNoText(Wordsinarray, FinalAmount, ' ');
                    AmountInWords := Wordsinarray[1] + Wordsinarray[2];

                    //Tax In Words
                    Tax += CGSTAmt + SGSTAmt + IGStAmt;
                    tax2 := Abs(Tax);
                    PostedVoucherRep2.InitTextVariable();
                    PostedVoucherRep2.FormatNoText(Wordsinarray2, Tax2, ' ');
                    TaxInWords2 := Wordsinarray2[1] + Wordsinarray2[2];

                end;

            }
            trigger OnAfterGetRecord()
            var
                myInt: Integer;
                locationRec: Record Location;
            begin

                stateRec.Reset();
                stateRec.SetRange(Code, "Purch. Inv. Header"."Location State Code");
                if stateRec.FindFirst() then begin
                    statename := stateRec.Description;
                    statecode := stateRec."State Code (GST Reg. No.)";
                end;

                term.SetRange(term.Code, "Purch. Inv. Header"."Payment Terms Code");
                if term.FindFirst then begin
                    GetTerm := term.Description;
                end;

                BankAccount.Reset();
                BankAccount.SetRange("No.", "No.");
                if BankAccount.Find('-') then begin
                    BankeName := BankAccount.Name;
                    BankAcc := BankAccount."Bank Account No.";
                    bankifsc := BankAccount."Bank Branch No.";
                end;

                locationRec.Reset();
                locationRec.SetRange(Code, "Purch. Inv. Header"."Location Code");
                if locationRec.FindFirst() then begin
                    Address1 := locationRec.Address;
                    Address2 := locationRec."Address 2";
                    City := locationRec.City;
                    countryCode := locationRec."Country/Region Code";
                    PostCode := locationRec."Post Code";
                    stCodee := locationRec."State Code";
                end;

                stateRec.Reset();
                stateRec.SetRange(code, stCodee);
                if stateRec.FindFirst() then begin
                    stNameCode := stateRec."State Code (GST Reg. No.)";
                    stNamee := stateRec."Description";
                end;

                //shipment Address empty
                if "Purch. Inv. Header"."Ship-to Address" = '' then begin
                    shipAddrs1 := "Purch. Inv. Header"."Bill-to Address";
                    shipAddrs2 := "Purch. Inv. Header"."Bill-to Address 2";
                    shipcity := "Purch. Inv. Header"."Bill-to City";
                    shipstate := stNamee;
                    shipSateCode := stNameCode;
                end
                //shipment Address not empty
                else begin
                    shipAddrs1 := "Purch. Inv. Header"."Ship-to Address";
                    shipAddrs2 := "Purch. Inv. Header"."Ship-to Address 2";
                    shipcity := "Purch. Inv. Header"."Ship-to City";
                    shipPostCode := "Purch. Inv. Header"."Ship-to Post Code";

                    stateRec.Reset();
                    stateRec.SetRange(Code, "Purch. Inv. Header"."GST Ship-to State Code");
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
                // group("Bank Account")
                // {
                //     field(Bank_No; BankAccount."Bank Account No.")
                //     {
                //         ApplicationArea = All;
                //         TableRelation = "Bank Account";

                //     }
                //     // field(bankAccount; Banka."Bank Account No.")
                //     // {
                //     //     ApplicationArea = all;
                //     //     TableRelation = "Bank Account";
                //     // }

                // }

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
        Compinfo.get();
        Compinfo.CalcFields(Picture);


    end;

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        myInt: Integer;

        Compinfo: Record "Company Information";
        GSTDetailLeger: Record "Detailed GST Ledger Entry";
        CGSTRate: Decimal;
        CGSTAmt: Decimal;
        SGSTRate: Decimal;
        SGSTAmt: Decimal;
        IGSTRate: Decimal;
        IGStAmt: Decimal;
        BankAccount: Record "Bank Account";
        GSTComponentCGST: Code[20];
        GSTComponentSGST: Code[20];
        GSTComponentIGST: Code[20];

        TotalAmount: Decimal;
        FinalAmount: Decimal;
        repcheck: Report Check;
        AmountInWords: Text[200];
        Wordsinarray: array[2] of Text;
        Wordsinarray2: array[2] of Text;
        TaxInWords2: Text[200];
        Tax: Decimal;
        Tax2: Decimal;
        repcheck2: Report Check;


        total: Decimal;
        Purchline: Record "Purch. Inv. Line";
        term: Record "Payment Terms";
        GetTerm: Text[100];

        BankeName: text[100];
        BankAcc: text[100];
        bankifsc: text[100];
        BankAccount1: Record "Bank Account";
        Address1: Text[50];
        Address2: Text[50];
        City: Text[50];
        PostCode: Text[50];
        countryCode: Text[50];
        stCodee: Code[20];
        stNamee: Text[20];
        stNameCode: Code[20];
        stateRec: Record State;
        shipAddrs1: Text[50];
        shipAddrs2: text[50];
        shipcity: text[20];
        shipstate: Text[50];
        shipSateCode: code[20];
        shipPostCode: Code[20];

        statename: Text[20];
        statecode: code[20];
        PostedVoucherRep: Report "Posted Voucher";
        PostedVoucherRep2: Report "Posted Voucher";
}