view: report4 {
  sql_table_name: dbo.Report4 ;;

  dimension: str_cost_centre_name {
    type: string
    sql: ${TABLE}.strCostCentreName ;;
  }

  dimension: sum_ofsng_total {
    type: number
    sql: ${TABLE}.SumOfsngTotal ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name]
  }
}
