// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 "CustomerListExt" extends "Customer List"
{
    actions
     {
         addlast(Reports)
         {
             action(Imprimir)
             {
                 ApplicationArea = All;
                 Image = PrintReport;
                 Promoted = true;
                 PromotedIsBig = true;
                 CaptionML = ESP='Lista de clientes',
                             ENU='Customer List';
                 trigger OnAction()
                 begin
                    Report.RunModal(Report::Rep50101Test); 
                 end;
             }
             action(Imprimir2)
             {
                 ApplicationArea = All;
                 Image = PrintReport;
                 Promoted = true;
                 PromotedIsBig = true;
                 CaptionML = ESP='Lista de clientes 2',
                             ENU='Customer List 2';
                 trigger OnAction()
                 begin
                    Report.RunModal(Report::"GBS_Customer - List"); 
                 end;
             }             
         }
     }
}