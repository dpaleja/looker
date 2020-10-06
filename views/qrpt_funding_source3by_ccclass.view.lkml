view: qrpt_funding_source3by_ccclass {
  sql_table_name: dbo.qrptFundingSource3byCCClass ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: ccclass_id {
    type: number
    sql: ${TABLE}.CCClassID ;;
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
