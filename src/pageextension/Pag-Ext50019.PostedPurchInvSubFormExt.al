pageextension 50019 PostedPurchInvSubFormExt extends "Posted Purch. Invoice Subform"
{
    layout
    {
        addafter(Description)
        {
            field("Program ID"; Rec."Program ID")
            {
                ApplicationArea = all;
            }
            field("Program Name"; Rec."Program Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Program Name field.';
            }
            field(Rebate; Rec.Rebate)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Rebate field.';
            }
            field("NLC Cost"; Rec."NLC Cost")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the NLC Cost field.';
            }
            field("NLC Amount"; Rec."NLC Amount")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the NLC Amount field.';
            }
            field("Average NLC"; Rec."Average NLC")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Average NLC field.';
            }
            field("Supplier Contract"; Rec."Supplier Contract")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Supplier Contract field.';
            }

        }
    }
}
