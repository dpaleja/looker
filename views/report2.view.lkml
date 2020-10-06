view: report2 {
  sql_table_name: dbo.Report2 ;;

  dimension: sng_alloc_percent {
    type: string
    sql: ${TABLE}.sngAllocPercent ;;
  }

  dimension: sng_total {
    type: number
    sql: ${TABLE}.sngTotal ;;
  }

  dimension: str_cost_centre_code {
    type: string
    sql: ${TABLE}.strCostCentreCode ;;
  }

  dimension: str_cost_centre_name {
    type: string
    sql: ${TABLE}.strCostCentreName ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: sum_of_fte {
    type: number
    sql: ${TABLE}.SumOfFTE ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name, str_service_name]
  }
}
