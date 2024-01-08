tableextension 50031 "Sales&ReceivableSetup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "Contract Nos."; Code[20])
        {
            Caption = 'Contract Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50001; "Customer Subcontract Nos."; Code[20])
        {
            Caption = 'Customer Subcontract Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50003; "Vendor Subcontract Nos."; Code[20])
        {
            Caption = 'Vendor Subcontract Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50004; "Rebate Nos."; code[20])
        {
            Caption = 'Rebate Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
}
