pageextension 50009 PostedSalesInvSubform extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter(Description)
        {
            field("Program ID"; Rec."Program ID")
            {
                ApplicationArea = all;
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
            field(Mrgin; Rec.Mrgin)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Mrgin field.';
            }
            field("Mrgin %"; Rec."Mrgin %")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Mrgin % field.';
            }
            field("Customer Contract"; Rec."Customer Contract")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Customer Contract field.';
            }
            field("No. of Boxes"; Rec."No. of Boxes")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the No. of Boxes field.';
            }
            field("Each Box Component"; Rec."Each Box Component")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Each Box Component field.';
            }
            field(Weight; Rec.Weight)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Weight field.';
            }
            field(Height; Rec.Height)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Height field.';
            }
            field(Lenght; Rec.Lenght)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Lenght field.';
            }
            field(Breath; Rec.Breath)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Breath field.';
            }
            field("Customer Delivery Date"; Rec."Customer Delivery Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Customer Delivery Date field.';
            }
            field("Agreed Delivery Date"; Rec."Agreed Delivery Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Agreed Delivery Date field.';
            }
            field("Serial no"; Rec."Serial no")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Serial no field.';
            }
            field(Bid; Rec.Bid)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Bid No. field.';
            }
            field("Bid No."; Rec."Bid No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Bid No. field.';
            }


        }
    }
}
