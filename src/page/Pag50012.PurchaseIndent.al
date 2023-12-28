page 50012 "Purchase Indent"
{
    ApplicationArea = All;
    Caption = 'Purchase Indent';
    PageType = Document;
    SourceTable = "Purchase Indent Header";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(" Type of PR"; Rec." Type of PR")
                {
                    ToolTip = 'Specifies the value of the  Type of PR field.';
                    ApplicationArea = all;
                }
                field("PR Date"; Rec."PR Date")
                {
                    ToolTip = 'Specifies the value of the PR Date field.';
                    ApplicationArea = all;
                }
                field("PR No."; Rec."PR No.")
                {
                    ToolTip = 'Specifies the value of the PR No. field.';
                    ApplicationArea = all;
                    trigger OnValidate()
                    begin
                        // rec.SetRange("PR No.", Rec."PR No.");
                        // if rec.FindFirst() then begin
                        rec."Reference Quote No." := rec."PR No.";
                        // end;
                    end;
                }
                field(" Customer Name"; Rec." Customer Name")
                {
                    ToolTip = 'Specifies the value of the  Customer Name field.';
                    ApplicationArea = all;
                }
                field(" Customer No."; Rec." Customer No.")
                {
                    ToolTip = 'Specifies the value of the  Customer No. field.';
                    ApplicationArea = all;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                        RecCustomer: Record Customer;
                    begin
                        RecCustomer.Reset();
                        RecCustomer.setrange("No.", rec." Customer No.");
                        if RecCustomer.FindFirst() then Begin
                            rec." Customer Name" := RecCustomer.Name;
                        End;

                    end;
                }
                field(" SO No."; Rec." SO No.")
                {
                    ToolTip = 'Specifies the value of the  SO No. field.';
                    ApplicationArea = all;
                }
                field(" SO date"; Rec." SO date")
                {
                    ToolTip = 'Specifies the value of the  SO date field.';
                    ApplicationArea = all;
                }

                field("Purchase Quote Created"; Rec."Purchase Quote Created")
                {
                    ToolTip = 'Specifies the value of the Purchase Quote Created field.';
                    ApplicationArea = all;
                }
                field("Reference Quote No."; Rec."Reference Quote No.")
                {
                    ToolTip = 'Specifies the value of the Reference Quote No. field.';
                    ApplicationArea = all;
                }
                field("Supplier 01"; Rec."Supplier 01")
                {
                    ToolTip = 'Specifies the value of the Supplier 01 field.';
                    ApplicationArea = all;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                        recvendor: Record Vendor;
                    begin
                        recvendor.Reset();
                        recvendor.SetRange("No.", rec."Supplier 01");
                        if recvendor.FindFirst() then begin
                            rec."Supplier Name 01" := recvendor.Name;
                        end;

                    end;
                }
                field("Supplier 02"; Rec."Supplier 02")
                {
                    ToolTip = 'Specifies the value of the Supplier 02 field.';
                    ApplicationArea = all;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                        recvendor: Record Vendor;
                    begin
                        recvendor.Reset();
                        recvendor.SetRange("No.", rec."Supplier 02");
                        if recvendor.FindFirst() then begin
                            rec."Supplier Name 02" := recvendor.Name;
                        end;

                    end;
                }
                field("Supplier 03"; Rec."Supplier 03")
                {
                    ToolTip = 'Specifies the value of the Supplier 03 field.';
                    ApplicationArea = all;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                        recvendor: Record Vendor;
                    begin
                        recvendor.Reset();
                        recvendor.SetRange("No.", rec."Supplier 03");
                        if recvendor.FindFirst() then begin
                            rec."Supplier Name 03" := recvendor.Name;
                        end;


                    end;
                }
                field("Supplier Name 01"; Rec."Supplier Name 01")
                {
                    ToolTip = 'Specifies the value of the Supplier Name 01 field.';
                    ApplicationArea = all;
                }
                field("Supplier Name 02"; Rec."Supplier Name 02")
                {
                    ToolTip = 'Specifies the value of the Supplier Name 02 field.';
                    ApplicationArea = all;
                }
                field("Supplier Name 03"; Rec."Supplier Name 03")
                {
                    ToolTip = 'Specifies the value of the Supplier Name 03 field.';
                    ApplicationArea = all;
                }
            }
            part(Line; "Purchase Indent Subform")
            {
                SubPageLink = "Document No." = field("PR No.");
            }
        }

    }
    actions
    {
        area(Processing)
        {
            action(Quotation)
            {
                ApplicationArea = all;
                Image = Quote;
                Promoted = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Message('Quotation Created');
                end;
            }
        }

    }
}
