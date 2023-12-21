table 50000 District
{
    Caption = 'District';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "District Code"; Code[20])
        {
            Caption = 'District Code';
            DataClassification = ToBeClassified;
        }
        field(2; "District Name"; Text[100])
        {
            Caption = 'District Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Post Code"; Code[10])
        {
            Caption = 'Post Code';
            DataClassification = ToBeClassified;
        }
        field(4; City; Text[100])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
        }
        field(5; State; Text[100])
        {
            Caption = 'State';
            DataClassification = ToBeClassified;
        }
        field(6; Country; Text[50])
        {
            Caption = 'Country';
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PK; "District Code")
        {
            Clustered = true;
        }
    }
}
