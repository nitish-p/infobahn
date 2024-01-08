table 50010 "Stock Protection"
{
    Caption = 'Stock Protection';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Batch Name"; Code[20])
        {
            Caption = 'Batch Name';
            TableRelation = "Item Journal Batch".Name where("Journal Template Name" = field("Batch Name"));

        }
        field(2; "Program ID"; Code[50])
        {
            Caption = 'Program ID';

        }
        field(3; Rebate; Decimal)
        {
            Caption = 'Rebate';
        }
        field(4; "NLC Cost"; Decimal)
        {
            Caption = 'NLC Cost';
        }
        field(5; "NLC Amount"; Decimal)
        {
            Caption = 'NLC Amount';
        }
        field(6; "Average NLC"; Decimal)
        {
            Caption = 'Average NLC';
        }
        field(7; "Item Code"; Code[50])
        {
            Caption = 'Item Code';
        }
        field(8; "Item Name"; Code[100])
        {
            Caption = 'Item Name';
        }
        field(9; Quantity; Integer)
        {
            Caption = 'Quantity';
        }
        field(10; "Rebate Type"; Option)
        {
            Caption = 'Rebate Type';
            OptionMembers = " ",Adjustments,"Stock Protection";
        }
        field(11; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(13; "Description"; text[50])
        {
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK; "Batch Name", "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
        itemjoubarches: Record "Item Journal Batch";
    begin

    end;
}
