tableextension 50029 PostCodeExt extends "Post Code"
{
    fields
    {
        field(50000; "District Code"; Code[50])
        {
            Caption = 'District Code';
            DataClassification = ToBeClassified;
            TableRelation = District."District Code";
        }
    }
}
