*CLASS lhc_zhr_i_trmpab DEFINITION INHERITING FROM cl_abap_behavior_handler.
*
*  PRIVATE SECTION.
*
*    METHODS updatePackageInfo FOR DETERMINE ON MODIFY
*      IMPORTING keys FOR zhr_i_trmpab~updatePackageInfo.
*
*ENDCLASS.
*
*CLASS lhc_zhr_i_trmpab IMPLEMENTATION.
*
*  METHOD updatePackageInfo.
*
*    READ ENTITIES OF zhr_i_trm IN LOCAL MODE
*        ENTITY zhr_i_trmpab
*        FIELDS ( Pkgnam ) WITH CORRESPONDING #( keys )
*        RESULT DATA(lt_pkgnam).
*
*    LOOP AT lt_pkgnam INTO DATA(ls_pkgnam).
*
*      DATA: lv_pkgid TYPE CHAR2.
*
*      CASE ls_pkgnam-pkgnam.
*        WHEN 'Golden Triangle'.
*          lv_pkgid = '1'.
*        WHEN 'Kerala Backwaters'.
*          lv_pkgid = '2'.
*        WHEN 'Rajasthan Heritage'.
*          lv_pkgid = '3'.
*        WHEN 'Himachal Getaway'.
*          lv_pkgid = '4'.
*        WHEN 'Goan Escape'.
*          lv_pkgid = '5'.
*        WHEN 'Andaman Getaway'.
*          lv_pkgid = '6'.
*        WHEN 'Varanasi Tour'.
*          lv_pkgid = '7'.
*        WHEN 'North East Trip'.
*          lv_pkgid = '8'.
*        WHEN 'Tamil Nadu Tour'.
*          lv_pkgid = '9'.
*        WHEN 'Ladakh Adventure'.
*          lv_pkgid = '10'.
*        WHEN OTHERS.
*          lv_pkgid = '0'. " Default value for unmatched cases
*      ENDCASE.
*
*      MODIFY ENTITIES OF zhr_i_trm IN LOCAL MODE
*         ENTITY zhr_i_trmpab
*         UPDATE
*         FIELDS ( Pkgid ) WITH VALUE #( ( %tky = ls_pkgnam-%tky Pkgid =  lv_pkgid ) ).
*
*    ENDLOOP.
*  ENDMETHOD.
*
*ENDCLASS.



CLASS lhc_zhr_i_trm DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zhr_i_trm RESULT result.

ENDCLASS.

CLASS lhc_zhr_i_trm IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
