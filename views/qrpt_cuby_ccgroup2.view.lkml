view: qrpt_cuby_ccgroup2 {
  sql_table_name: dbo.qrptCUbyCCGroup2 ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: ccgroup_id {
    type: number
    sql: ${TABLE}.CCGroupID ;;
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
