view: v_expense_amount_fy {
  sql_table_name: dbo.vExpenseAmountFY ;;

  dimension: exid {
    type: number
    value_format_name: id
    sql: ${TABLE}.EXID ;;
  }

  dimension: fte_count {
    type: number
    sql: ${TABLE}.FteCount ;;
  }

  dimension: month10_amount {
    type: number
    sql: ${TABLE}.Month10Amount ;;
  }

  dimension: month10_capex {
    type: number
    sql: ${TABLE}.Month10Capex ;;
  }

  dimension: month10_fte {
    type: number
    sql: ${TABLE}.Month10Fte ;;
  }

  dimension: month11_amount {
    type: number
    sql: ${TABLE}.Month11Amount ;;
  }

  dimension: month11_capex {
    type: number
    sql: ${TABLE}.Month11Capex ;;
  }

  dimension: month11_fte {
    type: number
    sql: ${TABLE}.Month11Fte ;;
  }

  dimension: month12_amount {
    type: number
    sql: ${TABLE}.Month12Amount ;;
  }

  dimension: month12_capex {
    type: number
    sql: ${TABLE}.Month12Capex ;;
  }

  dimension: month12_fte {
    type: number
    sql: ${TABLE}.Month12Fte ;;
  }

  dimension: month1_amount {
    type: number
    sql: ${TABLE}.Month1Amount ;;
  }

  dimension: month1_capex {
    type: number
    sql: ${TABLE}.Month1Capex ;;
  }

  dimension: month1_fte {
    type: number
    sql: ${TABLE}.Month1Fte ;;
  }

  dimension: month2_amount {
    type: number
    sql: ${TABLE}.Month2Amount ;;
  }

  dimension: month2_capex {
    type: number
    sql: ${TABLE}.Month2Capex ;;
  }

  dimension: month2_fte {
    type: number
    sql: ${TABLE}.Month2Fte ;;
  }

  dimension: month3_amount {
    type: number
    sql: ${TABLE}.Month3Amount ;;
  }

  dimension: month3_capex {
    type: number
    sql: ${TABLE}.Month3Capex ;;
  }

  dimension: month3_fte {
    type: number
    sql: ${TABLE}.Month3Fte ;;
  }

  dimension: month4_amount {
    type: number
    sql: ${TABLE}.Month4Amount ;;
  }

  dimension: month4_capex {
    type: number
    sql: ${TABLE}.Month4Capex ;;
  }

  dimension: month4_fte {
    type: number
    sql: ${TABLE}.Month4Fte ;;
  }

  dimension: month5_amount {
    type: number
    sql: ${TABLE}.Month5Amount ;;
  }

  dimension: month5_capex {
    type: number
    sql: ${TABLE}.Month5Capex ;;
  }

  dimension: month5_fte {
    type: number
    sql: ${TABLE}.Month5Fte ;;
  }

  dimension: month6_amount {
    type: number
    sql: ${TABLE}.Month6Amount ;;
  }

  dimension: month6_capex {
    type: number
    sql: ${TABLE}.Month6Capex ;;
  }

  dimension: month6_fte {
    type: number
    sql: ${TABLE}.Month6Fte ;;
  }

  dimension: month7_amount {
    type: number
    sql: ${TABLE}.Month7Amount ;;
  }

  dimension: month7_capex {
    type: number
    sql: ${TABLE}.Month7Capex ;;
  }

  dimension: month7_fte {
    type: number
    sql: ${TABLE}.Month7Fte ;;
  }

  dimension: month8_amount {
    type: number
    sql: ${TABLE}.Month8Amount ;;
  }

  dimension: month8_capex {
    type: number
    sql: ${TABLE}.Month8Capex ;;
  }

  dimension: month8_fte {
    type: number
    sql: ${TABLE}.Month8Fte ;;
  }

  dimension: month9_amount {
    type: number
    sql: ${TABLE}.Month9Amount ;;
  }

  dimension: month9_capex {
    type: number
    sql: ${TABLE}.Month9Capex ;;
  }

  dimension: month9_fte {
    type: number
    sql: ${TABLE}.Month9Fte ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.TotalAmount ;;
  }

  dimension: total_capex {
    type: number
    sql: ${TABLE}.TotalCapex ;;
  }

  dimension: year_num {
    type: number
    sql: ${TABLE}.YearNum ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
