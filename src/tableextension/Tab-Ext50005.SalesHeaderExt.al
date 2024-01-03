tableextension 50005 "Sales Header Ext" extends "Sales Header"
{

    fields
    {
        field(50000; "PO No."; Text[100])
        {
            Caption = 'PO No.';
            DataClassification = ToBeClassified;
            TableRelation = "Purchase Header"."No.";
        }
        field(50030; "Vendor No."; Code[50])
        {
            Caption = 'Vendor No.';
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
            // trigger OnValidate()
            // var
            //     myInt: Integer;
            //     recvendor: Record Vendor;

            // begin
            //     recvendor.Reset();
            //     recvendor.SetRange("No.", rec."Vendor No.");
            //     if FindFirst() then begin
            //         rec."Vendor Name" := recvendor.Name;

            //     end;
            //     // CalcFields("Vendor Name");
            // end;
        }
        field(50001; "Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            DataClassification = ToBeClassified;
            // FieldClass = FlowField;
            // CalcFormula = lookup(vendor.name where("No." = field("Vendor No.")));

        }
        field(50002; "SO types "; enum SalesHeader_SOTypes)
        {
            Caption = 'SO types ';
            DataClassification = ToBeClassified;
        }
        field(50003; "Customer Contract ID"; code[100])
        {
            Caption = 'Customer Contract ID';
            DataClassification = ToBeClassified;
            TableRelation = "Customer Sub Contract Header"."Contract ID";
        }
        field(50004; "SO Stage"; enum SalesHeader_SoStage)
        {
            Caption = 'SO Stage';
            DataClassification = ToBeClassified;
        }
        field(50005; "Dispatch Type"; enum SalesHeader_DispatchedType)
        {
            Caption = 'Dispatch Type';
            DataClassification = ToBeClassified;
        }
        field(50006; "Requested Delivery Date 2"; Date)
        {
            Caption = 'Requested Delivery Date';
            DataClassification = ToBeClassified;
        }
        field(50007; "Customer Agreed Date"; Date)
        {
            Caption = 'Customer Agreed Date';
            DataClassification = ToBeClassified;
        }
        field(50008; "Expected Receipt Date"; Date)
        {
            Caption = 'Expected Receipt Date';
            DataClassification = ToBeClassified;
        }
        field(50009; "Submission Date"; Date)
        {
            Caption = 'Submission Date';
            DataClassification = ToBeClassified;
        }
        field(50010; "Dispatch Date"; Date)
        {
            Caption = 'Dispatch Date';
            DataClassification = ToBeClassified;
        }
        field(50011; "Delivery Date"; Date)
        {
            Caption = 'Delivery Date';
            DataClassification = ToBeClassified;
        }
        field(50012; "Expected Cash Flow Date"; Date)
        {
            Caption = 'Expected Cash Flow Date';
            DataClassification = ToBeClassified;
        }
        field(50013; "Actual Date of Cash Flow"; Date)
        {
            Caption = 'Actual Date of Cash Flow';
            DataClassification = ToBeClassified;
        }
        field(50014; "Each Stage Movement Date"; Date)
        {
            Caption = 'Each Stage Movement Date';
            DataClassification = ToBeClassified;
        }
        field(50015; "Pending for Dispatch"; Boolean)
        {
            Caption = 'Pending for Dispatch';
            DataClassification = ToBeClassified;
        }
        field(50016; "Pending for Delivery (In-Transit)"; Boolean)
        {
            Caption = 'Pending for Delivery (In-Transit)';
            DataClassification = ToBeClassified;
        }
        field(50017; "Pending for POD"; Boolean)
        {
            Caption = 'Pending for POD';
            DataClassification = ToBeClassified;
        }
        field(50018; "Pending for Submission"; Boolean)
        {
            Caption = 'Pending for Submission';
            DataClassification = ToBeClassified;
        }
        field(50019; "Pending for Payment"; Boolean)
        {
            Caption = 'Pending for Payment';
            DataClassification = ToBeClassified;
        }
        field(50020; Submittor; code[100])
        {
            Caption = 'Submittor';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }
        field(50021; Collector; code[100])
        {
            Caption = 'Collector';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }
        field(50022; "Installation Date"; Date)
        {
            Caption = 'Installation Date';
            DataClassification = ToBeClassified;
        }
        field(50023; "POD Date"; Date)
        {
            Caption = 'POD Date';
            DataClassification = ToBeClassified;
        }
        field(50024; "Hand Delivery Person Name"; code[100])
        {
            Caption = 'Hand Delivery Person Name';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }
        field(50025; "Hand Delivery Person Mobile"; code[50])
        {
            Caption = 'Hand Delivery Person Mobile';
            DataClassification = ToBeClassified;
            // TableRelation = "Salesperson/Purchaser";
        }
        field(50026; "Warehouse Pick up Person Name"; code[50])
        {
            Caption = 'Warehouse Pick up Person Name';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }
        field(50027; "Warehouse Pick up Person Mobile"; text[100])
        {
            Caption = 'Warehouse Pick up Person Mobile';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }
        field(50028; "Warehouse Pick up Person KYC Document"; enum SalesHeader_WareHouseKYC)
        {
            Caption = 'Warehouse Pick up Person KYC Document';
            DataClassification = ToBeClassified;
        }
        field(50029; "Customer Ref. No. (PR NO)"; Text[100])
        {
            Caption = 'Customer Ref. No. (PR NO)';
            DataClassification = ToBeClassified;
        }


    }

}
