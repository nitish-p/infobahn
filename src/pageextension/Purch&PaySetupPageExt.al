pageextension 50062 PurchandPaySetupPage extends "Purchases & Payables Setup"
{
    layout
    {
        addafter("Quote Nos.")
        {
            field("Purchase Indent Nos."; Rec."Purchase Indent Nos.")

            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}