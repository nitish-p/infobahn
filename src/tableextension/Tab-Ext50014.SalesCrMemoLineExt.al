
tableextension 50014 SalesCrMemoLineExt extends "Sales Cr.Memo Line"
{
    fields
    {
        field(50000; "Program ID"; Code[50])
        {
            Caption = 'Program ID';
            DataClassification = ToBeClassified;
        }
        field(50001; Rebate; Decimal)
        {
            Caption = 'Rebate';
            DataClassification = ToBeClassified;
        }
        field(50002; "NLC Cost"; Decimal)
        {
            Caption = 'NLC Cost';
            DataClassification = ToBeClassified;
        }
        field(50003; "NLC Amount"; Decimal)
        {
            Caption = 'NLC Amount';
            DataClassification = ToBeClassified;
        }
        field(50004; "Average NLC"; Decimal)
        {
            Caption = 'Average NLC';
            DataClassification = ToBeClassified;
        }
        field(50005; Mrgin; Decimal)
        {
            Caption = 'Mrgin';
            DataClassification = ToBeClassified;
        }
        field(50006; "Mrgin %"; Decimal)
        {
            Caption = 'Mrgin %';
            DataClassification = ToBeClassified;
        }
        field(50007; "Customer Contract"; Code[50])
        {
            Caption = 'Customer Contract';
            DataClassification = ToBeClassified;
        }
        field(50008; "No. of Boxes"; Code[50])
        {
            Caption = 'No. of Boxes';
            DataClassification = ToBeClassified;
        }
        field(50009; "Each Box Component"; Code[50])
        {
            Caption = 'Each Box Component';
            DataClassification = ToBeClassified;
        }
        field(50010; Weight; Code[50])
        {
            Caption = 'Weight';
            DataClassification = ToBeClassified;
        }
        field(50011; Height; Code[50])
        {
            Caption = 'Height';
            DataClassification = ToBeClassified;
        }
        field(50012; Lenght; Code[50])
        {
            Caption = 'Lenght';
            DataClassification = ToBeClassified;
        }
        field(50013; Breath; Code[50])
        {
            Caption = 'Breath';
            DataClassification = ToBeClassified;
        }
        field(50014; "Customer Delivery Date"; Date)
        {
            Caption = 'Customer Delivery Date';
            DataClassification = ToBeClassified;
        }
        field(50015; "Agreed Delivery Date"; Date)
        {
            Caption = 'Agreed Delivery Date';
            DataClassification = ToBeClassified;
        }
        field(50016; "Serial no"; Code[50])
        {
            Caption = 'Serial no';
            DataClassification = ToBeClassified;
        }
    }
}
