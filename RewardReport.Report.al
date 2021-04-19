report 50101 "RewardReport"
{
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './RewardReport.rdl';
    Caption = 'Reward Report';
    DefaultLayout = RDLC;
    UseRequestPage = true;

    dataset
    {
        dataitem(RewardTable; Reward)
        {
            column(RewardID; "Reward ID")
            {
            }
            column(Decription; Decription)
            {
            }
            column(DiscountPercentage; "Discount Percentage")
            {
            }
            dataitem(Customer; Customer)
            {
                DataItemLinkReference = RewardTable;
                DataItemLink = "Reward ID" = field("Reward ID");
                column(No_; "No.") { }
                column(Name; Name)
                {
                }
                column(Name_2; "Name 2") { }
            }

            trigger OnPreDataItem()
            begin
                RewardTable.SetRange("Reward ID", RID);
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                field(RID; RID)
                {
                    ApplicationArea = All;
                    Caption = 'Reward ID';
                }
            }
        }
    }

    var
        RID: Code[30];
}
