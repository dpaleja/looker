view: qrpt_cuby_ccclass_l3 {
  sql_table_name: dbo.qrptCUbyCCClass_L3 ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: ccclass_id {
    type: number
    sql: ${TABLE}.CCClassID ;;
  }

  dimension: cuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CUID ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.TOTAL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
