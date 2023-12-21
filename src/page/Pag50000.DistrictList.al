page 50000 "District List"
{
    ApplicationArea = All;
    Caption = 'District';
    PageType = List;
    SourceTable = District;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("District Code"; Rec."District Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the District Code field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("District Name"; Rec."District Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the District Name field.';
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Country field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Post Code field.';
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State field.';
                }
            }
        }
    }
}
