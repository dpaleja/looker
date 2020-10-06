view: qry_csheadcount_with_unit_type {
  sql_table_name: dbo.qryCSHeadcountWithUnitType ;;

  dimension: ct {
    type: string
    sql: ${TABLE}.CT ;;
  }

  dimension: estimate {
    type: number
    sql: ${TABLE}.Estimate ;;
  }

  dimension: estimated_month1 {
    type: number
    sql: ${TABLE}.EstimatedMonth1 ;;
  }

  dimension: estimated_month10 {
    type: number
    sql: ${TABLE}.EstimatedMonth10 ;;
  }

  dimension: estimated_month11 {
    type: number
    sql: ${TABLE}.EstimatedMonth11 ;;
  }

  dimension: estimated_month12 {
    type: number
    sql: ${TABLE}.EstimatedMonth12 ;;
  }

  dimension: estimated_month2 {
    type: number
    sql: ${TABLE}.EstimatedMonth2 ;;
  }

  dimension: estimated_month3 {
    type: number
    sql: ${TABLE}.EstimatedMonth3 ;;
  }

  dimension: estimated_month4 {
    type: number
    sql: ${TABLE}.EstimatedMonth4 ;;
  }

  dimension: estimated_month5 {
    type: number
    sql: ${TABLE}.EstimatedMonth5 ;;
  }

  dimension: estimated_month6 {
    type: number
    sql: ${TABLE}.EstimatedMonth6 ;;
  }

  dimension: estimated_month7 {
    type: number
    sql: ${TABLE}.EstimatedMonth7 ;;
  }

  dimension: estimated_month8 {
    type: number
    sql: ${TABLE}.EstimatedMonth8 ;;
  }

  dimension: estimated_month9 {
    type: number
    sql: ${TABLE}.EstimatedMonth9 ;;
  }

  dimension: int_monthly_calculation_type {
    type: number
    sql: ${TABLE}.intMonthlyCalculationType ;;
  }

  dimension: is_time {
    type: string
    sql: ${TABLE}.IsTime ;;
  }

  dimension: lng_classification_id {
    type: number
    sql: ${TABLE}.lngClassificationID ;;
  }

  dimension: lng_classification_id2 {
    type: number
    sql: ${TABLE}.lngClassificationID2 ;;
  }

  dimension: str_code {
    type: number
    sql: ${TABLE}.strCode ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: str_unit_type {
    type: string
    sql: ${TABLE}.strUnitType ;;
  }

  dimension: tm {
    type: number
    sql: ${TABLE}.TM ;;
  }

  dimension: uc {
    type: number
    sql: ${TABLE}.UC ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
