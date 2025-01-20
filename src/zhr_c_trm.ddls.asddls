@AccessControl.authorizationCheck: #NOT_REQUIRED
@AbapCatalog.viewEnhancementCategory: [#NONE]
@Metadata.allowExtensions: true
@Search.searchable: true

@UI: { headerInfo: { typeName: 'Trip Management System',
                    typeNamePlural: 'TRM',
                    title: { type: #STANDARD, label: 'Trip Management System', value: 'BookingID' } }}

     // presentationVariant: [{ sortOrder: [{ by: 'Creationdat ',
     //                                       direction: #DESC }] }] }
                                            
define root view entity zhr_c_trm 
provider contract transactional_query
as projection on zhr_i_trm
{       
        @Search.defaultSearchElement: true
        key BookingID, 
        @Search.defaultSearchElement: true  
            Cost_INR,  
        @Search.defaultSearchElement: true  
            Currency,
        @Search.defaultSearchElement: true              
            StartDate,  
        @Search.defaultSearchElement: true              
            EndDate ,
            
            trmpax: redirected to composition child  zhr_c_trmpax,
            trmpab: redirected to composition child  zhr_c_trmpab,
            trmaap: redirected to composition child  zhr_c_trmaap       
                                   
}
