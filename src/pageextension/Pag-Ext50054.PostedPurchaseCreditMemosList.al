pageextension 50054 PostedPurchaseCreditMemosList extends "Posted Purchase Credit Memos"
{
    layout
    {
        addafter("Location Code")
        {

            field("SO. No"; Rec."SO. No")
            {
                ApplicationArea = all;
            }
            field("Customer Name"; Rec."Customer Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Customer Name field.';
            }
            field("Customer No."; Rec."Customer No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Salesperson Name field.';
            }
            field("PR No."; Rec."PR No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the PR No. field.';
            }
            field("PO Types"; Rec."PO Types")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the PO Types field.';
            }
            field("PO Stage"; Rec."PO Stage")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the PO Stage field.';
            }
            field("Supplier Contract ID"; Rec."Supplier Contract ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Supplier Contract ID field.';
            }
        }
    }

}
