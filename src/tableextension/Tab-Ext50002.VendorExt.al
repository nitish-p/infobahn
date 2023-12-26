tableextension 50002 "Vendor Ext" extends Vendor
{
    fields
    {
        field(50000; MSME; Boolean)
        {
            Caption = 'MSME';
            DataClassification = ToBeClassified;
        }
        field(50001; "MSME Status (Micro, Medium, etc.)"; enum Vendor_MSMEStatus)
        {
            Caption = 'MSME Status (Micro, Medium, etc.)';
            DataClassification = ToBeClassified;
        }
        field(50002; "CIN No."; Code[20])
        {
            Caption = 'CIN No.';
            DataClassification = ToBeClassified;
        }
        field(50003; "District Code"; code[50])
        {
            Caption = 'District Code';
            DataClassification = ToBeClassified;
            TableRelation = District."District Code";
        }

    }
}
