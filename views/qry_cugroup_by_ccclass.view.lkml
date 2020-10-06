view: qry_cugroup_by_ccclass {
  sql_table_name: dbo.qryCUGroupByCCClass ;;

  dimension: str_classification1 {
    type: string
    sql: ${TABLE}.strClassification1 ;;
  }

  dimension: str_cost_centre_code {
    type: string
    sql: ${TABLE}.strCostCentreCode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
