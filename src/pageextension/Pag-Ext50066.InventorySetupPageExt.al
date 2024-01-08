pageextension 50066 "Inventory Setup PageExt" extends "Inventory Setup"
{
    layout
    {
        addafter("Item Nos.")
        {

            field("Adjustments Nos."; Rec."Adjustments Nos.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Adjustments Nos. field.';
                TableRelation = "No. Series";
            }
            field("Stock Protection Nos."; Rec."Stock Protection Nos.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Stock Protection Nos. field.';
                TableRelation = "No. Series";
            }
        }
    }
}
