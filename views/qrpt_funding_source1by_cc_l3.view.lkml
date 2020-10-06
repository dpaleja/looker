view: qrpt_funding_source1by_cc_l3 {
  sql_table_name: dbo.qrptFundingSource1byCC_L3 ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: ccid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CCID ;;
  }

  dimension: str_funding_source {
    type: string
    sql: ${TABLE}.strFundingSource ;;
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
