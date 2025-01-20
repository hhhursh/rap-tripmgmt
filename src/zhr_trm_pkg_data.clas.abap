CLASS zhr_trm_pkg_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zhr_trm_pkg_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA : ls_pkg TYPE zhr_trm_pkg,
           lt_pkg TYPE TABLE OF zhr_trm_pkg.


    ls_pkg-pkgid = '1'.
    ls_pkg-pkgnam = 'Golden Triangle'.
    ls_pkg-paxno = 2.
    ls_pkg-durn = 6.
    ls_pkg-strloc = 'Delhi'.
    ls_pkg-endloc = 'Jaipur'.
    ls_pkg-cost = '25000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.

    ls_pkg-pkgid = '2'.
    ls_pkg-pkgnam = 'Kerala Backwaters'.
    ls_pkg-paxno = 2.
    ls_pkg-durn = 5.
    ls_pkg-strloc = 'Kochi'.
    ls_pkg-endloc = 'Alleppey'.
    ls_pkg-cost = '20000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.

    ls_pkg-pkgid = '3'.
    ls_pkg-pkgnam = 'Rajasthan Heritage'.
    ls_pkg-paxno = 3.
    ls_pkg-durn = 7.
    ls_pkg-strloc = 'Jaipur'.
    ls_pkg-endloc = 'Udaipur'.
    ls_pkg-cost = '30000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.

    ls_pkg-pkgid = '4'.
    ls_pkg-pkgnam = 'Himachal Getaway'.
    ls_pkg-paxno = 4.
    ls_pkg-durn = 8.
    ls_pkg-strloc = 'Delhi'.
    ls_pkg-endloc = 'Manali'.
    ls_pkg-cost = '28000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.

    ls_pkg-pkgid = '5'.
    ls_pkg-pkgnam = 'Goan Escape'.
    ls_pkg-paxno = 2.
    ls_pkg-durn = 4.
    ls_pkg-strloc = 'Mumbai'.
    ls_pkg-endloc = 'Goa'.
    ls_pkg-cost = '15000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.

    ls_pkg-pkgid = '6'.
    ls_pkg-pkgnam = 'Andaman Getaway'.
    ls_pkg-paxno = 4.
    ls_pkg-durn = 6.
    ls_pkg-strloc = 'Port Blair'.
    ls_pkg-endloc = 'Havelock'.
    ls_pkg-cost = '35000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.

    ls_pkg-pkgid = '7'.
    ls_pkg-pkgnam = 'Varanasi Tour'.
    ls_pkg-paxno = 3.
    ls_pkg-durn = 5.
    ls_pkg-strloc = 'Varanasi'.
    ls_pkg-endloc = 'Allahabad'.
    ls_pkg-cost = '12000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.

    ls_pkg-pkgid = '8'.
    ls_pkg-pkgnam = 'North East Trip'.
    ls_pkg-paxno = 3.
    ls_pkg-durn = 10.
    ls_pkg-strloc = 'Guwahati'.
    ls_pkg-endloc = 'Shillong'.
    ls_pkg-cost = '40000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.

    ls_pkg-pkgid = '9'.
    ls_pkg-pkgnam = 'Tamil Nadu Tour'.
    ls_pkg-paxno = 2.
    ls_pkg-durn = 5.
    ls_pkg-strloc = 'Chennai'.
    ls_pkg-endloc = 'Madurai'.
    ls_pkg-cost = '18000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.

    ls_pkg-pkgid = '10'.
    ls_pkg-pkgnam = 'Ladakh Adventure'.
    ls_pkg-paxno = 4.
    ls_pkg-durn = 7.
    ls_pkg-strloc = 'Leh'.
    ls_pkg-endloc = 'Pangong'.
    ls_pkg-cost = '45000'.
    ls_pkg-curr = 'INR'.
    APPEND ls_pkg TO lt_pkg.


    INSERT zhr_trm_pkg FROM TABLE @lt_pkg.

    COMMIT WORK.
    out->write(  'Successfully updated' ) .

  ENDMETHOD.
ENDCLASS.
