@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection: Packages'
@Metadata.ignorePropagatedAnnotations: true


define view entity zhr_c_trmpab
  as projection on zhr_i_trmpab
{

  key Pabid,
  key Bkgid,
    
      @UI: { lineItem:       [ { position: 10, label: 'Name', importance: #HIGH } ],
             identification: [ { position: 10, label: 'Name' } ] }
//      @Consumption.valueHelpDefinition: [{ entity: {name : 'zhr_shv_pkg', element: 'Pkgnam'} }]
      Pkgnam,
      Pkgid,
      @UI: { lineItem:       [ { position: 20, label: 'Number Of Persons', importance: #HIGH } ],
             identification: [ { position: 20, label: 'Number Of Persons' } ] }
      Paxno,
      @UI: { lineItem:       [ { position: 30, label: 'Duration', importance: #HIGH } ],
             identification: [ { position: 30, label: 'Duration' } ] }
      Durn,
      @UI: { lineItem:       [ { position: 40, label: 'From Date', importance: #HIGH } ],
             identification: [ { position: 40, label: 'From Date' } ] }
      Frdat,
      @UI: { lineItem:       [ { position: 50, label: 'To Date', importance: #HIGH } ],
             identification: [ { position: 50, label: 'To Date' } ] }
      Todat,
      @UI: { lineItem:       [ { position: 60, label: 'Start Location', importance: #HIGH } ],
             identification: [ { position: 60, label: 'Start Location' } ] }
      Strloc,
      @UI: { lineItem:       [ { position: 70, label: 'End Location', importance: #HIGH } ],
             identification: [ { position: 70, label: 'End Location' } ] }
      Endloc,
      Pkgstat,
      /* Associations */
     _Bookings: redirected to parent zhr_c_trm  

}
