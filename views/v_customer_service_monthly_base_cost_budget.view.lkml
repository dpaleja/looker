view: v_customer_service_monthly_base_cost_budget {
  sql_table_name: dbo.vCustomerServiceMonthlyBaseCostBudget ;;

  dimension: bbase_cost {
    type: number
    sql: ${TABLE}.BBaseCost ;;
  }

  dimension: bmonth10_cost {
    type: number
    sql: ${TABLE}.BMonth10Cost ;;
  }

  dimension: bmonth11_cost {
    type: number
    sql: ${TABLE}.BMonth11Cost ;;
  }

  dimension: bmonth12_cost {
    type: number
    sql: ${TABLE}.BMonth12Cost ;;
  }

  dimension: bmonth1_cost {
    type: number
    sql: ${TABLE}.BMonth1Cost ;;
  }

  dimension: bmonth2_cost {
    type: number
    sql: ${TABLE}.BMonth2Cost ;;
  }

  dimension: bmonth3_cost {
    type: number
    sql: ${TABLE}.BMonth3Cost ;;
  }

  dimension: bmonth4_cost {
    type: number
    sql: ${TABLE}.BMonth4Cost ;;
  }

  dimension: bmonth5_cost {
    type: number
    sql: ${TABLE}.BMonth5Cost ;;
  }

  dimension: bmonth6_cost {
    type: number
    sql: ${TABLE}.BMonth6Cost ;;
  }

  dimension: bmonth7_cost {
    type: number
    sql: ${TABLE}.BMonth7Cost ;;
  }

  dimension: bmonth8_cost {
    type: number
    sql: ${TABLE}.BMonth8Cost ;;
  }

  dimension: bmonth9_cost {
    type: number
    sql: ${TABLE}.BMonth9Cost ;;
  }

  dimension: csid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CSID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
