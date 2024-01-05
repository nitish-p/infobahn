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
                field("Program ID"; Rec."Program ID")
                {
                    ApplicationArea = all;
                }
                field("Prgram Name"; Rec."Prgram Name")
                {
                    ApplicationArea = all;
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Date field.';
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Date field.';
                }
            }
        }
    }
}
