pageextension 50064 "SalesPerson?PuchaserPageExt" extends "Salesperson/Purchaser Card"
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
