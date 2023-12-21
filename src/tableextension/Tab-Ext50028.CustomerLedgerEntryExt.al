tableextension 50028 CustomerLedgerEntryExt extends "Cust. Ledger Entry"
{
    fields
    {
        field(50000; "Installation Date"; Date)
        {
            Caption = 'Installation Date';
            DataClassification = ToBeClassified;
        }
        field(50001; "Payment Status"; enum CustomerLedgerEntry_PaymentStatus)
        {
            Caption = 'Payment Status';
            DataClassification = ToBeClassified;
        }
        field(50002; "Retention Date"; Date)
        {
            Caption = 'Retention Date';
            DataClassification = ToBeClassified;
        }
        field(50003; "Expected Payment Date 1"; Date)
        {
            Caption = 'Expected Payment Date 1';
            DataClassification = ToBeClassified;
        }
        field(50004; "Expected Payment Amount 1"; Decimal)
        {
            Caption = 'Expected Payment Amount 1';
            DataClassification = ToBeClassified;
        }
        field(50005; "Expected Payment Date 2"; Date)
        {
            Caption = 'Expected Payment Date 2';
            DataClassification = ToBeClassified;
        }
        field(50006; "Expected Payment Amount 2"; Decimal)
        {
            Caption = 'Expected Payment Amount 2';
            DataClassification = ToBeClassified;
        }
        field(50007; "Expected Payment Date 3"; Date)
        {
            Caption = 'Expected Payment Date 3';
            DataClassification = ToBeClassified;
        }
        field(50008; "Expected Payment Amount 3"; Decimal)
        {
            Caption = 'Expected Payment Amount 3';
            DataClassification = ToBeClassified;
        }

    }
}
