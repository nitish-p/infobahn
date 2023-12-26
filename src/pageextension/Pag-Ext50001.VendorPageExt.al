pageextension 50001 VendorPageExt extends "Vendor Card"
{
    layout
    {
        addafter(General)
        {
            group(Attributes)
            {
                field(MSME; Rec.MSME)
                {
                    ApplicationArea = All;
                }
                field("MSME Status (Micro, Medium, etc.)"; Rec."MSME Status (Micro, Medium, etc.)")
                {
                    ApplicationArea = All;
                }
                field("CIN No."; Rec."CIN No.")
                {
                    ApplicationArea = All;
                }
                field("District Code"; Rec."District Code")
                {
                    ApplicationArea = all;
                    TableRelation = District."District Code";
                }

            }
        }
    }
}
