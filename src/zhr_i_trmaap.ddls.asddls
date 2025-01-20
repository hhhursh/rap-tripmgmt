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
 inner join  zhr_trm_act as Activity on Activity.actid = zhr_trm_aap.actid
 association to parent zhr_i_trm as _Bookings on $projection.Bkgid = _Bookings.BookingID
{
    key zhr_trm_aap.bkgid as Bkgid,
    key zhr_trm_aap.aapid as Aapid,
    key zhr_trm_aap.pabid as Pabid,
    Activity.actid as Actid,
    Activity.actnam as ActName,
    @Semantics.amount.currencyCode: 'Curr'
    Activity.cost as Cost,
    Activity.curr as Curr,
    
    _Bookings
}
