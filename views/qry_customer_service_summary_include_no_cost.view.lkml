view: qry_customer_service_summary_include_no_cost {
  sql_table_name: dbo.qryCustomerServiceSummaryIncludeNoCost ;;

  dimension: sng_annual_amount {
    type: number
    sql: ${TABLE}.sngAnnualAmount ;;
  }

  dimension: str_service_code {
    type: string
    sql: ${TABLE}.strServiceCode ;;
  }

  dimension: str_service_name {
    type: string
    sql: ${TABLE}.strServiceName ;;
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

  measure: count {
    type: count
    drill_fields: [str_service_name]
  }
}
