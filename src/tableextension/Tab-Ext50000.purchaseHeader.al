tableextension 50000 purchaseHeader extends "Purchase Header"
{
    fields
    {
        field(50000; "SO. No"; code[50])
        {
            Caption = 'SO. No';
            DataClassification = ToBeClassified;
            TableRelation = "Sales Header"."No.";
        }
        field(50001; "Customer Name"; Text[200])
        {
            Caption = 'Customer Name';
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = field("Customer No.")));
        }
        field(50002; "PR No."; Code[50])
        {
            Caption = 'PR No.';
            DataClassification = ToBeClassified;
        }
        field(50003; "PO Types"; enum Purchase_POTypes)
        {
            Caption = 'PO Types';
            DataClassification = ToBeClassified;
        }

        field(50005; "PO Stage"; enum Purchase_POStage)
        {
            Caption = 'PO Stage';
            DataClassification = ToBeClassified;
        }
        field(50006; "Supplier Contract ID"; Code[50])
        {
            Caption = 'Supplier Contract ID';
            DataClassification = ToBeClassified;
            TableRelation = "Vendor sub contract Header"."Contract ID";
        }
        field(50007; "Customer No."; code[50])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                CalcFields("Customer Name");

            end;
        }
    }
}
