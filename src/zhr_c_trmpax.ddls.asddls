
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection: Passenger'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
  @UI.presentationVariant: [{
  visualizations: [ { type: #AS_LINEITEM } ],
  requestAtLeast: [ 'PaxId', 'FirstName', 'LastName', 'Age', 'Gender' ]}]
  
define view entity zhr_c_trmpax
  as projection on zhr_i_trmpax as trmpax
{

       @UI.facet: [          { id:                  'Passenger',
                                  purpose:         #STANDARD,
                                  type:            #IDENTIFICATION_REFERENCE,
                                  label:           'Passenger',
                                  position:        10 }      ]
   @UI: { lineItem:       [ { position: 10,label: 'Passenger ID', importance: #HIGH } ],
          identification: [ { position: 10, label: 'Passenger ID' } ] }
  key Paxid as PaxId,

  key Bkgid as BkgID,
   @UI: { lineItem:       [ { position: 20,label: 'First Name', importance: #HIGH } ],
          identification: [ { position: 20, label: 'First Name' } ] }
      Fname as FirstName,
      @UI: { lineItem:       [ { position: 30,label: 'Last Name', importance: #HIGH } ],
          identification: [ { position: 30, label: 'Last Name' } ] }
    
      Lname as LastName,
        @UI: { lineItem:       [ { position: 40,label: 'Age', importance: #HIGH } ],
          identification: [ { position: 40, label: 'Age' } ] }
      Age   as Age,
        @UI: { lineItem:       [ { position: 50,label: 'Gender', importance: #HIGH } ],
          identification: [ { position: 50, label: 'Gender' } ] }
      Gendr as Gender,
        @UI: { lineItem:       [ { position: 60,label: 'Address', importance: #HIGH } ],
          identification: [ { position: 60, label: 'Address' } ] }
      Addrs as Address,
        @UI: { lineItem:       [ { position: 70,label: 'Phone', importance: #HIGH } ],
          identification: [ { position: 70, label: 'Phone' } ] }
      Phone as Phone,
        @UI: { lineItem:       [ { position: 80,label: 'Email ID', importance: #HIGH } ],
          identification: [ { position: 100, label: 'Email ID' } ] }
      Email as Email,
      
      _Bookings: redirected to parent zhr_c_trm
      
}
