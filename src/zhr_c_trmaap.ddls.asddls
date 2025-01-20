@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection: Activities'
@Metadata.ignorePropagatedAnnotations: true

@UI.presentationVariant: [{
visualizations: [ { type: #AS_LINEITEM } ],
requestAtLeast: [ 'Bkgid', 'Actid', 'Cost'] }]

define view entity zhr_c_trmaap
  as projection on zhr_i_trmaap
{
      @UI.facet: [          { id:                 'Activites',
                                   purpose:         #STANDARD,
                                   type:            #IDENTIFICATION_REFERENCE,
                                   label:           'Activities',
                                   position:        10 }      ]
      key  Bkgid,
      
      @UI: { lineItem:       [ { position: 10, label: 'Activity ID', importance: #HIGH } ],
              identification: [ { position: 10, label: 'Activity ID' } ] }
      key  Aapid,
            @UI: { lineItem:       [ { position: 20, label: 'PABID', importance: #HIGH } ],
              identification: [ { position: 20, label: 'PABID' } ] }
      key  Pabid,
    
           Actid,
                 @UI: { lineItem:       [ { position: 30, label: 'Name', importance: #HIGH } ],
              identification: [ { position: 30, label: 'Name' } ] }
           ActName,
           
           
             @UI: { lineItem:       [ { position: 40, label: 'Cost', importance: #HIGH } ],
              identification: [ { position: 40, label: 'Cost' } ] }
      @Semantics.amount.currencyCode: 'Curr'
           Cost,
             @UI: { lineItem:       [ { position: 50, label: 'Currency', importance: #HIGH } ],
              identification: [ { position: 50, label: 'Currency' } ] }
           Curr,
           
           _Bookings: redirected to parent zhr_c_trm
}
