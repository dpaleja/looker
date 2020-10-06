view: qrpt_cc_class_cu3_new {
  sql_table_name: dbo.qrptCC_Class_CU3_New ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }

  dimension: service_name {
    type: string
    sql: ${TABLE}.ServiceName ;;
  }

  dimension: str_classification1 {
    type: string
    sql: ${TABLE}.strClassification1 ;;
  }

  dimension: total_percent {
    type: number
    sql: ${TABLE}.TotalPercent ;;
  }

  measure: count {
    type: count
    drill_fields: [service_name]
  }
}
