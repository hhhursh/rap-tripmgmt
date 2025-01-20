@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Packages Value Help'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@Search.searchable: true

define view entity zhr_shv_pkg as select from zhr_trm_pkg
{   
    @Search.defaultSearchElement: true
    key pkgid as PackageID,
    @Search.defaultSearchElement: true
        pkgnam as Pkgnam,
        @Search.defaultSearchElement: true
        paxno as Paxno,
        strloc as Strloc,
        endloc as Endloc,
        durn as Durn,
        @Semantics.amount.currencyCode: 'Currency'
        cost as Cost,
        curr as Currency
}
