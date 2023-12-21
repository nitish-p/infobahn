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
        }
    }
}
