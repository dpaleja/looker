view: qrpt_cc_cu3_group_new_l3_bs_cu {
  sql_table_name: dbo.qrptCC_CU3_Group_New_L3_BS_CU ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
  }

  dimension: ccid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CCID ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: service_name {
    type: string
    sql: ${TABLE}.ServiceName ;;
  }

  dimension: str_cost_centre_name {
    type: string
    sql: ${TABLE}.strCostCentreName ;;
  }

  dimension: total_percent {
    type: number
    sql: ${TABLE}.TotalPercent ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, str_cost_centre_name, service_name]
  }
}
