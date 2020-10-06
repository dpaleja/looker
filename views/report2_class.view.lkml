view: report2_class {
  sql_table_name: dbo.Report2Class ;;

  dimension: sng_alloc_percent {
    type: string
    sql: ${TABLE}.sngAllocPercent ;;
  }

  dimension: sng_total {
    type: number
    sql: ${TABLE}.sngTotal ;;
  }

  dimension: str_classification1 {
    type: string
    sql: ${TABLE}.strClassification1 ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: sum_of_fte {
    type: number
    sql: ${TABLE}.SumOfFTE ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
