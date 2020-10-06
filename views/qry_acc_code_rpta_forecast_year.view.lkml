view: qry_acc_code_rpta_forecast_year {
  sql_table_name: dbo.qryAccCodeRptaForecastYear ;;

  dimension: int_allocation_type {
    type: number
    sql: ${TABLE}.intAllocationType ;;
  }

  dimension: sng_month10_amount {
    type: number
    sql: ${TABLE}.sngMonth10Amount ;;
  }

  dimension: sng_month11_amount {
    type: number
    sql: ${TABLE}.sngMonth11Amount ;;
  }

  dimension: sng_month12_amount {
    type: number
    sql: ${TABLE}.sngMonth12Amount ;;
  }

  dimension: sng_month1_amount {
    type: number
    sql: ${TABLE}.sngMonth1Amount ;;
  }

  dimension: sng_month2_amount {
    type: number
    sql: ${TABLE}.sngMonth2Amount ;;
  }

  dimension: sng_month3_amount {
    type: number
    sql: ${TABLE}.sngMonth3Amount ;;
  }

  dimension: sng_month4_amount {
    type: number
    sql: ${TABLE}.sngMonth4Amount ;;
  }

  dimension: sng_month5_amount {
    type: number
    sql: ${TABLE}.sngMonth5Amount ;;
  }

  dimension: sng_month6_amount {
    type: number
    sql: ${TABLE}.sngMonth6Amount ;;
  }

  dimension: sng_month7_amount {
    type: number
    sql: ${TABLE}.sngMonth7Amount ;;
  }

  dimension: sng_month8_amount {
    type: number
    sql: ${TABLE}.sngMonth8Amount ;;
  }

  dimension: sng_month9_amount {
    type: number
    sql: ${TABLE}.sngMonth9Amount ;;
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

  dimension: str_expense_item_code {
    type: number
    sql: ${TABLE}.strExpenseItemCode ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: [str_cost_centre_name]
  }
}
