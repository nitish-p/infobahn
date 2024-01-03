page 50027 "Purchase Indent Subform"
{
    ApplicationArea = All;
    Caption = 'Purchase Indent Subform';
    PageType = ListPart;
    SourceTable = "Purchase Indent Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(" Type (Item, GL, Fixed Assets, Charges)"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the  Type (Item, GL, Fixed Assets, Charges) field.';
                    ApplicationArea = all;
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the  No.  field.';
                    ApplicationArea = all;
                }
                field("Quantity"; Rec."Quantity")
                {
                    ToolTip = 'Specifies the value of the  Quantity field.';
                    ApplicationArea = all;
                }
                field("Amount"; Rec."Amount")
                {
                    ToolTip = 'Specifies the value of the  Amount field.';
                    ApplicationArea = all;
                }
                field("Cost price by Salesperson"; Rec."Cost price by Salesperson")
                {
                    ToolTip = 'Specifies the value of the Cost price by Salesperson field.';
                    ApplicationArea = all;
                }
                field("Expected Delivery Date (ADD)"; Rec."Expected Delivery Date (ADD)")
                {
                    ToolTip = 'Specifies the value of the  Expected Delivery Date (ADD) field.';
                    ApplicationArea = all;
                    Caption = 'Expected Delivery Date (EDD)';
                }
                field("Customer Delivery Date (CDD)"; Rec."Customer Delivery Date (CDD)")
                {
                    ToolTip = 'Specifies the value of the  Customer Delivery Date (CDD) field.';
                    ApplicationArea = all;

                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = all;
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                    Visible = false;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                        RecPurchaseIndentHeader: Record "Purchase Indent Header";
                    begin
                        // RecPurchaseIndentHeader.Reset(); //used flowfields on table
                        // RecPurchaseIndentHeader.SetRange(RecPurchaseIndentHeader."PR No.", rec."Document No.");
                        // if RecPurchaseIndentHeader.FindFirst() then begin
                        //     RecPurchaseIndentHeader."Shortcut Dimension 1 Code" := rec."Shortcut Dimension 1 Code";
                        //     RecPurchaseIndentHeader."Shortcut Dimension 2 Code" := Rec."Shortcut Dimension 2 Code";
                        // end;
                    end;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ToolTip = 'Specifies the value of the Shortcut Dimension 1 field.';
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ToolTip = 'Specifies the value of the Shortcut Dimension 2 field.';
                }

            }
        }


    }

}
