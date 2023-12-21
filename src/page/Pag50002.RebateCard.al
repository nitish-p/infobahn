page 50002 "Rebate Card"
{
    Caption = 'Master Rebate';
    PageType = Card;
    SourceTable = Rebate;



    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Types of Rebate"; Rec."Types of Rebate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Types of Rebate field.';
                }
            }
        }
    }
}
