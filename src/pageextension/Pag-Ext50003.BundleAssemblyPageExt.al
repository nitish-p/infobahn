pageextension 50003 BundleAssemblyPageExt extends "Assembly BOM"
{
    layout
    {
        addafter(Position)
        {
            field("Bundled Type"; Rec."Bundled Type")
            {
                ApplicationArea = all;
            }
            field(Customer; Rec.Customer)
            {
                ApplicationArea = all;
            }
            field("Customer Qty"; Rec."Customer Qty")
            {
                ApplicationArea = all;
            }
            field("Component Type (Component or By Product)"; Rec."Component Type (Component or By Product)")
            {
                ApplicationArea = all;
            }
            field(Integration; Rec.Integration)
            {
                ApplicationArea = all;
            }
            field(Item; Rec.Item)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Item field.';
            }
            field(UOM; Rec.UOM)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the UOM field.';
            }
            field("Qty per UOM"; Rec."Qty per UOM")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Qty per UOM field.';
            }
        }
    }
}
