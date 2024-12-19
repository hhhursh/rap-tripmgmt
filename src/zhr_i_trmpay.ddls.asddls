@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TRM: Payments'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zhr_i_trmpay
  as select from zhr_trm_pay
  association to parent zhr_i_trm as _Bookings on $projection.Bkgid = _Bookings.BookingID
{
  key payid  as Payid,
  key bkgid  as Bkgid,
      pabid  as Pabid,
      @Semantics.amount.currencyCode: 'Curr'
      amnt   as Amnt,
      curr   as Curr,
      paydat as Paydat,
      paytim as Paytim,
      paymt  as Paymt,
      _Bookings
}
