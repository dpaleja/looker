view: v_cost_centre_monthly_cost {
  sql_table_name: dbo.vCostCentreMonthlyCost ;;

  dimension: bmonth10_capex {
    type: number
    sql: ${TABLE}.BMonth10Capex ;;
  }

  dimension: bmonth10_cost {
    type: number
    sql: ${TABLE}.BMonth10Cost ;;
  }

  dimension: bmonth11_capex {
    type: number
    sql: ${TABLE}.BMonth11Capex ;;
  }

  dimension: bmonth11_cost {
    type: number
    sql: ${TABLE}.BMonth11Cost ;;
  }

  dimension: bmonth12_capex {
    type: number
    sql: ${TABLE}.BMonth12Capex ;;
  }

  dimension: bmonth12_cost {
    type: number
    sql: ${TABLE}.BMonth12Cost ;;
  }

  dimension: bmonth1_capex {
    type: number
    sql: ${TABLE}.BMonth1Capex ;;
  }

  dimension: bmonth1_cost {
    type: number
    sql: ${TABLE}.BMonth1Cost ;;
  }

  dimension: bmonth2_capex {
    type: number
    sql: ${TABLE}.BMonth2Capex ;;
  }

  dimension: bmonth2_cost {
    type: number
    sql: ${TABLE}.BMonth2Cost ;;
  }

  dimension: bmonth3_capex {
    type: number
    sql: ${TABLE}.BMonth3Capex ;;
  }

  dimension: bmonth3_cost {
    type: number
    sql: ${TABLE}.BMonth3Cost ;;
  }

  dimension: bmonth4_capex {
    type: number
    sql: ${TABLE}.BMonth4Capex ;;
  }

  dimension: bmonth4_cost {
    type: number
    sql: ${TABLE}.BMonth4Cost ;;
  }

  dimension: bmonth5_capex {
    type: number
    sql: ${TABLE}.BMonth5Capex ;;
  }

  dimension: bmonth5_cost {
    type: number
    sql: ${TABLE}.BMonth5Cost ;;
  }

  dimension: bmonth6_capex {
    type: number
    sql: ${TABLE}.BMonth6Capex ;;
  }

  dimension: bmonth6_cost {
    type: number
    sql: ${TABLE}.BMonth6Cost ;;
  }

  dimension: bmonth7_capex {
    type: number
    sql: ${TABLE}.BMonth7Capex ;;
  }

  dimension: bmonth7_cost {
    type: number
    sql: ${TABLE}.BMonth7Cost ;;
  }

  dimension: bmonth8_capex {
    type: number
    sql: ${TABLE}.BMonth8Capex ;;
  }

  dimension: bmonth8_cost {
    type: number
    sql: ${TABLE}.BMonth8Cost ;;
  }

  dimension: bmonth9_capex {
    type: number
    sql: ${TABLE}.BMonth9Capex ;;
  }

  dimension: bmonth9_cost {
    type: number
    sql: ${TABLE}.BMonth9Cost ;;
  }

  dimension: btotal_capex {
    type: number
    sql: ${TABLE}.BTotalCapex ;;
  }

  dimension: btotal_cost {
    type: number
    sql: ${TABLE}.BTotalCost ;;
  }

  dimension: ccid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CCID ;;
  }

  dimension: month10_capex {
    type: number
    sql: ${TABLE}.Month10Capex ;;
  }

  dimension: month10_cost {
    type: number
    sql: ${TABLE}.Month10Cost ;;
  }

  dimension: month11_capex {
    type: number
    sql: ${TABLE}.Month11Capex ;;
  }

  dimension: month11_cost {
    type: number
    sql: ${TABLE}.Month11Cost ;;
  }

  dimension: month12_capex {
    type: number
    sql: ${TABLE}.Month12Capex ;;
  }

  dimension: month12_cost {
    type: number
    sql: ${TABLE}.Month12Cost ;;
  }

  dimension: month1_capex {
    type: number
    sql: ${TABLE}.Month1Capex ;;
  }

  dimension: month1_cost {
    type: number
    sql: ${TABLE}.Month1Cost ;;
  }

  dimension: month2_capex {
    type: number
    sql: ${TABLE}.Month2Capex ;;
  }

  dimension: month2_cost {
    type: number
    sql: ${TABLE}.Month2Cost ;;
  }

  dimension: month3_capex {
    type: number
    sql: ${TABLE}.Month3Capex ;;
  }

  dimension: month3_cost {
    type: number
    sql: ${TABLE}.Month3Cost ;;
  }

  dimension: month4_capex {
    type: number
    sql: ${TABLE}.Month4Capex ;;
  }

  dimension: month4_cost {
    type: number
    sql: ${TABLE}.Month4Cost ;;
  }

  dimension: month5_capex {
    type: number
    sql: ${TABLE}.Month5Capex ;;
  }

  dimension: month5_cost {
    type: number
    sql: ${TABLE}.Month5Cost ;;
  }

  dimension: month6_capex {
    type: number
    sql: ${TABLE}.Month6Capex ;;
  }

  dimension: month6_cost {
    type: number
    sql: ${TABLE}.Month6Cost ;;
  }

  dimension: month7_capex {
    type: number
    sql: ${TABLE}.Month7Capex ;;
  }

  dimension: month7_cost {
    type: number
    sql: ${TABLE}.Month7Cost ;;
  }

  dimension: month8_capex {
    type: number
    sql: ${TABLE}.Month8Capex ;;
  }

  dimension: month8_cost {
    type: number
    sql: ${TABLE}.Month8Cost ;;
  }

  dimension: month9_capex {
    type: number
    sql: ${TABLE}.Month9Capex ;;
  }

  dimension: month9_cost {
    type: number
    sql: ${TABLE}.Month9Cost ;;
  }

  dimension: total_capex {
    type: number
    sql: ${TABLE}.TotalCapex ;;
  }

  dimension: total_cost {
    type: number
    sql: ${TABLE}.TotalCost ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
