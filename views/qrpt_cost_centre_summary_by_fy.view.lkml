view: qrpt_cost_centre_summary_by_fy {
  sql_table_name: dbo.qrptCostCentreSummaryByFY ;;

  dimension: sng_annual_amount {
    type: number
    sql: ${TABLE}.sngAnnualAmount ;;
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

  dimension: str_user_name {
    type: string
    sql: ${TABLE}.strUserName ;;
  }

  dimension: sum_ofsng_month10_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth10Amount ;;
  }

  dimension: sum_ofsng_month11_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth11Amount ;;
  }

  dimension: sum_ofsng_month12_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth12Amount ;;
  }

  dimension: sum_ofsng_month1_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth1Amount ;;
  }

  dimension: sum_ofsng_month2_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth2Amount ;;
  }

  dimension: sum_ofsng_month3_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth3Amount ;;
  }

  dimension: sum_ofsng_month4_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth4Amount ;;
  }

  dimension: sum_ofsng_month5_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth5Amount ;;
  }

  dimension: sum_ofsng_month6_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth6Amount ;;
  }

  dimension: sum_ofsng_month7_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth7Amount ;;
  }

  dimension: sum_ofsng_month8_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth8Amount ;;
  }

  dimension: sum_ofsng_month9_amount {
    type: number
    sql: ${TABLE}.SumOfsngMonth9Amount ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name, str_user_name]
  }
}
