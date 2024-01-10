page 50004 "Main contract card"
{
    Caption = 'Master Contract';
    PageType = Card;
    SourceTable = "Master contract";
    //ApplicationArea = all;
    DelayedInsert = false;


    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Contract ID"; Rec."Contract ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract ID field.';
                }

                field("Approval Status"; Rec."Approval Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approval Status field.';
                }
                field("BU Head"; Rec."BU Head")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BU Head field.';
                }
                field("Bank Guarantee"; Rec."Bank Guarantee")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Guarantee  field.';
                }
                field("Billing Date"; Rec."Billing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Billing Date field.';
                }
                field("Billing Type"; Rec."Billing Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Billing Type field.';
                }
                field("Billing frequency"; Rec."Billing frequency")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Billing frequency field.';
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
                field("Contract Type (One time, Flex)"; Rec."Contract Type (One time, Flex)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract Type (One time, Flex) field.';
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
                field("Customer Code"; Rec."Customer Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Code field.';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                        recCustomer: Record Customer;
                    begin
                        recCustomer.Reset();
                        recCustomer.SetRange("No.", rec."Customer Code");
                        if recCustomer.findfirst() then begin
                            rec."Customer Name" := recCustomer.Name;
                        end;

                    end;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Customer PO No."; Rec."Customer PO No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer PO No. field.';
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
                field(Salesperson; Rec.Salesperson)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Salesperson field.';
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
            action("SO Creation")
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
            action("Send for approval")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Message('Send for approvel');
                end;

            }
            action("Cancel for approval")
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
            action("Approve")
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
            action("cancel")
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
                Caption = 'Create Customer Contract';
                action("Create Customer Contrcat")
                {
                    ApplicationArea = All;
                    Image = CreateDocument;
                    trigger OnAction()
                    var
                        myInt: Integer;
                        recCustomerSubContractHdr: Record "Customer Sub Contract Header";
                        NoseriesMang: Codeunit NoSeriesManagement;
                        recContract: Record "Master contract";
                        SalesRecSetup: Record "Sales & Receivables Setup";

                    begin
                        SalesRecSetup.get();
                        recCustomerSubContractHdr.Init();
                        recCustomerSubContractHdr."Customer Contracts ID" := NoseriesMang.GetNextNo(SalesRecSetup."Customer Subcontract Nos.", Today, true);
                        recCustomerSubContractHdr."Contract ID" := rec."Contract ID";
                        recCustomerSubContractHdr."Approval Status" := rec."Approval Status";
                        recCustomerSubContractHdr."Billing Date" := rec."Billing Date";
                        recCustomerSubContractHdr."Billing frequency" := rec."Billing frequency";
                        recCustomerSubContractHdr."Commitment Period Start Date" := rec."Commitment Period Start Date";
                        recCustomerSubContractHdr."Commitment Period End Date" := rec."Commitment Period End Date";
                        recCustomerSubContractHdr."Contract Signed" := rec."Contract Signed";
                        recCustomerSubContractHdr."Contract Type" := rec."Contract Type (One time, Flex)";
                        recCustomerSubContractHdr."Contract period" := Format(rec."Contract period");
                        recCustomerSubContractHdr."Creation Date time" := rec."Creation Date time";
                        recCustomerSubContractHdr.Customer := rec."Customer Code";
                        recCustomerSubContractHdr."Customer PO No." := rec."Customer PO No.";
                        recCustomerSubContractHdr."End Date" := rec."End Date";
                        recCustomerSubContractHdr."Exit Clause Date" := rec."Exit Clause Date";
                        recCustomerSubContractHdr."Exit Clause Remarks" := rec."Exit Clause Remarks";
                        recCustomerSubContractHdr."Modify Date Time" := rec."Modify Date Time";
                        recCustomerSubContractHdr.Narration := rec.Narration;
                        recCustomerSubContractHdr."Service Type" := rec."Service Type";
                        recCustomerSubContractHdr."Start Date" := rec."Start Date";
                        recCustomerSubContractHdr.Insert();
                        Page.Run(Page::"Customer Sub Contract", recCustomerSubContractHdr);
                    end;
                }
            }
        }
    }
}
