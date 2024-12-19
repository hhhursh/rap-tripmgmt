CLASS lhc_zhr_i_trm DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zhr_i_trm RESULT result.

ENDCLASS.

CLASS lhc_zhr_i_trm IMPLEMENTATION.

  METHOD get_instance_authorizations.

    DATA: lv_temp.

    lv_temp = 'T'.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_zhr_i_trmpax DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS validateEmail FOR VALIDATE ON SAVE
      IMPORTING keys FOR zhr_i_trmpax~validateEmail.

ENDCLASS.

CLASS lhc_zhr_i_trmpax IMPLEMENTATION.

  METHOD validateEmail.

    DATA: lv_temp.

    lv_temp = 'T'.

  ENDMETHOD.

ENDCLASS.
