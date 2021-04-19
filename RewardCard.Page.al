page 50100 "Reward Card"
{

    Caption = 'Reward Card';
    PageType = Card;
    SourceTable = Reward;

    layout
    {
        area(content)
        {
            group(Reward)
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
                field("Minimum Purchase"; Rec."Minimum Purchase")
                {
                    ApplicationArea = All;
                }
                field("Last Modified Date"; Rec."Last Modified Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
