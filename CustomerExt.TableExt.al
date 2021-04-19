tableextension 50100 "CustomerExt" extends Customer
{
    fields
    {
        field(50100; "Reward ID"; Code[30])
        {
            Caption = 'Reward ID';
            DataClassification = CustomerContent;
            TableRelation = Reward."Reward ID";
        }
    }
}
