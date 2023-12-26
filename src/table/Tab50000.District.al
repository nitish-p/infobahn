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
        field(3; "Post Code"; Code[50])
        {
            Caption = 'Post Code';
            DataClassification = ToBeClassified;
            TableRelation = "Post Code".Code;
            trigger OnValidate()
            var
                RecPostCode: Record "Post Code";
                myInt: Integer;
            begin

                CalcFields(City);


            end;
        }
        field(4; City; Code[100])
        {
            Caption = 'City';
            // DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup("Post Code".City where(Code = field("Post Code")));
        }
        field(5; State; Text[100])
        {
            Caption = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State.Code;
        }
        field(6; Country; Text[50])
        {
            Caption = 'Country';
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region".Code;
        }
        // field(7; "Line No"; Integer)
        // {

        // }

    }
    keys
    {
        key(PK; "District Code", "District Name")
        {
            Clustered = true;
        }
    }
}
