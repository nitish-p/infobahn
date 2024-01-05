tableextension 50001 "Customer Ext" extends Customer
{
    fields
    {
        field(50000; MSME; Boolean)
        {
            Caption = 'MSME';
            DataClassification = ToBeClassified;
        }
        field(50001; "Nature of Industry"; enum Customer_NatureOfIndustry)
        {
            Caption = 'Nature of Industry';
            DataClassification = ToBeClassified;
        }
        field(50002; "Type of Customer (Pvt. Ltd, Public Ltd, Etc)"; enum Customer_TypesofCustomer)
        {
            Caption = 'Type of Customer';
            DataClassification = ToBeClassified;
        }
        field(50003; "Owner/Director KYC"; enum "Customer_Owner/DirectorKYC")
        {
            Caption = 'Owner/Director KYC';
            DataClassification = ToBeClassified;
        }
        field(50004; "MSME Status (Micro, Medium, etc.)"; enum Customer_MSMEStatus)
        {
            Caption = 'MSME Status';
            DataClassification = ToBeClassified;
        }
        field(50005; "Parent Child Relation"; Code[50])
        {
            Caption = 'Parent Child Relation';
            DataClassification = ToBeClassified;
        }
        field(50006; "ROG Concept (Red, Orange, Green)"; enum Customer_ROGConcept)
        {
            Caption = 'ROG Concep';
            DataClassification = ToBeClassified;
        }
        field(50007; "Third Party Evaluation"; Boolean)
        {
            Caption = 'Third Party Evaluation';
            DataClassification = ToBeClassified;
        }
        field(50008; District; Code[50])
        {
            Caption = 'District';
            DataClassification = ToBeClassified;
            TableRelation = District;
            //CalcFormula=lookup(District."District Code" where())

        }
        field(50009; "Creation Date & Time"; DateTime)
        {
            Caption = 'Creation Date & Time';
            DataClassification = ToBeClassified;
        }
        field(50010; "Main Vertical"; Text[100])
        {
            Caption = 'Main Vertical';
            DataClassification = ToBeClassified;
        }
        field(50011; "Sub Vertical"; Text[100])
        {
            Caption = 'Sub Vertical';
            DataClassification = ToBeClassified;
        }
        field(50012; "BU wise Category"; Text[100])
        {
            Caption = 'BU wise Category';
            DataClassification = ToBeClassified;
        }
        field(50013; "CIN No."; Code[20])
        {
            Caption = 'CIN No.';
            DataClassification = ToBeClassified;
        }
        field(50014; "T.A.N No."; Code[12])
        {
            Caption = 'T.A.N No.';
            DataClassification = ToBeClassified;
        }
        field(50015; "Customer Groups"; Code[20])
        {
            Caption = 'Customer Groups';
            DataClassification = ToBeClassified;
        }
        field(50016; Attributes; Code[20])
        {
            Caption = 'Attributes';
            DataClassification = ToBeClassified;
        }
        field(50017; "Aadhar Card"; Code[16])
        {
            Caption = 'Aadhar Card';
            DataClassification = ToBeClassified;
        }
        field(50018; "Gumasta Licence Copy/Shop & Establishment Registeration Copy"; Boolean)
        {
            Caption = 'Gumasta Licence Copy/Shop & Establishment Registeration Copy';
            DataClassification = ToBeClassified;
        }
        field(50019; "GST CERTIFICATE"; Boolean)
        {
            Caption = 'GST CERTIFICATE';
            DataClassification = ToBeClassified;
        }
        field(50020; "COI Copy"; Boolean)
        {
            Caption = 'COI Copy';
            DataClassification = ToBeClassified;
        }
        field(50021; "CIN Copy"; Boolean)
        {
            Caption = 'CIN Copy';
            DataClassification = ToBeClassified;
        }
        field(50022; "TAN Copy"; Boolean)
        {
            Caption = 'TAN Copy';
            DataClassification = ToBeClassified;
        }
        field(50023; "DIN Copy"; Boolean)
        {
            Caption = 'DIN Copy';
            DataClassification = ToBeClassified;
        }
        field(50024; MOA; Boolean)
        {
            Caption = 'MOA';
            DataClassification = ToBeClassified;
        }
        field(50025; "PARTNERSHIP DEED/LLP Agreement"; Boolean)
        {
            Caption = 'PARTNERSHIP DEED/LLP Agreement';
            DataClassification = ToBeClassified;
        }
        field(50026; "Legal Case"; enum Customer_LegalCase)
        {
            Caption = 'Legal Case';
            DataClassification = ToBeClassified;
        }
        field(50027; "Legal Case Date"; Date)
        {
            Caption = 'Legal Case Date';
            DataClassification = ToBeClassified;
        }
        field(50028; "District Code"; Code[50])
        {
            Caption = 'District Code';
            DataClassification = ToBeClassified;
            // TableRelation = District;
            // ValidateTableRelation = false;
            trigger OnValidate()
            var
                myInt: Integer;
                recDistrict: Record District;
            begin
                // CalcFields(District)
            end;
        }
        field(50029; "Credit Insurance"; Boolean)
        {
            Caption = 'Credit Insurance';
            DataClassification = ToBeClassified;
        }
        field(50030; "Credit Insurance Value"; Decimal)
        {
            Caption = 'Credit Insurance Value';
            DataClassification = ToBeClassified;
        }
        // modify("State Code")
        // field(50029; "Types of Customer"; enum Customer_TypesOfCustomer)
        // {
        //     DataClassification = ToBeClassified;
        //     Caption = 'Types of Customer';
        // }
    }
}
