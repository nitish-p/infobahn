table 50008 "Purchase Indent Line"
{
    Caption = 'Purchase Indent Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Type"; enum PurchaseIndent_Types)
        {
            Caption = 'Type (Item, GL, Fixed Assets, Charges)';
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
            Caption = 'Customer Delivery Date (CDD)';
            DataClassification = ToBeClassified;
        }
        field(7; "Expected Delivery Date (ADD)"; Date)
        {
            Caption = 'Expected Delivery Date (ADD)';
            DataClassification = ToBeClassified;
        }
        field(8; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}