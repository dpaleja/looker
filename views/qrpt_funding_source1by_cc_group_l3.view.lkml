view: qrpt_funding_source1by_cc_group_l3 {
  sql_table_name: dbo.qrptFundingSource1byCC_Group_L3 ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: ccgroup_id {
    type: number
    sql: ${TABLE}.CCGroupID ;;
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
