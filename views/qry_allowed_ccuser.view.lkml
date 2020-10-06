view: qry_allowed_ccuser {
  sql_table_name: dbo.qryAllowedCCUser ;;

  dimension: int_user_type {
    type: number
    sql: ${TABLE}.intUserType ;;
  }

  dimension: lng_classification_id {
    type: number
    sql: ${TABLE}.lngClassificationID ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
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

  dimension: str_sort_key {
    type: string
    sql: ${TABLE}.strSortKey ;;
  }

  dimension: str_user_code {
    type: number
    sql: ${TABLE}.strUserCode ;;
  }

  dimension: str_user_name {
    type: string
    sql: ${TABLE}.strUserName ;;
  }

  measure: count {
    type: count
    drill_fields: [str_user_name, str_cost_centre_name]
  }
}
