page 50030 "Stock Protection "
{
    ApplicationArea = All;
    Caption = 'Stock Protection ';
    PageType = Worksheet;
    SourceTable = "Stock Protection";
    UsageCategory = Tasks;
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            field("Batch Name"; Rec."Batch Name")
            {
                //TableRelation = "Item Journal Batch";
                ApplicationArea = All;
                // DrillDownPageId = "Item Journal Batches";
                trigger OnLookup(var text: text): boolean
                var
                    myInt: Integer;
                    RecRebate: Record "Item Journal Batch";
                    itemjoubarches: Record "Item Journal Batch";
                    NoSeriesManagement: Codeunit NoSeriesManagement;
                    ItemJournalBatch: Record "Item Journal Batch";
                    NoSeries: Record "No. Series";
                    DocumentNo: Code[20];
                    GenJournalLine: Record "Gen. Journal Line";
                    Lineno: Integer;
                    PurchInvLine: Record "Purchase Line";
                    GenJournalBatch: Record "Gen. Journal Batch";
                    name: Text[50];

                begin
                    RecRebate.Reset();
                    if page.RunModal(Page::"Item Journal Batches", RecRebate) = Action::LookupOK then begin
                        rec."Batch Name" := RecRebate.Name;

                    end;

                    ItemJournalBatch.Reset();
                    ItemJournalBatch.SetRange(ItemJournalBatch.Name, rec."Batch Name");
                    if ItemJournalBatch.FindFirst() then
                        if ItemJournalBatch."Journal Template Name" = ItemJournalBatch."Journal Template Name" then
                            NoSeries.Reset();
                    NoSeries.SetRange(NoSeries.Code, ItemJournalBatch."No. Series");
                    if NoSeries.FindFirst() then begin
                        DocumentNo := NoSeriesManagement.GetNextNo(ItemJournalBatch."No. Series", TODAY, TRUE);
                        rec."Document No." := DocumentNo;

                    end;
                    itemjoubarches.Reset();
                    itemjoubarches.SetRange(itemjoubarches.Name, rec."Batch Name");
                    if itemjoubarches.FindFirst() then begin
                        rec.Description := itemjoubarches.Description;
                    end;


                end;
            }
            field(Description; Rec.Description)
            {
                ApplicationArea = all;

            }
            repeater(General)
            {
                field("Program ID"; Rec."Program ID")
                {
                    ToolTip = 'Specifies the value of the Program ID field.';
                    TableRelation = Rebate;
                    trigger OnLookup(var text: text): boolean
                    var
                        myInt: Integer;
                        RecRebate: Record Rebate;
                    begin
                        RecRebate.Reset();
                        if page.RunModal(Page::"Rebate List", RecRebate) = Action::LookupOK then
                            rec."Program ID" := RecRebate."Program ID";
                    end;
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                }

                field(Rebate; Rec.Rebate)
                {
                    ToolTip = 'Specifies the value of the Rebate field.';
                }
                field("NLC Cost"; Rec."NLC Cost")
                {
                    ToolTip = 'Specifies the value of the NLC Cost field.';
                }
                field("NLC Amount"; Rec."NLC Amount")
                {
                    ToolTip = 'Specifies the value of the NLC Amount field.';
                }
                field("Average NLC"; Rec."Average NLC")
                {
                    ToolTip = 'Specifies the value of the Average NLC field.';
                }
                field("Item Code"; Rec."Item Code")
                {
                    ToolTip = 'Specifies the value of the Item Code field.';
                }
                field("Item Name"; Rec."Item Name")
                {
                    ToolTip = 'Specifies the value of the Item Name field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field("Rebate Type"; Rec."Rebate Type")
                {
                    ToolTip = 'Specifies the value of the Rebate Type field.';
                }
            }

        }

    }
    actions
    {
        area(Navigation)
        {
            action(Post)
            {
                Caption = 'Post';
                Image = Post;
                Promoted = true;
                trigger OnAction()
                var
                    StockProtection: Record "Stock Protection";
                    NLCLedger: record "NLC Ledger";
                    LineNo: Integer;
                begin
                    rec.Reset();

                    rec.SetRange("Document No.", Rec."Document No.");
                    if rec.FindFirst() then
                        repeat
                            NLCLedger.Init();
                            NLCLedger."Document No." := rec."Document No.";
                            NLCLedger."Program ID" := rec."Program ID";

                            NLCLedger.Insert(true);
                        // LineNo += 10000
                        until NLCLedger.Next = 0;
                    Page.Run(Page::"NLC Ledger List", NLCLedger);


                end;

            }
        }
    }
    var
        CurrentDocNo: Code[20];
        IsChangingDocNo: Boolean;


    local procedure SetDocumentNumberFilter(DocNoToSet: Code[20])
    var
        OriginalFilterGroup: Integer;
    begin
        OriginalFilterGroup := rec.FilterGroup();
        rec.FilterGroup := 25;
        rec.SetFilter(rec."Document No.", DocNoToSet);
        rec.FilterGroup := OriginalFilterGroup;
    end;



}
