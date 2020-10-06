view: qry_allowed_cc {
  sql_table_name: dbo.qryAllowedCC ;;

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  dimension: str_classification_name {
    type: string
    sql: ${TABLE}.strClassificationName ;;
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

  dimension: str_group_name {
    type: string
    sql: ${TABLE}.strGroupName ;;
  }

  dimension: str_sort_key {
    type: string
    sql: ${TABLE}.strSortKey ;;
  }

  dimension: str_user_name {
    type: string
    sql: ${TABLE}.strUserName ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [str_group_name, str_classification_name, str_cost_centre_name, str_user_name]
  }
}
