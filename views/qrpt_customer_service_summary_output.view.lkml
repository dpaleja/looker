view: qrpt_customer_service_summary_output {
  sql_table_name: dbo.qrptCustomerServiceSummaryOutput ;;

  dimension: dbl_calc_recov_total {
    type: number
    sql: ${TABLE}.dblCalcRecovTotal ;;
  }

  dimension: dbl_calc_unit_rate {
    type: number
    sql: ${TABLE}.dblCalcUnitRate ;;
  }

  dimension: dbl_spec_recov_total {
    type: number
    sql: ${TABLE}.dblSpecRecovTotal ;;
  }

  dimension: dbl_surplus_amount {
    type: number
    sql: ${TABLE}.dblSurplusAmount ;;
  }

  dimension: rate_spec {
    type: number
    sql: ${TABLE}.RateSpec ;;
  }

  dimension: str_classification {
    type: string
    sql: ${TABLE}.strClassification ;;
  }

  dimension: str_classification2 {
    type: string
    sql: ${TABLE}.strClassification2 ;;
  }

  dimension: str_description {
    type: string
    sql: ${TABLE}.strDescription ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
  }

  dimension: sum_of_all_months {
    type: number
    sql: ${TABLE}.SumOfAllMonths ;;
  }

  dimension: sum_of_month1 {
    type: number
    sql: ${TABLE}.SumOfMonth1 ;;
  }

  dimension: sum_of_month10 {
    type: number
    sql: ${TABLE}.SumOfMonth10 ;;
  }

  dimension: sum_of_month11 {
    type: number
    sql: ${TABLE}.SumOfMonth11 ;;
  }

  dimension: sum_of_month12 {
    type: number
    sql: ${TABLE}.SumOfMonth12 ;;
  }

  dimension: sum_of_month2 {
    type: number
    sql: ${TABLE}.SumOfMonth2 ;;
  }

  dimension: sum_of_month3 {
    type: number
    sql: ${TABLE}.SumOfMonth3 ;;
  }

  dimension: sum_of_month4 {
    type: number
    sql: ${TABLE}.SumOfMonth4 ;;
  }

  dimension: sum_of_month5 {
    type: number
    sql: ${TABLE}.SumOfMonth5 ;;
  }

  dimension: sum_of_month6 {
    type: number
    sql: ${TABLE}.SumOfMonth6 ;;
  }

  dimension: sum_of_month7 {
    type: number
    sql: ${TABLE}.SumOfMonth7 ;;
  }

  dimension: sum_of_month8 {
    type: number
    sql: ${TABLE}.SumOfMonth8 ;;
  }

  dimension: sum_of_month9 {
    type: number
    sql: ${TABLE}.SumOfMonth9 ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.UnitType ;;
  }

  dimension: volume_spec {
    type: number
    sql: ${TABLE}.VolumeSpec ;;
  }

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
