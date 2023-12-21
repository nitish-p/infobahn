table 50005 "Vendor sub contract Header"
{
    Caption = 'Vendor sub contract';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Subcontracts ID"; Code[50])
        {
            Caption = 'Subcontracts ID';
            DataClassification = ToBeClassified;
        }
        field(2; "Contract ID"; Code[50])
        {
            Caption = 'Contract ID';
            DataClassification = ToBeClassified;
        }
        field(3; "Start Date"; Date)
        {
            Caption = 'Start Date';
            DataClassification = ToBeClassified;
        }
        field(4; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(5; "Contract period"; Code[50])
        {
            Caption = 'Contract period';
            DataClassification = ToBeClassified;
        }
        field(6; "Service Type"; enum VendorSubCon_ServiceType)
        {
            Caption = 'Service Type';
            DataClassification = ToBeClassified;
        }
        field(7; "Contract Type"; enum VendorSubCon_ContractType)
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
        field(10; "Billing frequency"; enum VendorSubCon_BillingFrequency)
        {
            Caption = 'Billing frequency';
            DataClassification = ToBeClassified;
        }
        field(11; "Billing Date"; Date)
        {
            Caption = 'Billing Date';
            DataClassification = ToBeClassified;
        }
        field(12; Vendor; Code[50])
        {
            Caption = 'Vendor';
            DataClassification = ToBeClassified;
        }
        field(13; "Order Address"; Code[50])
        {
            Caption = 'Order Address';
            DataClassification = ToBeClassified;
        }
        field(14; Location; Code[50])
        {
            Caption = 'Location';
            DataClassification = ToBeClassified;
        }
        field(15; "Exit Clause Date"; Date)
        {
            Caption = 'Exit Clause Date';
            DataClassification = ToBeClassified;
        }
        field(16; "Exit Clause Remarks"; Text[100])
        {
            Caption = 'Exit Clause Remarks';
            DataClassification = ToBeClassified;
        }
        field(17; Narration; Text[100])
        {
            Caption = 'Narration';
            DataClassification = ToBeClassified;
        }
        field(18; "Contract Signed"; Boolean)
        {
            Caption = 'Contract Signed';
            DataClassification = ToBeClassified;
        }
        field(19; "Status (Open, In Process, Executed)"; enum VendorSubCon_Status)
        {
            Caption = 'Status (Open, In Process, Executed)';
            DataClassification = ToBeClassified;
        }

        field(20; "Amend Versions"; Code[50])
        {
            Caption = 'Amend Versions';
            DataClassification = ToBeClassified;
        }
        field(21; Processed; Boolean)
        {
            Caption = 'Processed';
            DataClassification = ToBeClassified;
        }
        field(22; "Approval Status"; enum VendorSubCon_ApprovalStatus)
        {
            Caption = 'Approval Status';
            DataClassification = ToBeClassified;
        }
        field(23; "Creation Date time"; Date)
        {
            Caption = 'Creation Date time';
            DataClassification = ToBeClassified;
        }
        field(24; "Modify Date Time"; Date)
        {
            Caption = 'Modify Date Time';
            DataClassification = ToBeClassified;
        }
        field(25; "Serial No."; Text[100])
        {
            Caption = 'Serial No.';
            DataClassification = ToBeClassified;
        }
        field(26; "Tenant ID"; Code[50])
        {
            Caption = 'Tenant ID';
            DataClassification = ToBeClassified;
        }
        field(27; "Subscription ID"; Code[50])
        {
            Caption = 'Subscription ID';
            DataClassification = ToBeClassified;
        }
        field(28; "Branch Code"; Code[50])
        {
            Caption = 'Branch Code';
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PK; "Subcontracts ID")
        {
            Clustered = true;
        }
    }
}
