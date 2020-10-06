view: qrpt_cc_cu3 {
  sql_table_name: dbo.qrptCC_CU3 ;;

  dimension: amount1 {
    type: number
    sql: ${TABLE}.Amount1 ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }

  dimension: service_name {
    type: string
    sql: ${TABLE}.ServiceName ;;
  }

  dimension: str_classification2 {
    type: string
    sql: ${TABLE}.strClassification2 ;;
  }

  dimension: str_cost_centre_code {
    type: string
    sql: ${TABLE}.strCostCentreCode ;;
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
    drill_fields: [str_cost_centre_name, service_name]
  }
}
