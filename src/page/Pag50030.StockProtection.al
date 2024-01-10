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
                TableRelation = "Item Journal Batch".Name;
                ApplicationArea = All;
                Visible = false;

                //trigger OnLookup(var text: text): boolean
                // trigger OnValidate()
                // var
                //     myInt: Integer;
                //     RecRebate: Record "Item Journal Batch";

                //     NoSeriesManagement: Codeunit NoSeriesManagement;
                //     ItemJournalBatch: Record "Item Journal Batch";
                //     NoSeries: Record "No. Series";
                //     DocumentNo: Code[20];
                //     GenJournalLine: Record "Gen. Journal Line";
                //     Lineno: Integer;
                //     PurchInvLine: Record "Purchase Line";
                //     GenJournalBatch: Record "Gen. Journal Batch";

                // begin
                //     // RecRebate.Reset();
                //     // if page.RunModal(Page::"Item Journal Batches", RecRebate) = Action::LookupOK then begin
                //     //     rec."Batch Name" := RecRebate.Name;
                //     // end;

                //     ItemJournalBatch.Reset();
                //     ItemJournalBatch.SetRange(ItemJournalBatch.Name, rec."Batch Name");
                //     if ItemJournalBatch.FindFirst() then
                //         NoSeries.Reset();
                //     NoSeries.SetRange(NoSeries.Code, ItemJournalBatch."No. Series");
                //     if NoSeries.FindFirst() then begin

                //         DocumentNo := NoSeriesManagement.GetNextNo(ItemJournalBatch."No. Series", TODAY, TRUE);
                //         rec."Document No." := DocumentNo;
                //     end;
                //     if xRec."Batch Name" <> rec."Batch Name" then begin
                //         repeat
                //             ClearAll();
                //         until rec.next = 0;
                //     end;

                // end;



            }
            repeater(General)
            {
                field("Rebate Type"; Rec."Rebate Type")
                {
                    ToolTip = 'Specifies the value of the Rebate Type field.';
                    ApplicationArea = All;

                }
                field("Program ID"; Rec."Program ID")
                {
                    ToolTip = 'Specifies the value of the Program ID field.';
                    ApplicationArea = All;
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
                    ApplicationArea = All;
                }
                field("Item Code"; Rec."Item Code")
                {
                    ToolTip = 'Specifies the value of the Item Code field.';
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        RecItem: Record Item;
                    begin
                        if RecItem.get(rec."Item Code") then begin
                            rec."Item Name" := RecItem.Description;
                        end;

                    end;
                }
                field("Item Name"; Rec."Item Name")
                {
                    ToolTip = 'Specifies the value of the Item Name field.';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                    ApplicationArea = All;
                }

                field(Rebate; Rec.Rebate)
                {
                    ToolTip = 'Specifies the value of the Rebate field.';
                    ApplicationArea = All;
                }
                field("NLC Cost"; Rec."NLC Cost")
                {
                    ToolTip = 'Specifies the value of the NLC Cost field.';
                    ApplicationArea = All;
                }
                field("NLC Amount"; Rec."NLC Amount")
                {
                    ToolTip = 'Specifies the value of the NLC Amount field.';
                    ApplicationArea = All;
                }
                field("Average NLC"; Rec."Average NLC")
                {
                    ToolTip = 'Specifies the value of the Average NLC field.';
                    ApplicationArea = All;
                }


            }

        }

    }
    actions
    {
        area(Navigation)
        {
            group(Home)
            {
                Caption = 'Home';
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

                        // rec.Reset();
                        // rec.SetRange("Document No.", rec."Document No.");
                        // if rec.FindFirst() then
                        //     LineNo := 10000;
                        // repeat

                        //     NLCLedger.Init();
                        //     //NLCLedger."Line No." := rec."Line No.";
                        //     NLCLedger."Program ID" := rec."Program ID";
                        //     NLCLedger."Document No." := rec."Document No.";
                        //     NLCLedger.Quantity := rec.Quantity;
                        //     // NLCLedger.Rebate := rec.Rebate;
                        //     NLCLedger."Average NLC" := rec."Average NLC";
                        //     NLCLedger."Item Code" := rec."Item Code";
                        //     NLCLedger."Item Name" := rec."Item Name";
                        //     NLCLedger."Line No." := LineNo;
                        //     NLCLedger.Insert();
                        //     LineNo += 10000;
                        // until NLCLedger.Next = 0;
                        // Page.Run(Page::"NLC Ledger List", NLCLedger);
                        // CurrPage.SetSelectionFilter(NLCLedger);
                        // if NLCLedger.FindSet() then begin
                        //     repeat
                        //         NLCLedger."Document No." := rec."Document No.";
                        //         NLCLedger."Program ID" := rec."Program ID";
                        //         NLCLedger."Item Code" := rec."Item Code";
                        //         NLCLedger."Item Name" := rec."Item Name";
                        //         NLCLedger.Quantity := rec.Quantity;
                        //     until NLCLedger.Next() = 0;
                        // end;
                        //     rec.Reset();
                        //     rec.SetRange("Document No.", Rec."Document No.");
                        //     if rec.FindFirst() then
                        //         repeat
                        //             NLCLedger.Init();
                        //             NLCLedger."Document No." := rec."Document No.";
                        //             NLCLedger."Program ID" := rec."Program ID";
                        //             NLCLedger."Item Code" := rec."Item Code";
                        //             NLCLedger."Item Name" := rec."Item Name";
                        //             NLCLedger.Quantity := rec.Quantity;
                        //             NLCLedger.Insert();
                        //         until rec.Next() = 0;
                        //     page.Run(Page::"NLC Ledger List", NLCLedger);

                        // end;
                        if rec.FindFirst() then
                            repeat
                                NLCLedger.Init();
                                NLCLedger."Document No." := rec."Document No.";
                                NLCLedger."Program ID" := rec."Program ID";
                                NLCLedger."Item Code" := rec."Item Code";
                                NLCLedger."Item Name" := rec."Item Name";
                                NLCLedger.Quantity := rec.Quantity;
                                NLCLedger."Average NLC" := rec."Average NLC";
                                NLCLedger.Insert(true);
                            until rec.Next() = 0;

                        page.Run(Page::"NLC Ledger List", NLCLedger);
                        NLCLedger.Reset();
                        NLCLedger.SetRange("Document No.", rec."Document No.");
                        if NLCLedger.FindFirst() then begin

                        end;
                        rec.DeleteAll();
                    end;
                }
            }
        }
    }


}
