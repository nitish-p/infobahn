table 50007 "Purchase Indent Header"
{
    Caption = 'Purchase Indent Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "PR No."; Code[20])
        {
            Caption = 'PR No.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
            trigger OnValidate()
            var
            begin
                if "PR No." <> xRec."PR No." then begin
                    GetPurchSetup();
                    NoSeriesMgt.TestManual(GetNoSeriesCode);
                    "No. Series" := '';
                end;
            end;

        }
        field(2; "PR Date"; Date)
        {
            Caption = 'PR Date';
            DataClassification = ToBeClassified;


        }
        field(3; " Type of PR"; Enum PurchaseIndent_TypeofPR)
        {
            Caption = ' Type of PR';
            DataClassification = ToBeClassified;
        }
        field(4; " SO No."; Code[50])
        {
            Caption = ' SO No.';
            DataClassification = ToBeClassified;
        }
        field(5; " SO date"; Date)
        {
            Caption = ' SO date';
            DataClassification = ToBeClassified;
        }
        field(6; " Customer No."; Code[20])
        {
            Caption = ' Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";

        }
        field(7; " Customer Name"; Text[100])
        {
            Caption = ' Customer Name';
            DataClassification = ToBeClassified;

        }
        field(8; "Supplier 01"; Code[20])
        {
            Caption = 'Supplier 01';
            DataClassification = ToBeClassified;
            TableRelation = vendor."No.";

        }
        field(9; "Supplier Name 01"; Text[100])
        {
            Caption = 'Supplier Name 01';
            DataClassification = ToBeClassified;

        }
        field(10; "Supplier 02"; Code[20])
        {
            Caption = 'Supplier 02';
            DataClassification = ToBeClassified;
            TableRelation = vendor."No.";
        }
        field(11; "Supplier Name 02"; Text[100])
        {
            Caption = 'Supplier Name 02';
            DataClassification = ToBeClassified;
        }
        field(12; "Supplier 03"; Code[20])
        {
            Caption = 'Supplier 03';
            DataClassification = ToBeClassified;
            TableRelation = vendor."No.";
        }
        field(13; "Supplier Name 03"; Text[100])
        {
            Caption = 'Supplier Name 03';
            DataClassification = ToBeClassified;
        }
        field(14; "Purchase Quote Created"; Boolean)
        {
            Caption = 'Purchase Quote Created';
            DataClassification = ToBeClassified;
        }
        field(15; "Reference Quote No."; Code[20])
        {
            Caption = 'Reference Quote No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            DataClassification = ToBeClassified;
            TableRelation = Location.Code;
            trigger OnValidate()
            var
                myInt: Integer;
                recPurchIndentLine: Record "Purchase Indent Line";

            begin
                recPurchIndentLine.Reset();
                recPurchIndentLine.SetRange("Document No.", rec."PR No.");
                if recPurchIndentLine.FindFirst() then begin
                    recPurchIndentLine.CalcFields("Location Code");
                end;

            end;

        }
        field(17; "Shortcut Dimension 1 Code"; Code[20])
        {
            //  CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1';
            DataClassification = ToBeClassified;
            // TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1),
            //                                               Blocked = CONST(false));


        }
        field(18; "Shortcut Dimension 2 Code"; Code[20])
        {
            // CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2';
            DataClassification = ToBeClassified;
            // TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2),
            //                                               Blocked = CONST(false));


        }
        field(19; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(20; "Posting No. Series"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(21; "Posting Date"; Date)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "PR No.")
        {
            Clustered = true;
        }
    }
    var
        PurchSetup: Record "Purchases & Payables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        SelectNoSeriesAllowed: Boolean;

    trigger OnInsert()
    var
        RecPurchAndPaySetup: Record "Purchases & Payables Setup";
        RecCompInfo: Record "Company Information";
        CurrentDate: Date;
    //NoSeriesMgt: codeunit NoSeriesManagement;
    begin
        //RecPurchAndPaySetup.Get();
        //Rec.Validate("No.", NoSeriesMgt.GetNextNo(RecPurchAndPaySetup."Purchase Requisition Nos.", Today, true));
        RecCompInfo.get();
        InitInsert();
        // Rec."User ID" := UserId;
        Rec."Reference Quote No." := Rec."PR No.";
        Rec."Posting Date" := Today;
        //Rec."Location Code" := RecCompInfo."Location Code";


        // CurrentDate := WORKDATE;
        // "PR date" := CurrentDate;


    end;

    trigger OnDelete()
    begin
        if Rec."Purchase Quote Created" = true then
            Error('You can not delete this Document because Purchase Quote already created aginst this Purchase Indent.');
    end;

    procedure GetNoSeriesCode(): Code[20]
    var
        NoSeriesCode: Code[20];
    //PurchSetup: Record "Purchases & Payables Setup";
    begin
        NoSeriesCode := PurchSetup."Purchase Indent Nos.";


        OnAfterGetNoSeriesCode(Rec, PurchSetup, NoSeriesCode);
        exit(NoSeriesMgt.GetNoSeriesWithCheck(NoSeriesCode, SelectNoSeriesAllowed, "No. Series"));
    end;

    procedure TestNoSeries()
    var
        IsHandled: Boolean;
    begin
        GetPurchSetup();
        IsHandled := false;
        OnBeforeTestNoSeries(Rec, IsHandled);
        if not IsHandled then
            PurchSetup.TestField("Purchase Indent Nos.");
        OnAfterTestNoSeries(Rec);
    end;

    procedure GetPurchSetup()
    begin
        PurchSetup.Get();
        OnAfterGetPurchSetup(Rec, PurchSetup, CurrFieldNo);
    end;

    procedure InitInsert()
    var
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeInitInsert(Rec, xRec, IsHandled);
        if not IsHandled then
            if "PR No." = '' then begin
                TestNoSeries();
                NoSeriesMgt.InitSeries(GetNoSeriesCode, xRec."No. Series", "Posting Date", "PR No.", "No. Series");
                // NoSeriesMgt.GetNextNo(rec."PR No.", "PR Date", true);
            end;

        OnInitInsertOnBeforeInitRecord(Rec, xRec);
        InitRecord();
    end;

    procedure InitRecord()
    var
        ArchiveManagement: Codeunit ArchiveManagement;
        IsHandled: Boolean;
    begin
        GetPurchSetup();
        IsHandled := false;
        OnBeforeInitRecord(Rec, IsHandled, xRec);
        if not IsHandled then
            NoSeriesMgt.SetDefaultSeries("Posting No. Series", PurchSetup."Purchase Indent Nos.");
        OnAfterInitRecord(Rec);
        rec."PR Date" := WorkDate();
    end;



    [IntegrationEvent(false, false)]
    local procedure OnAfterGetNoSeriesCode(var PurchIndentHeader: Record "Purchase Indent Header"; PurchSetup: Record "Purchases & Payables Setup"; var NoSeriesCode: Code[20])
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeAssistEdit(var PurchaseIndentHeader: Record "Purchase Indent Header"; OldPurchaseIndenttHeader: Record "Purchase Indent Header"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeTestNoSeries(var PurchaseIndentHeader: Record "Purchase Indent Header"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterGetPurchSetup(PurchaseIndentHeader: Record "Purchase Indent Header"; var PurchasesPayablesSetup: Record "Purchases & Payables Setup"; CalledByFieldNo: Integer)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterTestNoSeries(var PurchIndentHeader: Record "Purchase Indent Header")
    begin
    end;

    procedure SetAllowSelectNoSeries()
    begin
        SelectNoSeriesAllowed := true;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterInitRecord(var PurchIndentHeader: Record "Purchase Indent Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeInitRecord(var PurchaseIndentHeader: Record "Purchase Indent Header"; var IsHandled: Boolean; xPurchaseIndentHeader: Record "Purchase Indent Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeInitInsert(var PurchaseIndentHeader: Record "Purchase Indent Header"; var xPurchaseIndentHeader: Record "Purchase Indent Header"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnInitInsertOnBeforeInitRecord(var PurchasendentHeader: Record "Purchase Indent Header"; var xPurchaseIndentHeader: Record "Purchase Indent Header")
    begin
    end;


}
