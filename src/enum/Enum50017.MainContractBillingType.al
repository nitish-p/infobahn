enum 50017 "MainContract_BillingType"
{
    Extensible = true;
    value(0; " ") { }

    value(3; "Fixed")
    {
        Caption = 'Fixed';
    }
    value(1; Variable)
    {
        Caption = 'Variable';
    }
    value(2; "Fixed + Variable")
    {
        Caption = 'Fixed + Variable';
    }
}
