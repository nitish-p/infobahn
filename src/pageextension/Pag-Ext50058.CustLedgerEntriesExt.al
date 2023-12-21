pageextension 50058 CustLedgerEntriesExt extends "Customer Ledger Entries"
{
    layout
    {
        addafter(Description)
        {
            field("Installation Date"; Rec."Installation Date")
            {
                ApplicationArea = All;
            }
            field("Payment Status"; Rec."Payment Status")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Payment Status field.';
            }
            field("Retention Date"; Rec."Retention Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Retention Date field.';
            }
            field("Expected Payment Date 1"; Rec."Expected Payment Date 1")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Expected Payment Date 1 field.';
            }
            field("Expected Payment Date 2"; Rec."Expected Payment Date 2")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Expected Payment Date 2 field.';
            }
            field("Expected Payment Date 3"; Rec."Expected Payment Date 3")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Expected Payment Date 3 field.';
            }
            field("Expected Payment Amount 1"; Rec."Expected Payment Amount 1")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Expected Payment Amount 1 field.';
            }
            field("Expected Payment Amount 2"; Rec."Expected Payment Amount 2")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Expected Payment Amount 2 field.';
            }
            field("Expected Payment Amount 3"; Rec."Expected Payment Amount 3")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Expected Payment Amount 3 field.';
            }
        }
    }
}
