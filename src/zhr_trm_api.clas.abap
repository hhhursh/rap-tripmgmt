CLASS zhr_trm_api DEFINITION
  PUBLIC.




  PUBLIC SECTION.

    TYPES: tt_create_booking   TYPE TABLE FOR CREATE zhr_i_trm,
           tt_mapped_booking   TYPE RESPONSE FOR MAPPED EARLY zhr_i_trm,
           tt_failed_booking   TYPE RESPONSE FOR FAILED EARLY zhr_i_trm,
           tt_reported_booking TYPE RESPONSE FOR REPORTED EARLY zhr_i_trm,
           tt_reported_late    TYPE RESPONSE FOR REPORTED LATE zhr_i_trm,

           tt_booking_keys     TYPE TABLE FOR READ IMPORT zhr_i_trm,
           tt_result_booking   TYPE TABLE FOR READ RESULT zhr_i_trm,

           tt_entities_booking TYPE TABLE FOR UPDATE zhr_i_trm.


    CLASS-METHODS: get_instance RETURNING VALUE(ro_instance) TYPE REF TO zhr_trm_api.

    METHODS:
      get_next_id RETURNING VALUE(rv_bkgid) TYPE zhr_trm_bkgid,

      create_booking
        IMPORTING entities TYPE tt_create_booking
        CHANGING  mapped   TYPE tt_mapped_booking
                  failed   TYPE tt_failed_booking
                  reported TYPE tt_reported_booking,

      read_booking
        IMPORTING keys     TYPE tt_booking_keys
        CHANGING  result   TYPE tt_result_booking
                  failed   TYPE tt_failed_booking
                  reported TYPE tt_reported_booking,

      update_booking
        IMPORTING entities TYPE tt_entities_booking
        CHANGING  mapped   TYPE tt_mapped_booking
                  failed   TYPE tt_failed_booking
                  reported TYPE tt_reported_booking,



      save_booking
        CHANGING reported TYPE  tt_reported_late
        .

  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-DATA: go_instance TYPE REF TO zhr_trm_api,
                gt_bookings TYPE TABLE OF zhr_trm_bkghd.

ENDCLASS.



CLASS zhr_trm_api IMPLEMENTATION.


  METHOD get_instance.


    go_instance = ro_instance = COND #( WHEN go_instance IS BOUND
                                        THEN go_instance
                                        ELSE NEW #(  ) ).

  ENDMETHOD.

  METHOD create_booking.

    gt_bookings = CORRESPONDING #( entities MAPPING FROM ENTITY ).

    LOOP AT entities ASSIGNING FIELD-SYMBOL(<lfs_entities>).

      gt_bookings[ 1 ]-bkgid =   get_next_id( ).
      gt_bookings[ 1 ]-ernam = sy-uname.
      gt_bookings[ 1 ]-erdat = sy-uzeit.


      mapped-zhr_i_trm = VALUE #( (
                                  %cid = <lfs_entities>-%cid
                                  %key = <lfs_entities>-%key
       ) ).

    ENDLOOP.

  ENDMETHOD.

  METHOD get_next_id.

    TRY.
        rv_bkgid = cl_uuid_factory=>create_system_uuid( )->create_uuid_c22( ).
      CATCH cx_uuid_error.

    ENDTRY.

  ENDMETHOD.

  METHOD save_booking.

    CHECK gt_bookings IS NOT INITIAL.
    MODIFY zhr_trm_bkghd FROM TABLE @gt_bookings.

  ENDMETHOD.

  METHOD read_booking.

    SELECT * FROM zhr_trm_bkghd FOR ALL ENTRIES IN @keys
    WHERE bkgid = @keys-BookingID
    INTO TABLE @DATA(lt_booking_data).

    result =  CORRESPONDING #( lt_booking_data MAPPING TO ENTITY ).

  ENDMETHOD.

  METHOD update_booking.

    DATA: lt_booking_update TYPE TABLE OF zhr_trm_bkghd,
          lv_columns        TYPE string.


    lt_booking_update = CORRESPONDING #( entities MAPPING FROM ENTITY ).

    SELECT * FROM zhr_trm_bkghd FOR ALL ENTRIES IN @lt_booking_update
      WHERE bkgid = @lt_booking_update-bkgid
      INTO TABLE @DATA(lt_booking_data).

    CLEAR gt_bookings.

    gt_bookings = VALUE #( FOR x = 1 WHILE x <=  lines( lt_booking_update )

    LET
        ls_booking_new = VALUE #( lt_booking_update[ x ] OPTIONAL )
        ls_booking_old = VALUE #( lt_booking_data[ bkgid = ls_booking_new-bkgid ] OPTIONAL )

    IN
    (
             bkgid = ls_booking_new-bkgid

             curr = 'INR'

             tlcost = COND #( WHEN ls_booking_new-tlcost IS INITIAL
                              THEN ls_booking_old-tlcost
                              ELSE ls_booking_new-tlcost
                            )

             strdat = COND #( WHEN ls_booking_new-strdat IS INITIAL
                              THEN ls_booking_old-strdat
                              ELSE ls_booking_new-strdat
                            )

             enddat = COND #( WHEN ls_booking_new-enddat IS INITIAL
                              THEN ls_booking_old-enddat
                              ELSE ls_booking_new-enddat
                            )

             aedat = sy-uzeit

             aenam = sy-uname

    )
    ).




  ENDMETHOD.

ENDCLASS.
