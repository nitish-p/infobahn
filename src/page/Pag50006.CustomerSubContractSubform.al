page 50006 "Customer Sub Contract Subform"
{
    Caption = 'Customer Sub Contract Subform';
    PageType = ListPart;
    SourceTable = "Customer Sub Contract Line";
    // ApplicationArea = all;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Type "; Rec."Type ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type  field.';
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
                field(Discount; Rec.Discount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discount field.';
                }
                field(NLC; Rec.NLC)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NLC field.';
                }
                field("Installation Date"; Rec."Installation Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Installation Date field.';
                }
                field(Rebate; Rec.Rebate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rebate field.';
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location field.';
                }
                field(Processed; Rec.Processed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Processed field.';
                }
                field("Buy Price"; Rec."Buy Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Buy Price field.';
                }
                field(Margin; Rec.Margin)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Margin field.';
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
