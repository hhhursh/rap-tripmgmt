
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TRM Data Model'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zhr_i_trm
  as select from zhr_trm_bkghd
  composition [0..*] of zhr_i_trmpax as trmpax
  composition [0..*] of zhr_i_trmpab as trmpab
  composition [0..*] of zhr_i_trmaap as trmaap
  composition [0..*] of zhr_i_trmpay as trmpay
{
  key bkgid  as BookingID,
      @Semantics.amount.currencyCode: 'Currency'
      tlcost as Cost_INR,
      curr   as Currency,
      strdat as StartDate,
      enddat as EndDate,
      bkgstat as BkgStat,
      erdat as CreationDate,
      aedat as LastChangedDate,
      ernam as CreatedBy,
      aenam as LastChangedBy,
              
      trmpax,
      trmpab,
      trmaap,
      trmpay
      
      
}
