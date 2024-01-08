tableextension 50033 InventorySetupExt extends "Inventory Setup"
{
    fields
    {
        field(50000; "Stock Protection Nos."; Code[20])
        {
            Caption = 'Stock Protection Nos.';
            DataClassification = ToBeClassified;
        }
        field(50001; "Adjustments Nos."; Code[20])
        {
            Caption = 'Adjustments Nos.';
            DataClassification = ToBeClassified;
        }

    }
}
