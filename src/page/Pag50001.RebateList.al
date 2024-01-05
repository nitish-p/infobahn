page 50001 "Rebate List"
{
    Caption = 'Rebate Master';
    PageType = List;
    SourceTable = Rebate;
    CardPageId = 50002;
    ApplicationArea = all;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Program ID"; Rec."Program ID")
                {
                    ApplicationArea = all;
                }
                field("Types of Rebate"; Rec."Types of Rebate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Types of Rebate field.';
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
