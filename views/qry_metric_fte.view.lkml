view: qry_metric_fte {
  sql_table_name: dbo.qryMetricFTE ;;

  dimension: bench_name {
    type: string
    sql: ${TABLE}.BenchName ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.ClassName ;;
  }

  dimension: staff_count {
    type: number
    sql: ${TABLE}.StaffCount ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  measure: count {
    type: count
    drill_fields: [class_name, bench_name, str_service_name]
  }
}
