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
        field(2; "Program ID"; Code[50])
        {
            Caption = 'Program ID';
        }
        field(3; "Prgram Name"; text[100])
        {
            Caption = 'Program Name';
        }
        field(4; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(5; "End Date"; Date)
        {
            Caption = 'End Date';
        }
    }
    keys
    {
        key(PK; "Program ID")
        {
            Clustered = true;
        }
    }
}
