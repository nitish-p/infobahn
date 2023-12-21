report 50145 "SalesDebitNote"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Debitnote.rdl';


    dataset
    {
        dataitem("Sales Invoice Header"; "Purch. Inv. Header")
        {
            RequestFilterFields = "No.";
            column(compinfo_name; compinfo.Name)
            {

            }
            column(compinfo_PAN; compinfo."P.A.N. No.")
            {

            }
            column(compinfo_Address; Address1)
            {

            }
            column(Address2; Address2) { }
            column(countryCode; countryCode) { }
            column(compinfo_StateCode; compinfo."State Code")
            {

            }
            column(compinfo_city; City)
            {

            }
            column(compinfo_Email; compinfo."E-Mail")
            {

            }
            column(compinfo_PostCode; PostCode)
            {

            }
            column(compinfo_GST; compinfo."GST Registration No.")
            {

            }
            column(RegistationNo; compinfo."Registration No.") { }

            //Buyer Information
            column(Bill_to_Name; "Buy-from Vendor Name")
            {

            }
            column(Bill_to_Address; "Buy-from Address")
            {

            }
            column(BuyfromAddress2_SalesInvoiceHeader; "Buy-from Address 2")
            {
            }
            column(BuyfromCity_SalesInvoiceHeader; "Buy-from City")
            {
            }

            column(No_; "No.")
            {

            }
            column(Bill_to_City; "Buy-from City")
            {

            }
            column(Bill_to_Country_Region_Code; "Buy-from Country/Region Code")
            {

            }
            column(Bill_to_County; "Buy-from County")
            {

            }
            column(Bill_to_Contact_No_; "Buy-from Contact No.")
            {

            }
            column(Customer_GST_Reg__No_; "Vendor GST Reg. No.")
            {

            }
            column(Reference_Invoice_No_; "Reference Invoice No.")
            {

            }
            // column(State; State)
            // {

            // }
            column(Order_Date; "Order Date")
            {

            }
            column(StateCode; StateCode)
            {

            }
            column(Satename; Satename)
            {

            }

            dataitem("Sales Invoice Line"; "Purch. Inv. Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = "Sales Invoice Header";
                column(Description; Description)
                {
                }
                column(Quantity; Quantity)
                {
                }
                column(Line_Amount; "Line Amount")
                {
                }
                column(Unit_Cost; "Unit Cost")
                {
                }
                column(AmountInWords; AmountInWords)
                {

                }
                column(Final_Amount_Amount; Final_Amount)
                {

                }
                column(IGSTAmt; IGSTAmt)
                {

                }
                column(IGSTRate; IGSTRate)
                {

                }
                column(Total_Amount1; Total_Amount)
                {

                }

                trigger OnAfterGetRecord()
                var
                    myInt: Integer;
                    "Purchase Line1": Record "Purch. Inv. Line";
                begin
                    "Purchase Line1".Reset();
                    "Purchase Line1".SetRange("Document No.", "Sales Invoice Header"."No.");
                    if "Purchase Line1".FindSet() then begin
                        repeat
                            total += "Purchase Line1"."Line Amount";
                        until "Purchase Line1".Next() = 0;

                    end;


                    CLEAR(CGSTRate);

                    CLEAR(CGSTAmt);

                    CLEAR(GSTComponentCGST);

                    CLEAR(SGSTRate);

                    CLEAR(SGSTAmt);

                    CLEAR(GSTComponentSGST);

                    CLEAR(IGSTRate);

                    CLEAR(IGSTAmt);

                    CLEAR(GSTComponentIGST);
                    GSTDetailLeger.Reset();
                    GSTDetailLeger.SetRange("Document No.", "Sales Invoice Line"."Document No.");
                    GSTDetailLeger.SetRange("No.", "Sales Invoice Line"."No.");
                    GSTDetailLeger.SetRange("Document Line No.", "Sales Invoice Line"."Line No.");
                    If GSTDetailLeger.FindSet() then
                        repeat
                            if GSTDetailLeger."GST Component Code" = 'CGST' then begin
                                GSTComponentCGST := 'CGST';
                                CGSTAmt := abs(GSTDetailLeger."GST Amount");
                                CGSTRate := GSTDetailLeger."GST %";
                            end else
                                if GSTDetailLeger."GST Component Code" = 'SGST' then begin
                                    GSTComponentSGST := 'SGST';
                                    SGSTAmt := abs(GSTDetailLeger."GST Amount");
                                    SGSTRate := GSTDetailLeger."GST %";
                                end else
                                    if GSTDetailLeger."GST Component Code" = 'IGST' then begin
                                        GSTComponentIGST := 'IGST';
                                        IGSTAmt := Abs(GSTDetailLeger."GST Amount");
                                        IGSTRate := Abs(GSTDetailLeger."GST %");
                                    end;

                        until GSTDetailLeger.next = 0;
                    Total_Amount := Total + CGSTAmt + SGSTAmt + IGSTAmt;
                    Final_Amount += Total_Amount;

                    PostedVoucherRep.InitTextVariable();
                    PostedVoucherRep.FormatNoText(wordsinarray, Final_Amount, ' ');
                    AmountInWords := wordsinarray[1] + wordsinarray[2];



                end;
            }
            trigger OnAfterGetRecord()
            var
                myInt: Integer;
                Customer: Record Vendor;
                State: Record State;
                locationRec: Record Location;


            begin
                Customer.Reset();
                Customer.SetRange(Customer.Name, "Sales Invoice Header"."Buy-from Vendor Name");
                if Customer.FindFirst() then begin
                    State.Reset();
                    State.SetRange(Code, Customer."State Code");
                    if State.FindFirst() then begin
                        Satename := State.Description;
                        StateCode := State."State Code (GST Reg. No.)";

                    end;
                end;

                locationRec.Reset();
                locationRec.SetRange(Code, "Sales Invoice Header"."Location Code");
                if locationRec.FindFirst() then begin
                    Address1 := locationRec.Address;
                    Address2 := locationRec."Address 2";
                    City := locationRec.City;
                    countryCode := locationRec."Country/Region Code";
                    PostCode := locationRec."Post Code";
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

    end;



    var
        myInt: Integer;
        Satename: Text[100];
        StateCode: text[50];
        Total: Decimal;

        compinfo: Record "Company Information";
        GSTDetailLeger: Record "Detailed GST Ledger Entry";
        CGSTAmt: Decimal;
        CGSTRate: Decimal;
        GSTComponentCGST: Code[20];
        SGSTAmt: Decimal;
        SGSTRate: Decimal;
        GSTComponentSGST: Code[20];
        IGSTAmt: Decimal;
        IGSTRate: Decimal;

        GSTComponentIGST: Code[20];
        Amount: Decimal;
        Total_Amount: Decimal;
        repcheck: report Check;
        AmountInWords: Text[200];
        wordsinarray: array[2] of text;
        Final_Amount: Decimal;
        Address1: Text[50];
        Address2: Text[50];
        City: Text[50];
        PostCode: Text[50];
        countryCode: Text[50];
        PostedVoucherRep: Report "Posted Voucher";
}