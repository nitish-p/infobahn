table 50010 "Stock Protection"
{
    Caption = 'Stock Protection';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Batch Name"; Code[20])
        {
            Caption = 'Batch Name';
            DataClassification = ToBeClassified;
            // TableRelation = "Item Journal Batch".Name where("Journal Template Name" = field("Batch Name"));

        }
        field(2; "Program ID"; Code[50])
        {
            Caption = 'Program ID';
            DataClassification = ToBeClassified;

        }
        field(3; Rebate; Decimal)
        {
            Caption = 'Rebate';
            DataClassification = ToBeClassified;
        }
        field(4; "NLC Cost"; Decimal)
        {
            Caption = 'NLC Cost';
            DataClassification = ToBeClassified;
        }
        field(5; "NLC Amount"; Decimal)
        {
            Caption = 'NLC Amount';
            DataClassification = ToBeClassified;
        }
        field(6; "Average NLC"; Decimal)
        {
            Caption = 'Average NLC';
            DataClassification = ToBeClassified;
        }
        field(7; "Item Code"; Code[50])
        {
            Caption = 'Item Code';
            DataClassification = ToBeClassified;
            TableRelation = Item."No.";
        }
        field(8; "Item Name"; Code[50])
        {
            Caption = 'Item Name';
            DataClassification = ToBeClassified;
        }
        field(9; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
        field(10; "Rebate Type"; enum StockProtectionType)
        {
            Caption = 'Rebate Type';
            //s OptionMembers = " ",Adjustments,"Stock Protection";
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
                NoSeriesMang: Codeunit NoSeriesManagement;
                ItemInv: Record "Inventory Setup";
                ADJNOSeries: Code[20];
                STPNOSeries: Code[20];
                StockProtection: Record "Stock Protection";

            begin

                StockProtection.Reset();

                // StockProtection.SetRange("Rebate Type", rec."Rebate Type");


                // if StockProtection.FindFirst() then begin
                if rec."Rebate Type" = Rec."Rebate Type"::Adjustments then begin
                    //  if "Rebate Type"::Adjustments = "Rebate Type"::Adjustments then begin
                    ItemInv.get();
                    ADJNOSeries := NoSeriesMang.GetNextNo(ItemInv."Adjustments Nos.", Today, true);
                    rec."Document No." := ADJNOSeries;
                end;
                if rec."Rebate Type" = Rec."Rebate Type"::"Stock Protection" then begin
                    //  if "Rebate Type"::Adjustments = "Rebate Type"::Adjustments then begin
                    ItemInv.get();
                    ADJNOSeries := NoSeriesMang.GetNextNo(ItemInv."Stock Protection Nos.", Today, true);
                    rec."Document No." := ADJNOSeries;
                end;
            end;
            // StockProtection.SetRange("Rebate Type", rec."Rebate Type"::"Stock Protection");
            // if StockProtection.FindFirst() then begin
            //     if "Rebate Type"::"Stock Protection" = "Rebate Type"::"Stock Protection" then begin
            //         ItemInv.get();
            //         STPNOSeries := NoSeriesMang.GetNextNo(ItemInv."Stock Protection Nos.", Today, true);
            //         rec."Document No." := STPNOSeries;
            //     end;

            // end;


            // end;
        }
        field(11; "Line No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }
        field(12; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(13; "Description"; text[50])
        {
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK; "Rebate Type", "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }



}
