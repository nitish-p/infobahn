tableextension 50030 PurchandPaySetup extends "Purchases & Payables Setup"
{
    fields
    {
        field(50103; "Purchase Indent Nos."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    var
        myInt: Integer;
}