view: qrpt_allocation_drivers_scbench {
  sql_table_name: dbo.qrptAllocationDriversSCBench ;;

  dimension: averagevolume {
    type: number
    sql: ${TABLE}.averagevolume ;;
  }

  dimension: benchmark_name {
    type: string
    sql: ${TABLE}.BenchmarkName ;;
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
    drill_fields: [benchmark_name, str_service_name]
  }
}
