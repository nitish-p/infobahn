pageextension 50061 BusinessManagerRoleCenterExt extends "Business Manager Role Center"
{
    actions
    {
        modify("Sales Orders")
        {
            Caption = 'Sales Order Operational Team';
            ApplicationArea = all;
            trigger OnAfterAction()
            var
                myInt: Integer;
            begin

            end;

        }
    }
}
