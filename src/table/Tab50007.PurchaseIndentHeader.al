table 50007 "Purchase Indent Header"
{
    Caption = 'Purchase Indent Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "PR No."; Code[20])
        {
            Caption = 'PR No.';
            DataClassification = ToBeClassified;

        }
        field(2; "PR Date"; Date)
        {
            Caption = 'PR Date';
            DataClassification = ToBeClassified;
        }
        field(3; " Type of PR"; Enum PurchaseIndent_TypeofPR)
        {
            Caption = ' Type of PR';
            DataClassification = ToBeClassified;
        }
        field(4; " SO No."; Code[50])
        {
            Caption = ' SO No.';
            DataClassification = ToBeClassified;
        }
        field(5; " SO date"; Date)
        {
            Caption = ' SO date';
            DataClassification = ToBeClassified;
        }
        field(6; " Customer No."; Code[20])
        {
            Caption = ' Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";

        }
        field(7; " Customer Name"; Text[100])
        {
            Caption = ' Customer Name';
            DataClassification = ToBeClassified;

        }
        field(8; "Supplier 01"; Code[20])
        {
            Caption = 'Supplier 01';
            DataClassification = ToBeClassified;
            TableRelation = vendor."No.";

        }
        field(9; "Supplier Name 01"; Text[100])
        {
            Caption = 'Supplier Name 01';
            DataClassification = ToBeClassified;

        }
        field(10; "Supplier 02"; Code[20])
        {
            Caption = 'Supplier 02';
            DataClassification = ToBeClassified;
            TableRelation = vendor."No.";
        }
        field(11; "Supplier Name 02"; Text[100])
        {
            Caption = 'Supplier Name 02';
            DataClassification = ToBeClassified;
        }
        field(12; "Supplier 03"; Code[20])
        {
            Caption = 'Supplier 03';
            DataClassification = ToBeClassified;
            TableRelation = vendor."No.";
        }
        field(13; "Supplier Name 03"; Text[100])
        {
            Caption = 'Supplier Name 03';
            DataClassification = ToBeClassified;
        }
        field(14; "Purchase Quote Created"; Boolean)
        {
            Caption = 'Purchase Quote Created';
            DataClassification = ToBeClassified;
        }
        field(15; "Reference Quote No."; Code[20])
        {
            Caption = 'Reference Quote No.';
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PK; "PR No.")
        {
            Clustered = true;
        }
    }
}
