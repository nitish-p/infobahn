page 50007 "Customer Sub Contract List"
{
    ApplicationArea = All;
    Caption = 'Customer Sub Contract List';
    PageType = List;
    SourceTable = "Customer Sub Contract Header";
    UsageCategory = Lists;
    CardPageId = 50005;

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
                field("Contract Type"; Rec."Contract Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract Type field.';
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
        }
    }
}
