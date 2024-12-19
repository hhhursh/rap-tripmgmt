@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TRM: Packages'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zhr_i_trmpab
  as select from zhr_trm_pab
    inner join   zhr_trm_pkg as _pkgs on _pkgs.pkgid = zhr_trm_pab.pkgid
 association to parent zhr_i_trm as _Bookings on $projection.Bkgid = _Bookings.BookingID
{
  key zhr_trm_pab.pabid   as Pabid,
  key zhr_trm_pab.bkgid   as Bkgid,
      _pkgs.pkgnam        as Pkgnam,
      zhr_trm_pab.pkgid   as Pkgid,
      _pkgs.paxno         as Paxno,
      _pkgs.durn          as Durn,
      zhr_trm_pab.frdat   as Frdat,
      zhr_trm_pab.todat   as Todat,
      _pkgs.strloc        as Strloc,
      _pkgs.endloc        as Endloc,
      zhr_trm_pab.pkgstat as Pkgstat,
      _Bookings
}
