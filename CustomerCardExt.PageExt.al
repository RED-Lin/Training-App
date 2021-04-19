pageextension 50100 "CustomerCardExt" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Reward ID"; Rec."Reward ID")
            {
                Caption = 'Level';
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addfirst(navigation)
        {
            action(Reward)
            {
                ApplicationArea = All;
                RunObject = page "Reward List";
            }
        }
    }
}
