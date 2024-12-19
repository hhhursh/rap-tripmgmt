@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TRM: Passengers'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zhr_i_trmpax as select from zhr_trm_pax
association to parent zhr_i_trm as _Bookings on $projection.Bkgid = _Bookings.BookingID
{
  
    key paxid as Paxid,
    key bkgid as Bkgid,
    fname as Fname,
    lname as Lname,
    age as Age,
    gendr as Gendr,
    addrs as Addrs,
    phone as Phone,
    email as Email,
    _Bookings 
    
    
}
