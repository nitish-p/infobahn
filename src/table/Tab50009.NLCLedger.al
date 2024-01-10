table 50009 "NLC Ledger"
{
    Caption = 'NLC Ledger';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Program ID"; Code[50])
        {
            Caption = 'Program ID';
            DataClassification = ToBeClassified;
        }
        field(2; "Program Name"; text[100])
        {
            Caption = 'Program Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Document No."; Code[50])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }
        field(4; "Item Code"; Code[50])
        {
            Caption = 'Item Code';
            DataClassification = ToBeClassified;
        }
        field(5; "Item Name"; Text[100])
        {
            Caption = 'Item Name';
            DataClassification = ToBeClassified;
        }
        field(6; "Rebate Type"; Option)
        {
            Caption = 'Rebate Type';
            OptionMembers = " ",OEM,Distributor;
            DataClassification = ToBeClassified;
        }
        field(7; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
        field(8; "Total Rebate"; Decimal)
        {
            Caption = 'Total Rebate';
            DataClassification = ToBeClassified;
        }
        field(9; "Rebate Per Item"; Decimal)
        {
            Caption = 'Rebate Per Item';
            DataClassification = ToBeClassified;
        }
        field(10; "Average NLC"; Decimal)
        {
            Caption = 'Average NLC';
            DataClassification = ToBeClassified;
        }
        field(11; "Rebate Received"; Decimal)
        {
            Caption = 'Rebate Received';
            DataClassification = ToBeClassified;
        }
        field(12; "Remaining Rebate"; Decimal)
        {
            Caption = 'Remaining Rebate';
            DataClassification = ToBeClassified;
        }
        field(13; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(14; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PK; "Document No.")
        {
            Clustered = true;
        }
    }
}
