report 50102 "GBS_Customer - List"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'Customer - List.rdlc';
    Caption = 'Cliente - Listado';

    dataset
    {
        dataitem(Customer;Customer)
        {
            RequestFilterFields = "No.","Search Name","Customer Posting Group";
            column(COMPANYNAME;COMPANYPROPERTY.DISPLAYNAME)
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(Customer_TABLECAPTION__________CustFilter;TABLECAPTION + ': ' + CustFilter)
            {
            }
            column(CustFilter;CustFilter)
            {
            }
            column(Customer__No__;"No.")
            {
            }
            column(Customer__Customer_Posting_Group_;"Customer Posting Group")
            {
            }
            column(Customer__Customer_Disc__Group_;"Customer Disc. Group")
            {
            }
            column(Customer__Invoice_Disc__Code_;"Invoice Disc. Code")
            {
            }
            column(Customer__Customer_Price_Group_;"Customer Price Group")
            {
            }
            column(Customer__Fin__Charge_Terms_Code_;"Payment Method Code")
            {
            }
            column(Customer__Payment_Terms_Code_;"Payment Terms Code")
            {
            }
            column(Customer__Salesperson_Code_;"Salesperson Code")
            {
            }
            column(Customer__Currency_Code_;"Currency Code")
            {
            }
            column(Customer__Credit_Limit__LCY__;"Credit Limit (LCY)")
            {
                DecimalPlaces = 0:0;
            }
            column(Customer__Balance__LCY__;"Balance (LCY)")
            {
            }
            column(CustAddr_1_;CustAddr[1])
            {
            }
            column(CustAddr_2_;CustAddr[2])
            {
            }
            column(CustAddr_3_;CustAddr[3])
            {
            }
            column(CustAddr_4_;CustAddr[4])
            {
            }
            column(CustAddr_5_;CustAddr[5])
            {
            }
            column(Customer_Contact;Contact)
            {
            }
            column(Customer__Phone_No__;"Phone No.")
            {
            }
            column(CustAddr_6_;CustAddr[6])
            {
            }
            column(CustAddr_7_;CustAddr[7])
            {
            }
            column(Customer___ListCaption;Customer___ListCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Customer__No__Caption;FIELDCAPTION("No."))
            {
            }
            column(Customer__Customer_Posting_Group_Caption;Customer__Customer_Posting_Group_CaptionLbl)
            {
            }
            column(Customer__Customer_Disc__Group_Caption;Customer__Customer_Disc__Group_CaptionLbl)
            {
            }
            column(Customer__Invoice_Disc__Code_Caption;Customer__Invoice_Disc__Code_CaptionLbl)
            {
            }
            column(Customer__Customer_Price_Group_Caption;Customer__Customer_Price_Group_CaptionLbl)
            {
            }
            column(Customer__Fin__Charge_Terms_Code_Caption;FIELDCAPTION("Payment Method Code"))
            {
            }
            column(Customer__Payment_Terms_Code_Caption;Customer__Payment_Terms_Code_CaptionLbl)
            {
            }
            column(Customer__Salesperson_Code_Caption;FIELDCAPTION("Salesperson Code"))
            {
            }
            column(Customer__Currency_Code_Caption;Customer__Currency_Code_CaptionLbl)
            {
            }
            column(Customer__Credit_Limit__LCY__Caption;FIELDCAPTION("Credit Limit (LCY)"))
            {
            }
            column(Customer__Balance__LCY__Caption;FIELDCAPTION("Balance (LCY)"))
            {
            }
            column(Customer_ContactCaption;FIELDCAPTION(Contact))
            {
            }
            column(Customer__Phone_No__Caption;FIELDCAPTION("Phone No."))
            {
            }
            column(Total__LCY_Caption;Total__LCY_CaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                CALCFIELDS("Balance (LCY)");
                FormatAddr.FormatAddr(
                  CustAddr,Name,"Name 2",'',Address,"Address 2",
                  City,"Post Code",County,"Country/Region Code");
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CREATETOTALS("Balance (LCY)");
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    var
        CaptionManagement: Codeunit CaptionManagement;
    begin
        CustFilter := CaptionManagement.GetRecordFiltersWithCaptions(Customer);
    end;

    var
        FormatAddr: Codeunit "Format Address";
        CustFilter: Text;
        CustAddr: array [8] of Text[50];
        Customer___ListCaptionLbl: TextConst ENU='Customer - List',ESP='Cliente - Listado';
        CurrReport_PAGENOCaptionLbl: TextConst ENU='Page',ESP='Pág.';
        Customer__Customer_Posting_Group_CaptionLbl: TextConst ENU='Customer Posting Group',ESP='Grupo contable cliente';
        Customer__Customer_Disc__Group_CaptionLbl: TextConst ENU='Cust./Item Disc. Gr.',ESP='Cód. dto. cliente/producto';
        Customer__Invoice_Disc__Code_CaptionLbl: TextConst ENU='Invoice Disc. Code',ESP='Cód. dto. factura';
        Customer__Customer_Price_Group_CaptionLbl: TextConst ENU='Price Group Code',ESP='Cód. tarifa';
        Customer__Payment_Terms_Code_CaptionLbl: TextConst ENU='Payment Terms Code',ESP='Cód. términos pago';
        Customer__Currency_Code_CaptionLbl: TextConst ENU='Currency Code',ESP='Cód. divisa';
        Total__LCY_CaptionLbl: TextConst ENU='Total (LCY)',ESP='Total (DL)';
}

