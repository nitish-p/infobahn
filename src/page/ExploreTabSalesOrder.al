// profile MyProfile
// {
//     Description = 'Profile Display Name';
//     RoleCenter = "Sales & Relationship Mgr. RC";
//      Customizations = salesMarketExtn;
//     Promoted = true;
//     Enabled = true;
// }
pageextension 50060 salesMarketExtn extends "Sales & Marketing Manager RC"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Orders)
        {
            action("Sales Order Cr. Authorization")
            {
                ApplicationArea = All;
                Promoted = true;
                Enabled = true;
                RunObject = page SalesOrderCreditAuthorization;
            }
            action("Sales Order Verification")
            {
                ApplicationArea = All;
                Promoted = true;
                Enabled = true;
                RunObject = page SalesOrderVerificationList;
            }
            action("Sales Order Planner")
            {
                ApplicationArea = All;
                Promoted = true;
                Enabled = true;
                RunObject = page SalesOrderPlannerList;
            }
            action("Sales Order Buyer")
            {
                ApplicationArea = All;
                Promoted = true;
                Enabled = true;
                RunObject = page SalesOrderCreditBuyer;
            }
            action("Sales Order Execution")
            {
                ApplicationArea = All;
                Promoted = true;
                Enabled = true;
                RunObject = page SalesOrderExecutionList;
            }
            action("Sales Order Integration")
            {
                ApplicationArea = All;
                Promoted = true;
                Enabled = true;
                RunObject = page "Sales Order Integration list";
            }

        }
        modify(Orders)
        {
            Caption = 'Sales Order Operation Team';
            ApplicationArea = all;
        }

        // Add changes to page actions here
    }

    var
        myInt: Integer;
}