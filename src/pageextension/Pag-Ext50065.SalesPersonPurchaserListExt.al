pageextension 50065 "SalesPerson/PurchaserListExt" extends "Salespersons/Purchasers"
{

    layout
    {
        addafter("Phone No.")
        {

            field("Auto Email"; Rec."Auto Email")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Auto Email field.';
            }
        }
    }
}
