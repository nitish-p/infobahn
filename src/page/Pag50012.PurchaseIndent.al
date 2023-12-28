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
                field("PR No."; Rec."PR No.")
                {
                    ToolTip = 'Specifies the value of the PR No. field.';
                    ApplicationArea = all;
                    trigger OnValidate()
                    begin

                    end;
                }
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

                field(" Customer Name"; Rec." Customer Name")
                {
                    ToolTip = 'Specifies the value of the  Customer Name field.';
                    ApplicationArea = all;
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
                    Editable = false;
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
                        if rec."Supplier 01" <> '' then begin
                            if rec."Supplier 01" = rec."Supplier 02" then
                                Error('Vendor Already Selected!');

                        end;
                        if rec."Supplier 01" <> '' then begin
                            if rec."Supplier 01" = rec."Supplier 03" then
                                Error('Vendor Already Selected!');

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
                        if rec."Supplier 02" <> '' then begin
                            if rec."Supplier 02" = rec."Supplier 01" then
                                Error('Vendor Already Selected!');

                        end;
                        if rec."Supplier 02" <> '' then begin
                            if rec."Supplier 02" = rec."Supplier 03" then
                                Error('Vendor Already Selected!');

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
                        if rec."Supplier 03" <> '' then begin
                            if rec."Supplier 03" = rec."Supplier 02" then
                                Error('Vendor Already Selected!');

                        end;
                        if rec."Supplier 03" <> '' then begin
                            if rec."Supplier 03" = rec."Supplier 01" then
                                Error('Vendor Already Selected!');

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
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = all;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = all;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
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
            action("Create Purchase Quotation")
            {
                ApplicationArea = All;
                Image = Create;
                trigger OnAction()
                Var
                    RecPurchIndentHeader: Record "Purchase Indent Header";
                    RecPurchIndentLine: Record "Purchase Indent Line";
                    TempVendorCode: Code[20];
                begin


                    RecPurchIndentHeader.Reset();
                    RecPurchIndentHeader.SetRange("PR No.", Rec."PR No.");
                    RecPurchIndentHeader.SetRange(RecPurchIndentHeader."Purchase Quote Created", true);
                    if RecPurchIndentHeader.FindFirst() then
                        Error('Purchase Quote already created....');


                    if Rec."Supplier 01" <> '' then   //Purchase Quote for Vendor Code 01
                    begin
                        RecPurchIndentHeader.Reset();
                        RecPurchIndentHeader.SetRange("PR No.", Rec."PR No.");
                        RecPurchIndentHeader.SetRange(RecPurchIndentHeader."Purchase Quote Created", false);
                        if RecPurchIndentHeader.FindFirst() then begin
                            CreatePurchaseQuote(RecPurchIndentHeader, Rec."Supplier 01");
                            //Rec."Purchase Quote Created" := true;
                            //Rec.Modify();
                        end;
                    end;
                    if Rec."Supplier 02" <> '' then   //Purchase Quote for Vendor Code 02
                    begin
                        RecPurchIndentHeader.Reset();
                        RecPurchIndentHeader.SetRange("PR No.", Rec."PR No.");
                        RecPurchIndentHeader.SetRange(RecPurchIndentHeader."Purchase Quote Created", false);
                        if RecPurchIndentHeader.FindFirst() then begin
                            CreatePurchaseQuote(RecPurchIndentHeader, Rec."Supplier 02");
                            //Rec."Purchase Quote Created" := true;
                            //Rec.Modify();
                        end;
                    end;
                    if Rec."Supplier 03" <> '' then   //Purchase Quote for Vendor Code 03
                    begin
                        RecPurchIndentHeader.Reset();
                        RecPurchIndentHeader.SetRange("PR No.", Rec."PR No.");
                        RecPurchIndentHeader.SetRange(RecPurchIndentHeader."Purchase Quote Created", false);
                        if RecPurchIndentHeader.FindFirst() then begin
                            CreatePurchaseQuote(RecPurchIndentHeader, Rec."Supplier 03");
                            //Rec."Purchase Quote Created" := true;
                            //Rec.Modify();
                        end;
                    end;
                    Rec."Purchase Quote Created" := true;
                    Rec.Modify();
                end;
            }
        }
    }
    procedure CreatePurchaseQuote(var RecPurchIndentHeader1: Record "Purchase Indent Header"; var VendorCode: Code[20])
    var
        RecPH: record "Purchase Header";
        RecPH1: record "Purchase Header";
        RecPL: Record "Purchase Line";
        RecPurchIndentLine: Record "Purchase Indent Line";
        RecPurchAndPaySetup: record "Purchases & Payables Setup";
        NoSeriesMgt: codeunit NoSeriesManagement;
        LineNo: Integer;

    begin
        // if (RecPurchIndentHeader1."Supplier 02" = '') And (RecPurchIndentHeader1."Supplier 03" = '') then begin
        //     //if RecPurchIndentHeader1."Reason Code" = '' then
        //     Error('Only one vendor is selected for creating a purchase quote hence providing a reason code is mandatory');
        // end;

        RecPurchAndPaySetup.Get();
        RecPH.Init();
        RecPH."Document Type" := RecPH."Document Type"::Quote;
        RecPH.VALIDATE("No.", NoSeriesMgt.GetNextNo(RecPurchAndPaySetup."Quote Nos.", TODAY, TRUE));
        RecPH.INSERT(TRUE);
        RecPH.VALIDATE("Posting Date", RecPurchIndentHeader1."Posting Date");//yash
        RecPH.VALIDATE("Buy-from Vendor No.", VendorCode);
        RecPH."Referance Quote Comp No." := RecPurchIndentHeader1."PR No.";
        RecPH.VALIDATE("Location Code", RecPurchIndentHeader1."Location Code");
        RecPH.Validate("Shortcut Dimension 1 Code", RecPurchIndentHeader1."Shortcut Dimension 1 Code");
        RecPH.Validate("Shortcut Dimension 2 Code", RecPurchIndentHeader1."Shortcut Dimension 2 Code");
        //  RecPH.Validate("Reason Code", RecPurchIndentHeader1."Reason Code");
        IF RecPH.MODIFY(TRUE) THEN BEGIN
            LineNo := 10000;
            RecPurchIndentLine.RESET;
            RecPurchIndentLine.SETRANGE(RecPurchIndentLine."Document No.", RecPurchIndentHeader1."PR No.");
            IF RecPurchIndentLine.FINDSET THEN
                REPEAT

                    RecPL.INIT;
                    RecPL."Document Type" := RecPL."Document Type"::Quote;
                    RecPL."Document No." := RecPH."No.";

                    if RecPurchIndentLine.Type = RecPurchIndentLine.Type::Item then
                        RecPL.Type := RecPL.Type::Item
                    else
                        if RecPurchIndentLine.Type = RecPurchIndentLine.Type::"Fixed Assets" then
                            RecPL.Type := RecPL.Type::"Fixed Asset"
                        else
                            if RecPurchIndentLine.Type = RecPurchIndentLine.Type::GL then
                                RecPL.Type := RecPL.Type::"G/L Account"
                            else
                                if RecPurchIndentLine.Type = RecPurchIndentLine.Type::Charges then
                                    RecPL.Type := RecPL.Type::"Charge (Item)";


                    RecPL."Line No." := LineNo;
                    RecPL.VALIDATE(RecPL."No.", RecPurchIndentLine."No.");
                    RecPL.VALIDATE(RecPL.Quantity, RecPurchIndentLine.Quantity);
                    // RecPL.Validate("Shortcut Dimension 1 Code", RecPurchIndentLine."Shortcut Dimension 1 Code");
                    // RecPL.Validate("Shortcut Dimension 2 Code", RecPurchIndentLine."Shortcut Dimension 2 Code");
                    //RecPL.VALIDATE(RecPL."Qty. to Invoice", RecPL1.Quantity);
                    //RecPL.VALIDATE(RecPL."Direct Unit Cost", 0);

                    RecPL.INSERT;
                    LineNo += 10000;

                UNTIL RecPurchIndentLine.NEXT = 0;
            MESSAGE('Purchase Quote No.: %1 Created Successfully...', RecPH."No.");
        END;
    end;
}
