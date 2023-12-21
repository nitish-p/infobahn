pageextension 50020 PostedPurchaseReceiptExt extends "Posted Purchase Receipt"
{
    layout
    {
        addafter(General)
        {
            group(Attributes)
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
    actions
    {
        addlast(processing)
        {
            action("Purchase Recipt Note")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = New;
                // RunObject = report 50106;
                trigger OnAction()
                var
                    shimpmentheader: Record "Purch. Rcpt. Header";

                begin
                    shimpmentheader.Reset();
                    shimpmentheader.SetRange("No.", Rec."No.");
                    Report.RunModal(50148, true, true, shimpmentheader);


                end;
            }

        }
    }
}


