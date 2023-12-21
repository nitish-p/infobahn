tableextension 50021 PurchaseReciptLineExt extends "Purch. Rcpt. Line"
{
    fields
    {
        field(50000; "Program ID"; Code[50])
        {
            Caption = 'Program ID';
            DataClassification = ToBeClassified;
        }
        field(50001; "Program Name"; Text[100])
        {
            Caption = 'Program Name';
            DataClassification = ToBeClassified;
        }
        field(50002; Rebate; Decimal)
        {
            Caption = 'Rebate';
            DataClassification = ToBeClassified;
        }
        field(50003; "NLC Cost"; Decimal)
        {
            Caption = 'NLC Cost';
            DataClassification = ToBeClassified;
        }
        field(50004; "NLC Amount"; Decimal)
        {
            Caption = 'NLC Amount';
            DataClassification = ToBeClassified;
        }
        field(50005; "Average NLC"; Decimal)
        {
            Caption = 'Average NLC';
            DataClassification = ToBeClassified;
        }
        field(50006; "Supplier Contract"; Code[50])
        {
            Caption = 'Supplier Contract';
            DataClassification = ToBeClassified;
        }
    }
}
