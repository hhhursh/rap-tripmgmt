@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection: Activities'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@UI.presentationVariant: [{
visualizations: [ { type: #AS_LINEITEM } ],
requestAtLeast: [ 'Bkgid', 'Actid', 'Cost'] }]

define view entity zhr_c_trmaap
  as projection on zhr_i_trmaap
{
      
      key  Bkgid,
      
      key  Aapid,
            
      key  Pabid,
    
           Actid,
                 
           ActName,

      @Semantics.amount.currencyCode: 'Curr'
           Cost,
             
           Curr,
           
           _Bookings: redirected to parent zhr_c_trm
}
