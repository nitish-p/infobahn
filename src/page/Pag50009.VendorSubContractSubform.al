page 50009 "Vendor Sub Contract Subform"
{
    Caption = 'Vendor Sub Contract Subform';
    PageType = ListPart;
    SourceTable = "Vendor Sub Contract Line";


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Type (GL, Item, FA, Resources, Charges)"; Rec."Type (GL, Item, FA, Resources, Charges)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type (GL, Item, FA, Resources, Charges) field.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field(Rate; Rec.Rate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rate field.';
                }
                field("Value"; Rec."Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Value field.';
                }
                field("Buy Price"; Rec."Buy Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buy Price field.';
                }
                field(Discount; Rec.Discount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount field.';
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Date field.';
                }
                field("Installation Date"; Rec."Installation Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Installation Date field.';
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location field.';
                }
                field(Margin; Rec.Margin)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Margin field.';
                }
                field(NLC; Rec.NLC)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NLC field.';
                }
                field(Processed; Rec.Processed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Processed field.';
                }
                field(Rebate; Rec.Rebate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rebate field.';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Date field.';
                }
                field("Subcontracts ID"; Rec."Subcontracts ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subcontracts ID field.';
                    Editable = true;
                }


            }
        }
    }
}
