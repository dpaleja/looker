view: qrpt_bscharge_all {
  sql_table_name: dbo.qrptBSChargeAll ;;

  dimension: charge {
    type: number
    sql: ${TABLE}.Charge ;;
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
    drill_fields: [customer_unit.id, customer_unit.name]
  }
}
