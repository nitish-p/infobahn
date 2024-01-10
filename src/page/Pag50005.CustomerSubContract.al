page 50005 "Customer Sub Contract"
{
    Caption = 'Customer Contract';
    PageType = Document;
    SourceTable = "Customer Sub Contract Header";
    //UsageCategory = Administration;
    ApplicationArea = all;
    Editable = true;
    DelayedInsert = false;




    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Customer Contracts ID"; Rec."Customer Contracts ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subcontracts ID field.';
                }
                field("Contract ID"; Rec."Contract ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract ID field.';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Date field.';
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Date field.';
                }
                field("Contract period"; Rec."Contract period")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract period field.';
                }
                field("Amend Versions"; Rec."Amend Versions")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amend Versions field.';
                }
                field("Approval Status"; Rec."Approval Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approval Status field.';
                }
                field("Billing Date"; Rec."Billing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Billing Date field.';
                }
                field("Billing frequency"; Rec."Billing frequency")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Billing frequency field.';
                }
                field("Branch Code"; Rec."Branch Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Branch Code field.';
                }
                field(Customer; Rec.Customer)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer field.';
                    // trigger OnValidate()
                    // begin
                    //     if recCustomer.get(rec.Customer) then begin
                    //         CustomerName := recCustomer.Name;
                    //     end;
                    // end;
                }
                field("Child Customer"; Rec."Child Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Child Customer field.';
                }
                field("Customer PO No."; Rec."Customer PO No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer PO No. field.';
                }
                field("Commitment Period End Date"; Rec."Commitment Period End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Commitment Period End Date field.';
                }
                field("Commitment Period Start Date"; Rec."Commitment Period Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Commitment Period Start Date field.';
                }
                field("Contract Signed"; Rec."Contract Signed")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract Signed field.';
                }
                field("Contract Type"; Rec."Contract Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract Type field.';
                }
                field("Creation Date time"; Rec."Creation Date time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Creation Date time field.';
                }

                field("Exit Clause Date"; Rec."Exit Clause Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exit Clause Date field.';
                }
                field("Exit Clause Remarks"; Rec."Exit Clause Remarks")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exit Clause Remarks field.';
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location field.';
                }
                field("Modify Date Time"; Rec."Modify Date Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Modify Date Time field.';
                }
                field(Narration; Rec.Narration)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Narration field.';
                }
                field(Processed; Rec.Processed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Processed field.';
                }
                field("SO Stage"; Rec."SO Stage")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SO Stage field.';
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Serial No. field.';
                }
                field("Serial No. End Date"; Rec."Serial No. End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Serial No. End Date field.';
                }
                field("Serial No. Start Date"; Rec."Serial No. Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Serial No. Start Date field.';
                }
                field("Service Type"; Rec."Service Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Service Type field.';
                }
                field("Status"; Rec."Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Subscription ID"; Rec."Subscription ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subscription ID field.';
                }
                field("Tenant ID"; Rec."Tenant ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tenant ID field.';
                }

            }
            part(Line; "Customer Sub Contract Subform")
            {
                SubPageLink = "Customer Contract ID" = field("Customer Contracts ID");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Attachment Option")
            {
                ApplicationArea = all;
                Image = Attachments;
                Promoted = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Message('Attachment working');
                end;

            }
            action("Amend Version")
            {
                ApplicationArea = all;
                image = Versions;
                Promoted = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Message(' ');
                end;

            }
            action("Approval  Status")
            {
                ApplicationArea = all;
                Image = Approval;
                Promoted = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Message('Approval Status Sent');
                end;

            }
            action("Copy Subcontract")
            {
                ApplicationArea = all;
                Promoted = true;
                Image = Copy;
                PromotedOnly = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Message('Copy Contract');
                end;

            }
            action("Auto Update")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Message('Updated!');
                end;

            }
            Group(New)
            {
                Caption = 'Create Vendor Contract';
                action("Create Vendor Contrcat")
                {
                    ApplicationArea = All;
                    Image = CreateDocument;
                    trigger OnAction()
                    var
                        myInt: Integer;
                        recVendorSubContractHdr: Record "Vendor Sub Contract Header";
                        NoseriesMang: Codeunit NoSeriesManagement;
                        recContract: Record "Master contract";
                        SalesRecSetup: Record "Sales & Receivables Setup";
                        recCustomerSubContractLine: Record "Customer Sub Contract Line";
                        RecVendorSubContrcatLine: Record "Vendor Sub Contract Line";
                        LineNo: Integer;


                    begin

                        SalesRecSetup.get();
                        recVendorSubContractHdr.Init();
                        recVendorSubContractHdr."Subcontracts ID" := NoseriesMang.GetNextNo(SalesRecSetup."Vendor Subcontract Nos.", Today, true);
                        recVendorSubContractHdr."Customer Contract ID" := rec."Customer Contracts ID";
                        //recVendorSubContractHdr.Insert(true);
                        recVendorSubContractHdr."Contract ID" := rec."Contract ID";
                        recVendorSubContractHdr."Approval Status" := rec."Approval Status";
                        recVendorSubContractHdr."Billing Date" := rec."Billing Date";
                        recVendorSubContractHdr."Billing frequency" := rec."Billing frequency";
                        recVendorSubContractHdr."Commitment Period Start Date" := rec."Commitment Period Start Date";
                        recVendorSubContractHdr."Commitment Period End Date" := rec."Commitment Period End Date";
                        recVendorSubContractHdr."Contract Signed" := rec."Contract Signed";
                        recVendorSubContractHdr."Contract Type" := rec."Contract Type";
                        recVendorSubContractHdr."Contract period" := Format(rec."Contract period");
                        recVendorSubContractHdr."Creation Date time" := rec."Creation Date time";
                        // recVendorSubContractHdr.Customer := rec."Customer";
                        // recVendorSubContractHdr."Customer PO No." := rec."Customer PO No.";
                        recVendorSubContractHdr."End Date" := rec."End Date";
                        recVendorSubContractHdr."Exit Clause Date" := rec."Exit Clause Date";
                        recVendorSubContractHdr."Exit Clause Remarks" := rec."Exit Clause Remarks";
                        recVendorSubContractHdr."Modify Date Time" := rec."Modify Date Time";
                        recVendorSubContractHdr.Narration := rec.Narration;
                        recVendorSubContractHdr."Service Type" := rec."Service Type";
                        recVendorSubContractHdr."Start Date" := rec."Start Date";
                        recVendorSubContractHdr.Insert(true);
                        IF recVendorSubContractHdr.MODIFY(TRUE) THEN BEGIN
                            LineNo := 10000;
                            recCustomerSubContractLine.RESET();
                            recCustomerSubContractLine.SETRANGE(recCustomerSubContractLine."Customer Contract ID", rec."Customer Contracts ID");
                            IF recCustomerSubContractLine.FINDSET THEN
                                REPEAT

                                    RecVendorSubContrcatLine.INIT;
                                    //RecVendorSubContrcatLine."Document Type" := RecVendorSubContrcatLine."Document Type"::Quote;
                                    RecVendorSubContrcatLine."Document No" := recVendorSubContractHdr."Subcontracts ID";
                                    RecVendorSubContrcatLine."Subcontracts ID" := recVendorSubContractHdr."Subcontracts ID";
                                    if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::Item then
                                        RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)" := RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)"::Item
                                    else
                                        if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::FA then
                                            RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)" := RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)"::FA
                                        else
                                            if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::GL then
                                                RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)" := RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)"::GL
                                            else
                                                if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::Charges then
                                                    RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)" := RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)"::Charges
                                                else
                                                    if recCustomerSubContractLine."Type " = recCustomerSubContractLine."Type "::Resources then
                                                        RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)" := RecVendorSubContrcatLine."Type (GL, Item, FA, Resources, Charges)"::Resources;


                                    RecVendorSubContrcatLine."Line No." := LineNo;
                                    //Message('Inserting Line No: ', RecVendorSubContrcatLine."Line No.");
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine."No.", recCustomerSubContractLine."No.");
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine.Quantity, recCustomerSubContractLine.Quantity);
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine.Rate, recCustomerSubContractLine.Rate);
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine.Value, recCustomerSubContractLine.Value);
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine."Buy Price", recCustomerSubContractLine."Buy Price");
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine.Discount, recCustomerSubContractLine.Discount);
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine."End Date", recCustomerSubContractLine."End Date");
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine."Installation Date", recCustomerSubContractLine."Installation Date");
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine.Location, recCustomerSubContractLine.Location);
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine.Margin, recCustomerSubContractLine.Margin);
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine.NLC, recCustomerSubContractLine.NLC);
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine.Processed, recCustomerSubContractLine.Processed);
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine.Rebate, recCustomerSubContractLine.Rebate);
                                    RecVendorSubContrcatLine.VALIDATE(RecVendorSubContrcatLine."Start Date", recCustomerSubContractLine."Start Date");


                                    RecVendorSubContrcatLine.Insert(True);
                                    LineNo += 10000;

                                UNTIL recCustomerSubContractLine.NEXT = 0;
                        end;

                        Page.Run(Page::"Vendor Sub Contract", recVendorSubContractHdr);
                    end;
                }
            }
            action("Create Sales Order")
            {
                ApplicationArea = All;
                Image = CreateDocument;
                trigger OnAction()
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

                begin
                    recCustomer1.Reset();
                    recCustomer1.SetRange(recCustomer1."No.", rec.Customer);
                    if recCustomer1.FindFirst() then begin
                        Name := recCustomer1.Name;
                    end;
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
            }
        }




    }
    var
        CustomerName: Code[100];
        recCustomer: Record Customer;

}

