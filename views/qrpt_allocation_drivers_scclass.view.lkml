view: qrpt_allocation_drivers_scclass {
  sql_table_name: dbo.qrptAllocationDriversSCClass ;;

  dimension: averagevolume {
    type: number
    sql: ${TABLE}.averagevolume ;;
  }

  dimension: classification_name {
    type: string
    sql: ${TABLE}.ClassificationName ;;
  }

  dimension: sng_calc_unit_price {
    type: number
    sql: ${TABLE}.sngCalcUnitPrice ;;
  }

  dimension: sng_total_amount {
    type: number
    sql: ${TABLE}.sngTotalAmount ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  measure: count {
    type: count
    drill_fields: [classification_name, str_service_name]
  }
}
