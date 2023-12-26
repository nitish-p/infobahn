table 50003 "Customer Sub Contract Header"
{
    Caption = 'Customer Sub Contract Header';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Subcontracts ID"; Code[50])
        {
            Caption = 'Subcontracts ID';
            DataClassification = ToBeClassified;
        }
        field(2; "Contract ID"; code[50])
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
            DataClassification = ToBeClassified;
        }
        field(5; "Contract period"; Code[50])
        {
            Caption = 'Contract period';
            DataClassification = ToBeClassified;
        }
        field(6; "Service Type"; enum CustomerSubContract_ServiceType)
        {
            Caption = 'Service Type';
            DataClassification = ToBeClassified;
        }
        field(7; "Contract Type"; enum CustomerSubContract_ContractType)
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
        field(10; "Billing frequency"; enum CustomerSubContract_Billingfrequency)
        {
            Caption = 'Billing frequency';
            DataClassification = ToBeClassified;
        }
        field(11; "Billing Date"; Date)
        {
            Caption = 'Billing Date';
            DataClassification = ToBeClassified;
        }
        field(12; Customer; Code[50])
        {
            Caption = 'Customer';
            DataClassification = ToBeClassified;
            TableRelation = Customer.Name;
        }
        field(13; "Child Customer"; Code[50])
        {
            Caption = 'Child Customer';
            DataClassification = ToBeClassified;
            TableRelation = Customer.Name;
        }
        field(14; Location; Code[50])
        {
            Caption = 'Location';
            DataClassification = ToBeClassified;
            TableRelation = Location.Code;
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
        field(19; "Status (Open, In Process, Executed)"; enum CustomerSubContract_Status)
        {
            Caption = 'Status (Open, In Process, Executed)';
            DataClassification = ToBeClassified;
        }
        field(20; "Customer PO No."; code[50])
        {
            Caption = 'Customer PO No.';
            DataClassification = ToBeClassified;
        }

        field(21; "Processed"; Boolean)
        {

            DataClassification = ToBeClassified;
        }
        field(22; "Approval Status"; enum CusSubContract_ApprovalStatus)
        {

            DataClassification = ToBeClassified;
        }
        field(23; "Creation Date time"; date)
        {

            DataClassification = ToBeClassified;
        }
        field(24; "Modify Date Time"; Date)
        {

            DataClassification = ToBeClassified;
        }
        field(25; "Serial No."; code[100])
        {

            DataClassification = ToBeClassified;
        }
        field(26; "Serial No. Start Date"; Date)
        {

            DataClassification = ToBeClassified;
        }
        field(27; "Amend Versions"; code[50])
        {

            DataClassification = ToBeClassified;
        }
        field(28; "Tenant ID"; code[50])
        {

            DataClassification = ToBeClassified;
        }
        field(29; "Serial No. End Date"; Date)
        {

            DataClassification = ToBeClassified;
        }
        field(30; "Subscription ID"; code[50])
        {

            DataClassification = ToBeClassified;
        }
        field(31; "Branch Code"; Code[50])
        {

            DataClassification = ToBeClassified;
        }
        field(32; "SO Stage"; Code[50])
        {

            DataClassification = ToBeClassified;
            TableRelation = "Sales Header"."SO Stage";
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
