pageextension 50002 ItemPageExt extends "Item Card"
{
    layout
    {
        addafter(Item)
        {
            group(Attributes)
            {
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }
                field("AMC Contract Name"; Rec."AMC Contract Name")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("AMC SAID Number"; Rec."AMC SAID Number")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("AMC Period From"; Rec."AMC Period From")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("AMC Period To"; Rec."AMC Period To")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("MSP (Minimum Selling Price)"; Rec."MSP (Minimum Selling Price)")
                {
                    ApplicationArea = All;
                }
                field("Master Warehouse"; Rec."Master Warehouse")
                {
                    ApplicationArea = All;
                }
                field(NOMENCLATURE; Rec.NOMENCLATURE)
                {
                    ApplicationArea = All;
                }
                field("Categories 1"; Rec."Categories 1")
                {
                    ApplicationArea = All;
                }
                field("Categories 2"; Rec."Categories 2")
                {
                    ApplicationArea = All;
                }
                field("Categories 3"; Rec."Categories 3")
                {
                    ApplicationArea = All;
                }
                field("Categories 4"; Rec."Categories 4")
                {
                    ApplicationArea = All;
                }
                field("Categories 5"; Rec."Categories 5")
                {
                    ApplicationArea = All;
                }
                field("Product Serial No"; ' ')
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
