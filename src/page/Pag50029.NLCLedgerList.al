page 50029 "NLC Ledger List"
{
    ApplicationArea = All;
    Caption = 'NLC Ledger';
    PageType = List;
    SourceTable = "NLC Ledger";
    UsageCategory = Lists;
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Average NLC"; Rec."Average NLC")
                {
                    ToolTip = 'Specifies the value of the Average NLC field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field("Item Code"; Rec."Item Code")
                {
                    ToolTip = 'Specifies the value of the Item Code field.';
                }
                field("Item Name"; Rec."Item Name")
                {
                    ToolTip = 'Specifies the value of the Item Name field.';
                }
                field("Program ID"; Rec."Program ID")
                {
                    ToolTip = 'Specifies the value of the Program ID field.';
                }
                field("Program Name"; Rec."Program Name")
                {
                    ToolTip = 'Specifies the value of the Program Name field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field("Rebate Per Item"; Rec."Rebate Per Item")
                {
                    ToolTip = 'Specifies the value of the Rebate Per Item field.';
                }
                field("Rebate Received"; Rec."Rebate Received")
                {
                    ToolTip = 'Specifies the value of the Rebate Received field.';
                }
                field("Rebate Type"; Rec."Rebate Type")
                {
                    ToolTip = 'Specifies the value of the Rebate Type field.';
                }
                field("Remaining Rebate"; Rec."Remaining Rebate")
                {
                    ToolTip = 'Specifies the value of the Remaining Rebate field.';
                }
                field("Total Rebate"; Rec."Total Rebate")
                {
                    ToolTip = 'Specifies the value of the Total Rebate field.';
                }
            }
        }
    }
}
