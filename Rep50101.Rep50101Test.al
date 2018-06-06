report 50101 "Rep50101Test"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'ReportLayout50101.rdl';

    dataset
    {
        dataitem(DataItemName; Customer)
        {
            RequestFilterFields = "No.","Customer Posting Group";

            column(CustomerCode; "No.")
            {                        
            }

            column(Customer__No__Caption;FIELDCAPTION("No."))
            {
            }

            column(CustomerName; Name)
            {                                        
            }      
            
            column(CustomerTel; "Phone No.")
            {                                         
            }      
            
        }
        
    } 

    requestpage 
    {
        layout
        {
        
            area(content)
            {
                group(GroupName)
                {
                    Caption = 'GRUPO';
                    field(SacarTest; SacarTest)
                    {
                        ApplicationArea = All;
                        Caption = 'Prueba Request page';
                    }
                }
            }
        }
    }   

    var
        Customer: Record Customer;
        SacarTest: Boolean;

}