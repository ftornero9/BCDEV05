codeunit 50120 ShowHeadLineDoc
{
    trigger OnRun()
    begin
        
    end;
    
[EventSubscriber(ObjectType::Page, Page::"Headline RC Business Manager", 'OnIsAnyExtensionHeadlineVisible', '', true, true)]
local procedure ShowDocumentationHeadLine(var ExtensionHeadlinesVisible: Boolean)
begin
    ExtensionHeadlinesVisible := false; // Mostrar HeadLine por defecto
end;
}