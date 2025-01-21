@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection: Packages'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@UI.presentationVariant: [{
visualizations: [ { type: #AS_LINEITEM } ],
requestAtLeast: [ 'Pabid','Pkgnam', 'Paxno', 'Durn', 'Frdat', 'Todat', 'Strloc', 'Endloc' ] }]

define view entity zhr_c_trmpab
  as projection on zhr_i_trmpab
{

  key Pabid,

  key Bkgid,

      Pkgnam,

      Paxno,

      Durn,

      Frdat,

      Todat,

      Strloc,

      Endloc,

      Pkgstat,
      /* Associations */
      _Bookings : redirected to parent zhr_c_trm

}
