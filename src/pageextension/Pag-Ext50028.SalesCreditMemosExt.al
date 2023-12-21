pageextension 50028 SalesCreditMemosExt extends "Sales Credit Memos"
{
    layout
    {
        addafter("Location Code")
        {

            field("PO No."; Rec."PO No.")
            {
                ApplicationArea = all;
            }
            field("Vendor Name"; Rec."Vendor Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Vendor Name field.';
            }
            field("SO types "; Rec."SO types ")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SO types  field.';
            }
            field("SO Stage"; Rec."SO Stage")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SO Stage field.';
            }
            field("Customer Contract ID"; Rec."Customer Contract ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Customer Contract ID field.';
            }
            field("Customer Agreed Date"; Rec."Customer Agreed Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Customer Agreed Date field.';
            }
            field("Dispatch Type"; Rec."Dispatch Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Dispatch Type field.';
            }
            field("Requested Delivery Date 2"; Rec."Requested Delivery Date 2") //Already in frontend
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Requested Delivery Date field.';
                Visible = false;
            }
            field("Expected Receipt Date"; Rec."Expected Receipt Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Expected Receipt Date field.';
            }
            field("Actual Date of Cash Flow"; Rec."Actual Date of Cash Flow")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Actual Date of Cash Flow field.';
            }
            field("Each Stage Movement Date"; Rec."Each Stage Movement Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Each Stage Movement Date field.';
            }
            field("Pending for Dispatch"; Rec."Pending for Dispatch")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Pending for Dispatch field.';
            }
            field("Pending for Payment"; Rec."Pending for Payment")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Pending for Payment field.';
            }
            field("Pending for POD"; Rec."Pending for POD")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Pending for POD field.';
            }
            field("Pending for Submission"; Rec."Pending for Submission")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Pending for Submission field.';
            }
            field("Pending for Delivery (In-Transit)"; Rec."Pending for Delivery (In-Transit)")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Pending for Delivery (In-Transit) field.';
            }
            field(Submittor; Rec.Submittor)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Submittor field.';
            }
            field(Collector; Rec.Collector)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Collector field.';
            }
            field("Installation Date"; Rec."Installation Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Installation Date field.';
            }
            field("POD Date"; Rec."POD Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the POD Date field.';
            }
            field("Hand Delivery Person Name"; Rec."Hand Delivery Person Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Hand Delivery Person Name field.';
            }
            field("Hand Delivery Person Mobile"; Rec."Hand Delivery Person Mobile")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Hand Delivery Person Mobile field.';
            }
            field("Warehouse Pick up Person Name"; Rec."Warehouse Pick up Person Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Warehouse Pick up Person Name field.';
            }
            field("Warehouse Pick up Person Mobile"; Rec."Warehouse Pick up Person Mobile")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Warehouse Pick up Person Mobile field.';
            }
            field("Warehouse Pick up Person KYC Document"; Rec."Warehouse Pick up Person KYC Document")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Warehouse Pick up Person KYC Document field.';
            }
            field("Customer Ref. No. (PR NO)"; Rec."Customer Ref. No. (PR NO)")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Customer Ref. No. (PR NO) field.';
            }
            field("Vendor No."; Rec."Vendor No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Vendor No. field.';
            }
        }

    }
}
