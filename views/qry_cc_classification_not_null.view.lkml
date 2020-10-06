view: qry_cc_classification_not_null {
  sql_table_name: dbo.qryCC_ClassificationNotNull ;;

  dimension: str_classification1 {
    type: string
    sql: ${TABLE}.strClassification1 ;;
  }

  dimension: str_code {
    type: number
    sql: ${TABLE}.strCode ;;
  }

  dimension: str_cost_centre_code {
    type: string
    sql: ${TABLE}.strCostCentreCode ;;
  }

  dimension: str_cost_centre_name {
    type: string
    sql: ${TABLE}.strCostCentreName ;;
  }

  dimension: str_cost_centre_type {
    type: string
    sql: ${TABLE}.strCostCentreType ;;
  }

  dimension: str_description {
    type: string
    sql: ${TABLE}.strDescription ;;
  }

  dimension: str_sort_key {
    type: string
    sql: ${TABLE}.strSortKey ;;
  }

  dimension: ysn_service_costing {
    type: string
    sql: ${TABLE}.ysnServiceCosting ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name]
  }
}
