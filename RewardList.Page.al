page 50101 "Reward List"
{

    Caption = 'Reward List';
    PageType = List;
    SourceTable = Reward;
    // for search bar
    ApplicationArea = All;
    UsageCategory = Lists;
    // related card page
    CardPageId = "Reward Card";

    layout
    {
        area(content)
        {
            repeater(Reward)
            {
                field("Reward ID"; Rec."Reward ID")
                {
                    ToolTip = 'Specifies the value of the Reward ID field';
                    ApplicationArea = All;
                }
                field(Decription; Rec.Decription)
                {
                    ToolTip = 'Specifies the value of the Decription field';
                    ApplicationArea = All;
                }
                field("Discount Percentage"; Rec."Discount Percentage")
                {
                    ToolTip = 'Specifies the value of the Discount Percentage field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
