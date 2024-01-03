table 50002 "Master contract"
{
    Caption = 'Master Contract';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Contract ID"; Code[20])
        {
            Caption = 'Contract ID';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(2; "Start Date"; Date)
        {
            Caption = 'Start Date';
            DataClassification = ToBeClassified;
        }
        field(3; "End Date"; Date)
        {
            Caption = 'End Date';
            DataClassification = ToBeClassified;
        }
        field(4; "Contract period"; Enum MainContract_ContractPeriod)
        {
            Caption = 'Contract period';
            DataClassification = ToBeClassified;
        }
        field(5; "Service Type"; enum MainContract_ServiceType)
        {
            Caption = 'Service Type';
            DataClassification = ToBeClassified;
        }
        field(6; "Billing Type"; enum MainContract_BillingType)
        {
            Caption = 'Billing Type';
            DataClassification = ToBeClassified;
        }
        field(7; "Contract Type (One time, Flex)"; enum ContractMain_ContractType)
        {
            Caption = 'Contract Type';
            DataClassification = ToBeClassified;
        }
        field(8; "Commitment Period Start Date"; Date)
        {
            Caption = 'Commitment Period Start Date';
            DataClassification = ToBeClassified;
        }
        field(9; "Commitment Period End Date"; Date)
        {
            Caption = 'Commitment Period End Date';
            DataClassification = ToBeClassified;
        }
        field(10; "Billing frequency"; enum MainContract_BillingFrequency)
        {
            Caption = 'Billing frequency';
            DataClassification = ToBeClassified;
        }
        field(11; "Billing Date"; Date)
        {
            Caption = 'Billing Date';
            DataClassification = ToBeClassified;
        }
        field(12; "Exit Clause Date"; Date)
        {
            Caption = 'Exit Clause Date';
            DataClassification = ToBeClassified;
        }
        field(13; "Exit Clause Remarks"; Text[100])
        {
            Caption = 'Exit Clause Remarks';
            DataClassification = ToBeClassified;
        }
        field(14; Narration; Text[100])
        {
            Caption = 'Narration';
            DataClassification = ToBeClassified;
        }
        field(15; "Contract Signed"; Boolean)
        {
            Caption = 'Contract Signed';
            DataClassification = ToBeClassified;
        }
        field(16; "Status (Open, In Process, Executed)"; enum MainContract_Status)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
        }
        // field(17; "Attachment Option"; Boolean)
        // {
        //     Caption = 'Attachment Option';
        //     DataClassification = ToBeClassified;
        // }
        field(18; "Amend Versions"; Code[50])
        {
            Caption = 'Amend Versions';
            DataClassification = ToBeClassified;
        }
        field(19; "Bank Guarantee"; enum MainContract_BankGuarantee)
        {
            Caption = 'Bank Guarantee ';
            DataClassification = ToBeClassified;
        }
        field(20; "Approval Status"; enum MainContract_ApprovalStatus)
        {
            Caption = 'Approval Status';
            DataClassification = ToBeClassified;
            // OptionMembers = "open","pending for approval","approved","cancle";
        }
        field(21; "Creation Date time"; Date)
        {
            Caption = 'Creation Date time';
            DataClassification = ToBeClassified;
        }
        field(22; "Modify Date Time"; Date)
        {
            Caption = 'Modify Date Time';
            DataClassification = ToBeClassified;
        }
        field(23; "BU Head"; Code[50])
        {
            Caption = 'BU Head';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }
        field(24; Salesperson; code[50])
        {
            Caption = 'Salesperson';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }
        field(25; "Customer Code"; Code[50])
        {
            Caption = 'Customer Code';
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";
            trigger OnValidate()
            var
                myInt: Integer;
                Customer: Record Customer;
            begin
                // CalcFields("Customer Name");

            end;
        }
        field(26; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            DataClassification = ToBeClassified;
            // FieldClass = FlowField;
            // CalcFormula = lookup(Customer.Name where("No." = field("Customer Code")));
        }
        field(27; "Customer PO No."; Text[100])
        {
            Caption = 'Customer PO No.';
            DataClassification = ToBeClassified;
        }
        field(28; "No. Series"; Text[100])
        {
            Caption = 'Customer PO No.';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK; "Contract ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
        NoseriesManagment: Codeunit NoSeriesManagement;
        SalesRecSetup: Record "Sales & Receivables Setup";

    begin

        if Rec."Contract ID" = '' then begin
            SalesRecSetup.Get();
            "Contract ID" := NoseriesManagment.GetNextNo(SalesRecSetup."Contract Nos.", WorkDate, true);
        end;

    end;
}
