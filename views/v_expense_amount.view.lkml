view: v_expense_amount {
  sql_table_name: dbo.vExpenseAmount ;;

  dimension: bfte_count {
    type: number
    sql: ${TABLE}.BFteCount ;;
  }

  dimension: bmonth10_amount {
    type: number
    sql: ${TABLE}.BMonth10Amount ;;
  }

  dimension: bmonth10_capex {
    type: number
    sql: ${TABLE}.BMonth10Capex ;;
  }

  dimension: bmonth10_fte {
    type: number
    sql: ${TABLE}.BMonth10Fte ;;
  }

  dimension: bmonth11_amount {
    type: number
    sql: ${TABLE}.BMonth11Amount ;;
  }

  dimension: bmonth11_capex {
    type: number
    sql: ${TABLE}.BMonth11Capex ;;
  }

  dimension: bmonth11_fte {
    type: number
    sql: ${TABLE}.BMonth11Fte ;;
  }

  dimension: bmonth12_amount {
    type: number
    sql: ${TABLE}.BMonth12Amount ;;
  }

  dimension: bmonth12_capex {
    type: number
    sql: ${TABLE}.BMonth12Capex ;;
  }

  dimension: bmonth12_fte {
    type: number
    sql: ${TABLE}.BMonth12Fte ;;
  }

  dimension: bmonth1_amount {
    type: number
    sql: ${TABLE}.BMonth1Amount ;;
  }

  dimension: bmonth1_capex {
    type: number
    sql: ${TABLE}.BMonth1Capex ;;
  }

  dimension: bmonth1_fte {
    type: number
    sql: ${TABLE}.BMonth1Fte ;;
  }

  dimension: bmonth2_amount {
    type: number
    sql: ${TABLE}.BMonth2Amount ;;
  }

  dimension: bmonth2_capex {
    type: number
    sql: ${TABLE}.BMonth2Capex ;;
  }

  dimension: bmonth2_fte {
    type: number
    sql: ${TABLE}.BMonth2Fte ;;
  }

  dimension: bmonth3_amount {
    type: number
    sql: ${TABLE}.BMonth3Amount ;;
  }

  dimension: bmonth3_capex {
    type: number
    sql: ${TABLE}.BMonth3Capex ;;
  }

  dimension: bmonth3_fte {
    type: number
    sql: ${TABLE}.BMonth3Fte ;;
  }

  dimension: bmonth4_amount {
    type: number
    sql: ${TABLE}.BMonth4Amount ;;
  }

  dimension: bmonth4_capex {
    type: number
    sql: ${TABLE}.BMonth4Capex ;;
  }

  dimension: bmonth4_fte {
    type: number
    sql: ${TABLE}.BMonth4Fte ;;
  }

  dimension: bmonth5_amount {
    type: number
    sql: ${TABLE}.BMonth5Amount ;;
  }

  dimension: bmonth5_capex {
    type: number
    sql: ${TABLE}.BMonth5Capex ;;
  }

  dimension: bmonth5_fte {
    type: number
    sql: ${TABLE}.BMonth5Fte ;;
  }

  dimension: bmonth6_amount {
    type: number
    sql: ${TABLE}.BMonth6Amount ;;
  }

  dimension: bmonth6_capex {
    type: number
    sql: ${TABLE}.BMonth6Capex ;;
  }

  dimension: bmonth6_fte {
    type: number
    sql: ${TABLE}.BMonth6Fte ;;
  }

  dimension: bmonth7_amount {
    type: number
    sql: ${TABLE}.BMonth7Amount ;;
  }

  dimension: bmonth7_capex {
    type: number
    sql: ${TABLE}.BMonth7Capex ;;
  }

  dimension: bmonth7_fte {
    type: number
    sql: ${TABLE}.BMonth7Fte ;;
  }

  dimension: bmonth8_amount {
    type: number
    sql: ${TABLE}.BMonth8Amount ;;
  }

  dimension: bmonth8_capex {
    type: number
    sql: ${TABLE}.BMonth8Capex ;;
  }

  dimension: bmonth8_fte {
    type: number
    sql: ${TABLE}.BMonth8Fte ;;
  }

  dimension: bmonth9_amount {
    type: number
    sql: ${TABLE}.BMonth9Amount ;;
  }

  dimension: bmonth9_capex {
    type: number
    sql: ${TABLE}.BMonth9Capex ;;
  }

  dimension: bmonth9_fte {
    type: number
    sql: ${TABLE}.BMonth9Fte ;;
  }

  dimension: btotal_amount {
    type: number
    sql: ${TABLE}.BTotalAmount ;;
  }

  dimension: btotal_capex {
    type: number
    sql: ${TABLE}.BTotalCapex ;;
  }

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

  measure: count {
    type: count
    drill_fields: []
  }
}
