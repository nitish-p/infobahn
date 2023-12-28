pageextension 50160 PurchQuotCompExt extends "Purchase Quote"
{
    layout
    {
        addafter("Assigned User ID")
        {
            field("Referance Quote Comp No."; Rec."Referance Quote Comp No.")
            {
                ApplicationArea = All;
                Editable = false;
            }

        }
    }
}