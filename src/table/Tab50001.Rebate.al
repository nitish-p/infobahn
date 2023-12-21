table 50001 Rebate
{
    Caption = 'Rebate';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Types of Rebate"; enum Rebate_Types)
        {
            Caption = 'Types of Rebate';
        }
    }
    keys
    {
        key(PK; "Types of Rebate")
        {
            Clustered = true;
        }
    }
}
