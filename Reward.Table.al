table 50100 "Reward"
{
    Caption = 'Reward';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Reward ID"; Code[30])
        {
            Caption = 'Reward ID';
            DataClassification = CustomerContent;
        }
        field(2; Decription; Text[250])
        {
            Caption = 'Decription';
            DataClassification = CustomerContent;
        }
        field(3; "Discount Percentage"; Decimal)
        {
            Caption = 'Discount Percentage';
            DataClassification = CustomerContent;
        }
        field(4; "Minimum Purchase"; Decimal)
        {
            Caption = 'Minimum Purchase';
            DataClassification = CustomerContent;
            DecimalPlaces = 2;
        }
        field(5; "Last Modified Date"; DateTime)
        {
            Caption = 'Last Modified Date';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Reward ID")
        {
            Clustered = true;
        }
        key(DP; "Discount Percentage")
        {

        }
    }

    trigger OnInsert()
    begin
        SetLastModifiedDate();
    end;

    trigger OnModify()
    begin
        SetLastModifiedDate();
        Message(Rec.Decription + ' ' + xRec.Decription);
    end;

    local procedure SetLastModifiedDate()
    begin
        Rec."Last Modified Date" := CurrentDateTime();
    end;

}
