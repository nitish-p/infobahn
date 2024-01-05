page 50008 "Vendor Sub Contract"
{
    Caption = 'Vendor Sub Contract';
    PageType = Document;
    SourceTable = "Vendor sub contract Header";
    ApplicationArea = all;
    //UsageCategory = Administration;
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
                field("Customer Contract ID"; Rec."Customer Contract ID")
                {
                    ApplicationArea = all;
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
                field("Contract period"; Rec."Contract period")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract period field.';
                }
                field("Creation Date time"; Rec."Creation Date time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Creation Date time field.';
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Date field.';
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
                field(Vendor; Rec.Vendor)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor field.';
                }
                field("Order Address"; Rec."Order Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Order Address field.';
                }
                field(Processed; Rec.Processed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Processed field.';
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Serial No. field.';
                }
                field("Service Type"; Rec."Service Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Service Type field.';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Date field.';
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
            part(Line; "Vendor Sub Contract Subform")
            {
                SubPageLink = "Document No" = field("Subcontracts ID");
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
            group(new)
            {
                action("Create Purchase Indent")
                {
                    ApplicationArea = All;
                    Image = CreateDocument;
                    trigger OnAction()
                    var
                        myInt: Integer;
                        VendorContractHdr: Record "Vendor sub contract Header";
                        VendorContrcatLine: Record "Vendor Sub Contract Line";
                        PurchIndentHdr: Record "Purchase Indent Header";
                        PurchaseIndentLine: Record "Purchase Indent Line";
                        purchsetup: record "Purchases & Payables Setup";
                        LineNo: Integer;
                        NoserieMang: Codeunit NoSeriesManagement;
                    begin
                        purchsetup.Get();
                        PurchIndentHdr.Init();
                        PurchIndentHdr."PR No." := NoserieMang.GetNextNo(purchsetup."Purchase Indent Nos.", Today, true);
                        PurchIndentHdr."Location Code" := rec.Location;
                        PurchIndentHdr.Insert(true);
                        if PurchIndentHdr.Modify(True) then begin
                            LineNo := 10000;
                            VendorContrcatLine.RESET();
                            VendorContrcatLine.SETRANGE(VendorContrcatLine."Document No", rec."Subcontracts ID");
                            IF VendorContrcatLine.FINDSET THEN
                                REPEAT

                                    PurchaseIndentLine.INIT;
                                    //RecVendorSubContrcatLine."Document Type" := RecVendorSubContrcatLine."Document Type"::Quote;
                                    PurchaseIndentLine."Document No." := PurchIndentHdr."PR No.";
                                    // PurchaseIndentLine."Subcontracts ID" := recVendorSubContractHdr."Subcontracts ID";
                                    if VendorContrcatLine."Type (GL, Item, FA, Resources, Charges)" = VendorContrcatLine."Type (GL, Item, FA, Resources, Charges)"::Item then
                                        PurchaseIndentLine.Type := PurchaseIndentLine.Type::Item
                                    else
                                        if VendorContrcatLine."Type (GL, Item, FA, Resources, Charges)" = VendorContrcatLine."Type (GL, Item, FA, Resources, Charges)"::GL then
                                            PurchaseIndentLine.Type := PurchaseIndentLine.Type::GL
                                        else
                                            if VendorContrcatLine."Type (GL, Item, FA, Resources, Charges)" = VendorContrcatLine."Type (GL, Item, FA, Resources, Charges)"::FA then
                                                PurchaseIndentLine.Type := PurchaseIndentLine.Type::"Fixed Assets"
                                            else
                                                if VendorContrcatLine."Type (GL, Item, FA, Resources, Charges)" = VendorContrcatLine."Type (GL, Item, FA, Resources, Charges)"::Charges then
                                                    PurchaseIndentLine.Type := PurchaseIndentLine.Type::Charges;

                                    PurchaseIndentLine."Line No." := LineNo;
                                    //Message('Inserting Line No: ', RecVendorSubContrcatLine."Line No.");
                                    PurchaseIndentLine.VALIDATE(PurchaseIndentLine."No.", VendorContrcatLine."No.");
                                    PurchaseIndentLine.VALIDATE(PurchaseIndentLine.Quantity, VendorContrcatLine.Quantity);

                                    PurchaseIndentLine.VALIDATE(PurchaseIndentLine."Location Code", VendorContrcatLine.Location);
                                    // PurchaseIndentLine.VALIDATE(PurchaseIndentLine."Shortcut Dimension 2 Code", VendorContrcatLine."Shortcut Dimension 1 Code");
                                    // PurchaseIndentLine.VALIDATE(PurchaseIndentLine."Shortcut Dimension 2 Code", VendorContrcatLine."Shortcut Dimension 2 Code");




                                    PurchaseIndentLine.Insert(True);
                                    LineNo += 10000;

                                UNTIL VendorContrcatLine.NEXT = 0;
                            Page.Run(Page::"Purchase Indent", PurchIndentHdr);

                        end;

                    end;
                }
            }
        }


    }

}