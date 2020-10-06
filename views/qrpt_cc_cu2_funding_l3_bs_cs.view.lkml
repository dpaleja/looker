view: qrpt_cc_cu2_funding_l3_bs_cs {
  sql_table_name: dbo.qrptCC_CU2_Funding_L3_BS_CS ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
  }

  dimension: str_classification1 {
    type: string
    sql: ${TABLE}.strClassification1 ;;
  }

  dimension: str_cost_centre_name {
    type: string
    sql: ${TABLE}.strCostCentreName ;;
  }

  dimension: str_funding_source {
    type: string
    sql: ${TABLE}.strFundingSource ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name]
  }
}
