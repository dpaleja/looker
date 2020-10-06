view: qrpt_cc_cu_group2 {
  sql_table_name: dbo.qrptCC_CU_Group2 ;;

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

  dimension: str_cost_centre_name {
    type: string
    sql: ${TABLE}.strCostCentreName ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name, group_name]
  }
}
