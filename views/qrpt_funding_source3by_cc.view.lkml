view: qrpt_funding_source3by_cc {
  sql_table_name: dbo.qrptFundingSource3byCC ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: ccid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CCID ;;
  }

  dimension: funding_source3 {
    type: string
    sql: ${TABLE}.FundingSource3 ;;
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
