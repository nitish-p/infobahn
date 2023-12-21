profile Contract
{
    Caption = 'Contract';
    RoleCenter = ExploreTabContract;
    Promoted = true;
    Enabled = true;
}
page 50025 ExploreTabContract
{
    ApplicationArea = All;
    Caption = 'Contract';
    PageType = RoleCenter;

    actions
    {
        area(Embedding)
        {
            action("Master Contract")
            {
                ApplicationArea = All;
                RunObject = page "Main contract List";

            }
            action("Customer Sub Contract")
            {
                ApplicationArea = All;
                RunObject = page "Customer Sub Contract List";

            }
            action("Vendor Sub Contract")
            {
                ApplicationArea = All;
                RunObject = page "Vendor Sub Contract List";

            }
        }
    }

}
