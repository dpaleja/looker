view: qrpt_cc_class_cu_group3 {
  sql_table_name: dbo.qrptCC_Class_CU_Group3 ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
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
    drill_fields: [group_name]
  }
}
