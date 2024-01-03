page 50005 "Customer Sub Contract"
{
    Caption = 'Customer Sub Contract ';
    PageType = Card;
    SourceTable = "Customer Sub Contract Header";
    UsageCategory = Administration;
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

                field("Subcontracts ID"; Rec."Subcontracts ID")
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
                field("Child Customer"; Rec."Child Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Child Customer field.';
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
                field(Customer; Rec.Customer)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer field.';
                }
                field("Customer PO No."; Rec."Customer PO No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer PO No. field.';
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
                field("Status (Open, In Process, Executed)"; Rec."Status (Open, In Process, Executed)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status (Open, In Process, Executed) field.';
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
                SubPageLink = "Subcontracts ID" = field("Subcontracts ID");
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
                    Message('Amendverson working');
                end;

            }
            action("Approval Status2")
            {
                ApplicationArea = all;
                Image = Approval;
                Promoted = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Message('approval status working');
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
                    Message('copy subcontract working');
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
                        recCustomerSubContractHdr: Record "Vendor Sub Contract Header";
                        NoseriesMang: Codeunit NoSeriesManagement;
                        recContract: Record "Master contract";
                        SalesRecSetup: Record "Sales & Receivables Setup";
                        recCustomerSubContractLine: Record "Customer Sub Contract Line";
                        RecVendorSubContrcatLine: Record "Vendor Sub Contract Line";

                    begin
                        SalesRecSetup.get();
                        recCustomerSubContractHdr.Init();
                        recCustomerSubContractHdr."Subcontracts ID" := NoseriesMang.GetNextNo(SalesRecSetup."Vendor Subcontract Nos.", Today, true);
                        recCustomerSubContractHdr."Contract ID" := rec."Contract ID";
                        recCustomerSubContractHdr."Approval Status" := rec."Approval Status";
                        recCustomerSubContractHdr."Billing Date" := rec."Billing Date";
                        recCustomerSubContractHdr."Billing frequency" := rec."Billing frequency";
                        recCustomerSubContractHdr."Commitment Period Start Date" := rec."Commitment Period Start Date";
                        recCustomerSubContractHdr."Commitment Period End Date" := rec."Commitment Period End Date";
                        recCustomerSubContractHdr."Contract Signed" := rec."Contract Signed";
                        recCustomerSubContractHdr."Contract Type" := rec."Contract Type";
                        recCustomerSubContractHdr."Contract period" := Format(rec."Contract period");
                        recCustomerSubContractHdr."Creation Date time" := rec."Creation Date time";
                        // recCustomerSubContractHdr.Customer := rec."Customer";
                        // recCustomerSubContractHdr."Customer PO No." := rec."Customer PO No.";
                        recCustomerSubContractHdr."End Date" := rec."End Date";
                        recCustomerSubContractHdr."Exit Clause Date" := rec."Exit Clause Date";
                        recCustomerSubContractHdr."Exit Clause Remarks" := rec."Exit Clause Remarks";
                        recCustomerSubContractHdr."Modify Date Time" := rec."Modify Date Time";
                        recCustomerSubContractHdr.Narration := rec.Narration;
                        recCustomerSubContractHdr."Service Type" := rec."Service Type";
                        recCustomerSubContractHdr."Start Date" := rec."Start Date";
                        recCustomerSubContractHdr.Insert();
                        Page.Run(Page::"Vendor Sub Contract", recCustomerSubContractHdr);
                        //         IF recCustomerSubContractHdr.MODIFY(TRUE) THEN BEGIN
                        //             LineNo := 10000;
                        //             RecVendorSubContrcatLine.RESET;
                        //             RecVendorSubContrcatLine.SETRANGE(RecVendorSubContrcatLine."Subcontracts ID", recCustomerSubContractHdr."Subcontracts ID");
                        //             IF RecVendorSubContrcatLine.FINDSET THEN
                        //                 REPEAT

                        //                     RecVendorSubContrcatLine.INIT;
                        //                     RecVendorSubContrcatLine."Document Type" := RecVendorSubContrcatLine."Document Type"::Quote;
                        //                     RecVendorSubContrcatLine."Document No." := RecVendorSubContrcatLine."No.";

                        //                     if RecPurchIndentLine.Type = RecPurchIndentLine.Type::Item then
                        //                         RecPL.Type := RecPL.Type::Item
                        //                     else
                        //                         if RecPurchIndentLine.Type = RecPurchIndentLine.Type::"Fixed Assets" then
                        //                             RecPL.Type := RecPL.Type::"Fixed Asset"
                        //                         else
                        //                             if RecPurchIndentLine.Type = RecPurchIndentLine.Type::GL then
                        //                                 RecPL.Type := RecPL.Type::"G/L Account"
                        //                             else
                        //                                 if RecPurchIndentLine.Type = RecPurchIndentLine.Type::Charges then
                        //                                     RecPL.Type := RecPL.Type::"Charge (Item)";


                        //                     RecPL."Line No." := LineNo;
                        //                     RecPL.VALIDATE(RecPL."No.", RecPurchIndentLine."No.");
                        //                     RecPL.VALIDATE(RecPL.Quantity, RecPurchIndentLine.Quantity);
                        //                     // RecPL.Validate("Shortcut Dimension 1 Code", RecPurchIndentLine."Shortcut Dimension 1 Code");
                        //                     // RecPL.Validate("Shortcut Dimension 2 Code", RecPurchIndentLine."Shortcut Dimension 2 Code");
                        //                     //RecPL.VALIDATE(RecPL."Qty. to Invoice", RecPL1.Quantity);
                        //                     //RecPL.VALIDATE(RecPL."Direct Unit Cost", 0);

                        //                     RecPL.INSERT;
                        //                     LineNo += 10000;

                        //                 UNTIL RecPurchIndentLine.NEXT = 0;
                    end;
                }
            }



        }
    }
}
