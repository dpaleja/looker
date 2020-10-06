view: qrpt_cc_class_cu2_new {
  sql_table_name: dbo.qrptCC_Class_CU2_New ;;

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

  measure: count {
    type: count
    drill_fields: [service_name]
  }
}
