pageextension 50063 "Sales&ReceivableSetup" extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("Contract Nos."; Rec."Contract Nos.")
            {
                ApplicationArea = all;
            }
            field("Customer Subcontract Nos."; Rec."Customer Subcontract Nos.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Customer Subcontract Nos. field.';
            }
            field("Vendor Subcontract Nos."; Rec."Vendor Subcontract Nos.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Vendor Subcontract Nos. field.';
            }
            field("Rebate Nos."; Rec."Rebate Nos.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Rebate Nos. field.';
            }
        }
    }
}
