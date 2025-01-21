
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection: Passenger'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
  
define view entity zhr_c_trmpax
  as projection on zhr_i_trmpax as trmpax
{

       
   
  key Paxid as PaxId,

  key Bkgid as BkgID,
   
      Fname as FirstName,
      
    
      Lname as LastName,
        
      Age   as Age,
        
      Gendr as Gender,
        
      Addrs as Address,
        
      Phone as Phone,
        
      Email as Email,
      
      _Bookings: redirected to parent zhr_c_trm
      
}
