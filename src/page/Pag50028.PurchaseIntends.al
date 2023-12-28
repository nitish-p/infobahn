page 50028 "Purchase Intends"
{
    ApplicationArea = All;
    Caption = 'Purchase Intends';
    PageType = List;
    SourceTable = "Purchase Indent Header";
    UsageCategory = Lists;
    CardPageId = 50012;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("PR No."; Rec."PR No.")
                {
                    ToolTip = 'Specifies the value of the PR No. field.';
                }
                field("PR Date"; Rec."PR Date")
                {
                    ToolTip = 'Specifies the value of the PR Date field.';
                }
                field(" Customer Name"; Rec." Customer Name")
                {
                    ToolTip = 'Specifies the value of the  Customer Name field.';
                }
                field(" Customer No."; Rec." Customer No.")
                {
                    ToolTip = 'Specifies the value of the  Customer No. field.';
                }
                field(" SO No."; Rec." SO No.")
                {
                    ToolTip = 'Specifies the value of the  SO No. field.';
                }
                field(" SO date"; Rec." SO date")
                {
                    ToolTip = 'Specifies the value of the  SO date field.';
                }
                field(" Type of PR"; Rec." Type of PR")
                {
                    ToolTip = 'Specifies the value of the  Type of PR field.';
                }
                field("Purchase Quote Created"; Rec."Purchase Quote Created")
                {
                    ToolTip = 'Specifies the value of the Purchase Quote Created field.';
                }
                field("Reference Quote No."; Rec."Reference Quote No.")
                {
                    ToolTip = 'Specifies the value of the Reference Quote No. field.';
                }
                field("Supplier 01"; Rec."Supplier 01")
                {
                    ToolTip = 'Specifies the value of the Supplier 01 field.';
                }
                field("Supplier 02"; Rec."Supplier 02")
                {
                    ToolTip = 'Specifies the value of the Supplier 02 field.';
                }
                field("Supplier 03"; Rec."Supplier 03")
                {
                    ToolTip = 'Specifies the value of the Supplier 03 field.';
                }
                field("Supplier Name 01"; Rec."Supplier Name 01")
                {
                    ToolTip = 'Specifies the value of the Supplier Name 01 field.';
                }
                field("Supplier Name 02"; Rec."Supplier Name 02")
                {
                    ToolTip = 'Specifies the value of the Supplier Name 02 field.';
                }
                field("Supplier Name 03"; Rec."Supplier Name 03")
                {
                    ToolTip = 'Specifies the value of the Supplier Name 03 field.';
                }
            }
        }
    }
}
