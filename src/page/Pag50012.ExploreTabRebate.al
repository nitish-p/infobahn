profile Rebate
{
    Caption = 'Rebate';
    RoleCenter = Rebate;
    Promoted = true;
    Enabled = true;
}
page 50026 Rebate
{
    ApplicationArea = All;
    Caption = 'Rebate';
    PageType = RoleCenter;

    actions
    {
        area(Embedding)
        {
            action(Rebate)
            {
                ApplicationArea = All;
                RunObject = page "Rebate List";
            }
        }
    }

}
