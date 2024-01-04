page 50003 "Main contract List"
{
    ApplicationArea = All;
    Caption = 'Master Contract';
    PageType = List;
    SourceTable = "Master contract";
    UsageCategory = Lists;
    CardPageId = 50004;

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
                field("Amend Versions"; Rec."Amend Versions")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amend Versions field.';
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
}
