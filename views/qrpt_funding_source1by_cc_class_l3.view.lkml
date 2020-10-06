view: qrpt_funding_source1by_cc_class_l3 {
  sql_table_name: dbo.qrptFundingSource1byCC_Class_L3 ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: ccclass_id {
    type: number
    sql: ${TABLE}.CCClassID ;;
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
