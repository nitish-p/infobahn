table 50008 "Purchase Indent Line"
{
    Caption = 'Purchase Indent Line';
    DataClassification = ToBeClassified;

    fields
    {

        field(1; "Type"; enum PurchaseIndent_Types)
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;

        }
        field(2; "No."; Code[50])
        {
            Caption = 'No. ';
            DataClassification = ToBeClassified;
            TableRelation = if ("Type" = const(" ")) "Standard Text"
            else
            if ("Type" = const(GL)) "G/L Account"
            else
            if ("Type" = const("Fixed Assets")) "Fixed Asset"
            else
            IF ("Type" = CONST(Item)) Item WHERE(Blocked = CONST(false), "Sales Blocked" = CONST(false))
            ELSE
            IF ("Type" = CONST(Item)) Item WHERE(Blocked = CONST(false))
            else
            if ("Type" = const(Charges)) "Item Charge";
            trigger OnValidate()
            var
                myInt: Integer;
            begin

            end;
        }
        field(3; "Quantity"; Integer)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
        field(4; "Cost price by Salesperson"; Decimal)
        {
            Caption = 'Cost price by Salesperson';
            DataClassification = ToBeClassified;
        }
        field(5; "Amount"; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
        field(6; "Customer Delivery Date (CDD)"; Date)
        {
            Caption = 'Customer Delivery Date';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(7; "Expected Delivery Date (ADD)"; Date)
        {
            Caption = 'Expected Delivery Date';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(8; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }
        field(9; "Location Code"; Code[50])
        {
            Caption = 'Location Code';
            DataClassification = ToBeClassified;
            // FieldClass = FlowField;
            // CalcFormula = lookup("Purchase Indent Header"."Location Code" where("PR No." = field("Document No.")));

        }
        field(10; "Shortcut Dimension 1 Code"; Code[50])
        {
            Caption = 'Shortcut Dimension 1';
            DataClassification = ToBeClassified;
            // FieldClass = FlowField;
            // CalcFormula = lookup("Purchase Indent Header"."Shortcut Dimension 1 Code" where("PR No." = field("Document No.")));
        }
        field(11; "Shortcut Dimension 2 Code"; Code[50])
        {
            Caption = 'Shortcut Dimension 2';
            DataClassification = ToBeClassified;
            // FieldClass = FlowField;
            // CalcFormula = lookup("Purchase Indent Header"."Shortcut Dimension 2 Code" where("PR No." = field("Document No.")));
        }
        field(12; "Line No."; Integer)
        {

            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(Key1; Type, "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
