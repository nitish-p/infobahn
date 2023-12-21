pageextension 50000 CustomerPageExt extends "Customer Card"
{

    layout
    {
        addafter(General)
        {
            group(Attributes)
            {
                field(MSME; Rec.MSME)
                {
                    ApplicationArea = all;
                }
                field("Nature of Industry"; Rec."Nature of Industry")
                {
                    ApplicationArea = all;
                }
                field("Type of Customer (Pvt. Ltd, Public Ltd, Etc)"; Rec."Type of Customer (Pvt. Ltd, Public Ltd, Etc)")
                {
                    ApplicationArea = all;
                }
                field("Owner/Director KYC"; Rec."Owner/Director KYC")
                {
                    ApplicationArea = all;
                }
                field("MSME Status (Micro, Medium, etc.)"; Rec."MSME Status (Micro, Medium, etc.)")
                {
                    ApplicationArea = all;
                }
                field("Parent Child Relation"; Rec."Parent Child Relation")
                {
                    ApplicationArea = all;
                }
                field("ROG Concept (Red, Orange, Green)"; Rec."ROG Concept (Red, Orange, Green)")
                {
                    ApplicationArea = all;
                }
                field("Third Party Evaluation"; Rec."Third Party Evaluation")
                {
                    ApplicationArea = all;
                }
                field(District; Rec.District)
                {
                    ApplicationArea = all;
                }
                field("Creation Date & Time"; Rec."Creation Date & Time")
                {
                    ApplicationArea = all;
                }
                field("Main Vertical"; Rec."Main Vertical")
                {
                    ApplicationArea = all;
                }
                field("Sub Vertical"; Rec."Sub Vertical")
                {
                    ApplicationArea = all;
                }
                field("BU wise Category"; Rec."BU wise Category")
                {
                    ApplicationArea = all;
                }
                field("CIN No."; Rec."CIN No.")
                {
                    ApplicationArea = all;
                }
                field("T.A.N No."; Rec."T.A.N No.")
                {
                    ApplicationArea = all;
                }
                field("Customer Groups"; Rec."Customer Groups")
                {
                    ApplicationArea = all;
                }
                field(Attribute; Rec.Attributes)
                {
                    ApplicationArea = all;
                }
                field("Gumasta Licence Copy/Shop & Establishment Registeration Copy"; Rec."Gumasta Licence Copy/Shop & Establishment Registeration Copy")
                {
                    ApplicationArea = all;
                }
                field("GST CERTIFICATE"; Rec."GST CERTIFICATE")
                {
                    ApplicationArea = all;
                }
                field("COI Copy"; Rec."COI Copy")
                {
                    ApplicationArea = all;
                }
                field("CIN Copy"; Rec."CIN Copy")
                {
                    ApplicationArea = all;
                }
                field("TAN Copy"; Rec."TAN Copy")
                {
                    ApplicationArea = all;
                }
                field("DIN Copy"; Rec."DIN Copy")
                {
                    ApplicationArea = all;
                }
                field(MOA; Rec.MOA)
                {
                    ApplicationArea = all;
                }
                field("PARTNERSHIP DEED/LLP Agreement"; Rec."PARTNERSHIP DEED/LLP Agreement")
                {
                    ApplicationArea = all;
                }
                field("Legal Case"; Rec."Legal Case")
                {
                    ApplicationArea = all;
                }
                field("Legal Case Date"; Rec."Legal Case Date")
                {
                    ApplicationArea = all;
                }
            }
        }



        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
