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
        field(50004; "Component Type"; enum BOM_ComponentType)
        {
            Caption = 'Component Type';
            DataClassification = ToBeClassified;
        }
        field(50005; Integration; Boolean)
        {
            Caption = 'Integration';
            DataClassification = ToBeClassified;
        }
        field(50006; Item; Code[50])
        {
            Caption = 'Item';
            DataClassification = ToBeClassified;
            TableRelation = Item."No.";
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                CalcFields(UOM);
                CalcFields("Qty per UOM");

            end;
        }
        field(50007; UOM; Code[50])
        {
            Caption = 'UOM';
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup(Item."Base Unit of Measure" where("No." = field(Item)));
        }
        field(50008; "Qty per UOM"; Code[50])
        {
            Caption = 'Qty per UOM';
            DataClassification = ToBeClassified;
            TableRelation = "Item Unit of Measure"."Qty. per Unit of Measure";

        }


    }
}
