view: qrpt_bscharge_all_by_csfor_web_bi {
  sql_table_name: dbo.qrptBSChargeAllByCSForWebBI ;;

  dimension: charge {
    type: number
    sql: ${TABLE}.Charge ;;
  }

  dimension: customer_service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerServiceID ;;
  }

  dimension: customer_unit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerUnitID ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_services.id, customer_services.name, customer_unit.id, customer_unit.name]
  }
}
