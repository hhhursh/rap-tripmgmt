CLASS lhc_zhr_i_trmpax DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zhr_i_trmpax.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zhr_i_trmpax.

    METHODS read FOR READ
      IMPORTING keys FOR READ zhr_i_trmpax RESULT result.

    METHODS rba_Bookings FOR READ
      IMPORTING keys_rba FOR READ zhr_i_trmpax\_Bookings FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_zhr_i_trmpax IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Bookings.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_zhr_i_trmpab DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zhr_i_trmpab.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zhr_i_trmpab.

    METHODS read FOR READ
      IMPORTING keys FOR READ zhr_i_trmpab RESULT result.

    METHODS rba_Bookings FOR READ
      IMPORTING keys_rba FOR READ zhr_i_trmpab\_Bookings FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_zhr_i_trmpab IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Bookings.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_zhr_i_trmaap DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zhr_i_trmaap.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zhr_i_trmaap.

    METHODS read FOR READ
      IMPORTING keys FOR READ zhr_i_trmaap RESULT result.

    METHODS rba_Bookings FOR READ
      IMPORTING keys_rba FOR READ zhr_i_trmaap\_Bookings FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_zhr_i_trmaap IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Bookings.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_zhr_i_trm DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save REDEFINITION.
    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_zhr_i_trm IMPLEMENTATION.

  METHOD save.

     zhr_trm_api=>get_instance( )->save_booking(
       CHANGING
         reported = reported
     ).


  ENDMETHOD.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.



CLASS lhc_zhr_i_trm DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zhr_i_trm RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zhr_i_trm.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zhr_i_trm.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zhr_i_trm.

    METHODS read FOR READ
      IMPORTING keys FOR READ zhr_i_trm RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zhr_i_trm.

    METHODS rba_trmaap FOR READ
      IMPORTING keys_rba FOR READ zhr_i_trm\trmaap FULL result_requested RESULT result LINK association_links.

    METHODS rba_trmpab FOR READ
      IMPORTING keys_rba FOR READ zhr_i_trm\trmpab FULL result_requested RESULT result LINK association_links.

    METHODS rba_trmpax FOR READ
      IMPORTING keys_rba FOR READ zhr_i_trm\trmpax FULL result_requested RESULT result LINK association_links.

    METHODS cba_trmaap FOR MODIFY
      IMPORTING entities_cba FOR CREATE zhr_i_trm\trmaap.

    METHODS cba_trmpab FOR MODIFY
      IMPORTING entities_cba FOR CREATE zhr_i_trm\trmpab.

    METHODS cba_trmpax FOR MODIFY
      IMPORTING entities_cba FOR CREATE zhr_i_trm\trmpax.

ENDCLASS.

CLASS lhc_zhr_i_trm IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.

    zhr_trm_api=>get_instance( )->create_booking(
      EXPORTING
        entities = entities
      CHANGING
        mapped   = mapped
        failed   = failed
        reported = reported
    ).

  ENDMETHOD.

  METHOD update.

  zhr_trm_api=>get_instance( )->update_booking(
    EXPORTING
      entities = entities
    CHANGING
      mapped   = mapped
      failed   = failed
      reported = reported
  ).

  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.

     zhr_trm_api=>get_instance( )->read_booking(
       EXPORTING
         keys     = keys
       CHANGING
         result   = result
         failed   = failed
         reported = reported
         ).

  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Trmaap.
  ENDMETHOD.

  METHOD rba_Trmpab.
  ENDMETHOD.

  METHOD rba_Trmpax.
  ENDMETHOD.

  METHOD cba_Trmaap.
  ENDMETHOD.

  METHOD cba_Trmpab.
  ENDMETHOD.

  METHOD cba_Trmpax.
  ENDMETHOD.

ENDCLASS.
