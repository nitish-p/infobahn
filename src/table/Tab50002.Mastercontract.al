table 50002 "Master contract"
{
    Caption = 'Master contract';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Contract ID"; Text[100])
        {
            Caption = 'Contract ID';
            DataClassification = ToBeClassified;
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
            Caption = 'Contract Type (One time, Flex)';
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
            Caption = 'Status (Open, In Process, Executed)';
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
            TableRelation = "Salesperson/Purchaser".Name;
        }
        field(24; Salesperson; code[50])
        {
            Caption = 'Salesperson';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser".Name;
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
                Customer.Reset();
                Customer.SetRange(Customer."No.", "Customer Code");
                if Customer.FindFirst() then Begin
                    "Customer Name" := Customer.Name;
                End;

            end;
        }
        field(26; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            DataClassification = ToBeClassified;
        }
        field(27; "Customer PO No."; Text[100])
        {
            Caption = 'Customer PO No.';
            DataClassification = ToBeClassified;
        }


    }
    // keys
    // {
    //     key(PK; "Contract ID")
    //     {
    //         Clustered = true;
    //     }
    // }
}
