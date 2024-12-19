@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TRM: Activities'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zhr_i_trmaap as select from zhr_trm_aap
association to parent zhr_i_trm as _Bookings on $projection.Bkgid = _Bookings.BookingID
{
    key bkgid as Bkgid,
    key aapid as Aapid,
    key pabid as Pabid,
    actid as Actid,
    @Semantics.amount.currencyCode: 'Curr'
    cost as Cost,
    curr as Curr,
    
    _Bookings
}
