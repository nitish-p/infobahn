pageextension 50059 PostCodeExt extends "Post Codes"
{
    layout
    {
        addafter(City)
        {
            field("District Code"; Rec."District Code")
            {
                ApplicationArea = all;
            }
        }
    }
}
