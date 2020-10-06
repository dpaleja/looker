view: qrpt_cc_cu3_group {
  sql_table_name: dbo.qrptCC_CU3_Group ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
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
