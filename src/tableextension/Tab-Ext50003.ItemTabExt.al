tableextension 50003 ItemTabExt extends Item
{
    fields
    {
        field(50000; Model; Text[100])
        {
            Caption = 'Model';
            DataClassification = ToBeClassified;
        }
        field(50001; "AMC Contract Name"; Text[100])
        {
            Caption = 'AMC Contract Name';
            DataClassification = ToBeClassified;
        }
        field(50002; "AMC SAID Number"; Text[100])
        {
            Caption = 'AMC SAID Number';
            DataClassification = ToBeClassified;
        }
        field(50003; "AMC Period From"; Date)
        {
            Caption = 'AMC Period From';
            DataClassification = ToBeClassified;
        }
        field(50004; "AMC Period To"; Date)
        {
            Caption = 'AMC Period To';
            DataClassification = ToBeClassified;
        }
        field(50005; "MSP (Minimum Selling Price)"; Decimal)
        {
            Caption = 'MSP (Minimum Selling Price)';
            DataClassification = ToBeClassified;
        }
        field(50006; "Master Warehouse"; code[50])
        {
            Caption = 'Master Warehouse';
            DataClassification = ToBeClassified;
            TableRelation = Location.Code;
        }
        field(50007; NOMENCLATURE; Text[100])
        {
            Caption = 'NOMENCLATURE';
            DataClassification = ToBeClassified;
        }
        field(50008; "Categories 1"; Text[100])
        {
            Caption = 'Categories 1';
            DataClassification = ToBeClassified;
        }
        field(50009; "Categories 2"; Text[100])
        {
            Caption = 'Categories 2';
            DataClassification = ToBeClassified;
        }
        field(50010; "Categories 3"; Text[100])
        {
            Caption = 'Categories 3';
            DataClassification = ToBeClassified;
        }
        field(50011; "Categories 4"; Text[100])
        {
            Caption = 'Categories 4';
            DataClassification = ToBeClassified;
        }
        field(50012; "Categories 5"; Text[100])
        {
            Caption = 'Categories 5';
            DataClassification = ToBeClassified;
        }
        // field(50013; "Product Serial No. setup"; )
        // {
        //     Caption = 'Product Serial No. setup';
        //     DataClassification = ToBeClassified;
        // }
    }
}
