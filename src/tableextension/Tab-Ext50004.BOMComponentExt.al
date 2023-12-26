tableextension 50004 BOMComponentExt extends "BOM Component"
{
    fields
    {
        field(50000; "Bundled Type"; enum BOM_BundledType)
        {
            Caption = 'Bundled Type';
            DataClassification = ToBeClassified;
        }
        field(50002; Customer; text[100])
        {
            Caption = 'Customer';
            DataClassification = ToBeClassified;
            TableRelation = Customer.Name;
        }
        field(50003; "Customer Qty"; Decimal)
        {
            Caption = 'Customer Qty';
            DataClassification = ToBeClassified;
        }
        field(50004; "Component Type (Component or By Product)"; enum BOM_ComponentType)
        {
            Caption = 'Component Type (Component or By Product)';
            DataClassification = ToBeClassified;
        }
        field(50005; Integration; Boolean)
        {
            Caption = 'Integration';
            DataClassification = ToBeClassified;
        }

    }
}
